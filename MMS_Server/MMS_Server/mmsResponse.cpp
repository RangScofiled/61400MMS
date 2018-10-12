#include <stdio.h>
#include <cassert>
#include<string>
#include<iostream>
#include <fstream>
#include <stdlib.h>
#include"mmsResponse.h"

using namespace std;


string *readTxt(string file)
{
    ifstream infile; 
    infile.open(file.data());   //将文件流对象与文件连接起来 
    assert(infile.is_open());   //若失败,则输出错误消息,并终止程序运行 
	int x = 0;
	string *c = new string [1000]; 
	string *ptr = &c[0];
    while (!infile.eof())
    {
        infile >> *ptr;
		ptr++;
		x++;
    }
	char s[3];
	itoa(x,s,10);
	c[300] = s;
	//for(int i=0;i<x;i++)
	//	cout<<c[i]<<" ";
	return c;
    infile.close();             //关闭文件输入流 
	
}
string dec2hex(int hexLen)
{
	int y=0;
	string dh="";
	if(hexLen ==0)
		dh=char('0')+dh;
	while(hexLen>0)
	{
		y=hexLen%16;  //求余
		if(y<10)   //小于10的余数
			dh=char('0'+y)+dh;  //利用字符的ascll码在字符串前面拼接
		else
			dh=char('a'-10+y)+dh;  //大于9的余数用abcdef表示
		if(hexLen>16&&dh.length()==2)
			dh=" "+dh;
		hexLen=hexLen/16;
	}
	if(dh.length()==1||dh.length()==4)
		dh="0"+dh;//补0
	return dh;
}
string addHead(string str)
{
	string presL=dec2hex((str.length()+1)/3);
	str="02 01 03 a0 "+presL+" "+str;
	string presLe=dec2hex((str.length()+1)/3);
	str="30 "+presLe+" "+str;
	string presLen=dec2hex((str.length()+1)/3);
	str="61 "+presLen+" "+str;//presentation protocol
	str="01 00 01 00 "+str;//sessioon protocol
	str="02 f0 80 "+str;//cotp
	string tpktLen=dec2hex((str.length()+1)/3+4);
	if(tpktLen.length()<6)
		tpktLen="00 "+tpktLen;
	str="03 00 "+tpktLen+" "+str;//tpkt
	return str;
}
string mmsDaType(string daiBtype)
{
	string daType;
	
	if(daiBtype == "BOOLEAN")
		daType = "83";//boolean
	else if (daiBtype == "Quality")
		daType = "84";//bit-string
	else if(daiBtype == "INT8"||daiBtype == "INT16"||daiBtype == "INT24"||daiBtype == "INT32"||daiBtype == "INT64"||daiBtype == "INT128"||daiBtype == "Enum")
		daType = "85";//integer
	else if(daiBtype == "INT8U"|| daiBtype == "INT16U"||daiBtype == "INT24"||daiBtype == "INT32U")
		daType = "86";//unsigned-integer
	else if(daiBtype == "FLOAT32"||daiBtype == "FLOAT64")
		daType = "87";//floating-point
	else if(daiBtype == "Octet64")
		daType = "89";//octet-string
	else if(daiBtype == "VisString255"||daiBtype == "Unicode255")
		daType = "8a";//visible-string
	else if (daiBtype == "Timestamp")
		daType = "91";//utc-time
	return daType;
}
void mmsResponse(string file, string file1)
{
	unsigned int num = 0;
	//string file="mms_client.txt";
	//string file1 ="mms_response.txt";
	string *message = readTxt(file);
	string *dai = readTxt(file1);
	//cout<<*(dai+300)<<endl;
	//cout<<*message<<endl;
	//cout<<*dai<<endl;
	string daiBtype[20];
	string daiVal[20];
	int x = stoi(*(dai+300), nullptr,10);//mms_response length
	cout<<x<<endl;
	int n=0;
	int Length = 0;
	for(int i=0;i<x-1;i=i+3){
		daiBtype[n]= dai[i+1];
		cout<<daiBtype[n]<<endl;
		daiVal[n] = dai[i+2];
		
		char daivalue[30];
		strcpy(daivalue,daiVal[n].c_str());
		Length = Length + strlen(daivalue) + 2;//total data length
		//cout<<Length<<endl;
		n++;
	}
	string mmsType[20];
	for(int i=0;i<n;i++){
		mmsType[i] = mmsDaType(daiBtype[i]);
		cout<<mmsType[i]<<" ";
	}
	string response[255];
	char s[3];

//confirmed-ResponsePDU
	if(message[0] == "a0")
		response[num]="a1";
	num++;
	if(message[3] == "01"){
		itoa(Length + 9, s, 16);
		response[num] = s;
	}
	else if(message[3] == "02"){
		itoa(Length + 10, s, 16);
		response[num] = s;
	}
	num++;
//InvokeID
	if(message[2] == "02"){
		response[num]="02"; 
		num++;
	}
	if(message[3] == "01"){
		response[num] = "01";
		num++;
		response[num] = message[4];
	}
	else if(message[3] == "02"){
		response[num] = "02";
		num++;
		response[num] = message[4];
		num++;
		response[num] = message[5];
	}
	num++;
//getNameList服务
		if(message[num] == "a1")
			response[num] = "a1";
//Read服务
		else if(message[num] == "a4"){
			response[num] = "a4";
			num++;
			itoa(Length + 4, s, 16);
			response[num] = s;	
			num++;
		//listOfAccessResult:	
			response[num] = "a1";
			num++;
			itoa(Length + 2, s, 16);
			response[num] = s;	
			num++;
		//structure
			response[num] = "a2";
			num++;
			itoa(Length, s, 16);
			response[num] = s;
			num++;
		//Data:
			//cout<<n<<endl;
			for(int i=0;i<n;i++){
				char daivalue[30];
				strcpy(daivalue,daiVal[i].c_str());
				//cout<<daiVal[i]<<endl;
				int Len = strlen(daivalue);
				response[num] = mmsType[i];
				//cout<<response[num]<<endl;
				num++;
				itoa(Len, s, 16);
				response[num] = s;
				num++;
				for(int x=0;x<Len;x++){
					if(daiBtype[i] == "Enum")
						response[num] = daivalue[x];
					else 
					{
						int daidata = (int)daivalue[x];//ascii
						itoa(daidata, s, 16);
						response[num] = s;
					}
					num++;
				}
			}

		}
//Write服务
//		else if(message[num] == "a5")
//			response[num] = "a5";
//getVariableAccessAttributes
		else if(message[num] == "a6")
			response[num] = "a6";
//defineNamedVariableList
		else if(message[num] == "ab")
			response[num] = "8b";
//getNamedVariableListAttributes
		else if(message[num] == "ac")
			response[num] = "ac";
//deleteNamedVariableList
		else if(message[num] == "ac")
			response[num] = "ac";
/*
//obtainFile
	else if(message[num] == "bf" && message[num+1] == "2e"){
			response[num] = "9f";
			num++;
			response[num] = "2e";
	}
//readJournal
	else if(message[num] == "bf" && message[num+1] == "41"){
			response[num] = "bf";
			num++;
			response[num] = "41";
	}
//fileOpen
	else if(message[num] == "bf" && message[num+1] == "48"){
			response[num] = "bf";
			num++;
			response[num] = "48";
	}
//fileRead
	else if(message[num] == "9f" && message[num+1] == "49"){
			response[num] = "bf";
			num++;
			response[num] = "49";
	}
//fileClose
	else if(message[num] == "9f" && message[num+1] == "4a"){
			response[num] = "9f";
			num++;
			response[num] = "4a";
	}
//fileDelete
	else if(message[num] == "bf" && message[num+1] == "4c"){
			response[num] = "9f";
			num++;
			response[num] = "4c";
	}
//filedirectory
	else if(message[num] == "bf" && message[num+1] == "4d"){
			response[num] = "bf";
			num++;
			response[num] = "4d";
	}
	*/
	
	ofstream write;
	write.open("mmsResponse.txt", ios::out|ios::trunc);
	
	//int LValue = Length + 21+ Long;
	string sResponse="";
	for(int i = 0; i<num;i++)
	{
		if(i<(num-1))
			sResponse=sResponse+response[i]+" ";
		else sResponse=sResponse+response[i];
	}

	sResponse=addHead(sResponse);
	write << sResponse;

}
