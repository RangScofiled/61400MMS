#include <iostream>
#include <iomanip>
#include <fstream>
#include <cassert>
#include <string>
#include <stdio.h>
#include "parse_SCL.h"
#include "mmsRead.h"

using namespace std;
//#define DEFAULT_mms_FILE "mms_client.txt"

unsigned int Num = 0;
string mms[1000]={"0"};


void readTxt(string file)
{
    ifstream infile; 
    infile.open(file.data());   //将文件流对象与文件连接起来 
    assert(infile.is_open());   //若失败,则输出错误消息,并终止程序运行 

	string c[1000]={"0"};
	string *ptr = &c[0];

    while (!infile.eof())
    {
        infile >> *ptr;
		ptr++;
    }
	for(int i = 0; i<=1000;i++){
		mms[i] = c[i];
		//cout<<hex<<mms[i];
	}
    infile.close();             //关闭文件输入流 
}
void domain_specific(int Num)
{
	ofstream write;
	write.open("mmsRead.txt", ios::out|ios::app);
	Num++;
	if(mms[Num] == "1a"){
		cout<<"domainID:"<<" ";
		write<<"domainID:"<<" ";
		Num++;
		int Length;
		string x = mms[Num].data();
		sscanf(x.c_str(),"%x",&Length);
		cout<<"Length="<<dec<<Length<<endl;
		write<<"Length="<<dec<<Length<<endl;
		Num++;
		int i = 0;
		char domainAscii[50] = {0};
		while(i<=Length-1){
			//cout<< *(domainID+i)<<" ";
			string domainID = mms[Num+i];
			int nValude = 0;
			
			sscanf(domainID.c_str(),"%x",&nValude); //十六进制转数字
			sprintf(&domainAscii[i],"%c",nValude); //数字转字符
			cout<<domainAscii[i];
			write << domainAscii[i];
			i++;
		}
		Num+=Length;
		cout<<endl;
		write<<endl;

		if(mms[Num] == "1a"){
		cout<<"itemID:"<<" ";
		write<<"itemID:"<<" ";
		Num++;
		int Len;
		string x = mms[Num].data();
		sscanf(x.c_str(),"%x",&Len);
		cout<<"Length="<<dec<<Len<<endl;
		write<<"Length="<<dec<<Len<<endl;
		Num++;
		int t = 0;
		char itemAscii[50] = {0};
		//string *itemID = &mms[Num];
		while(t<=Len-1){
			//cout<< *(itemID+t)<<" ";
			string itemID = mms[Num+t];
			int nValude = 0;
			sscanf(itemID.c_str(),"%x",&nValude); //十六进制转数字
			sprintf(&itemAscii[t],"%c",nValude); //数字转字符
			cout<< itemAscii[t];
			write << itemAscii[t];
			t++;
		}
		Num+=Len;
		cout<<endl;
		write<<endl;

		parse_SCL("WPP.scd",domainAscii,itemAscii);//识别domainID

		/*
		char LN[10] = {0};
		char fc[10] = {0};
		char Doname[15] = {0};
		int a = 0;
	//	cout<<"LN=";
		while(itemAscii[a] != '$'){
			LN[a] = itemAscii[a];
	//		cout<<LN[a];
			a++;
		}
	//	cout<<endl;
		a++;
	//	cout<<"fc=";
		while(itemAscii[a] != '$'){
			fc[a] = itemAscii[a];
	//		cout<<fc[a];
			a++;
		}
	//	cout<<endl;
		a++;
	//	cout<<"Doname=";
		for(;a<12;a++){
			Doname[a] = itemAscii[a];
		//	cout<<Doname[a];
		}
		//cout<<endl;
	*/	
	//	parse_SCL("WPP.scd",itemAscii);//识别itemID

		}
		//while(i<=Length-1){
		//}
	}
}
void variableAccessSpecification(int Num)
{
	ofstream write;write.open("mmsRead.txt", ios::out|ios::app);
	Num++;
	if(mms[Num] == "a0"){
		cout<<"listofVariable:"<<" ";
		write<<"listofVariable:"<<" ";
		Num++;
		string x = mms[Num].data();
		int p = 0;
		sscanf(x.c_str(),"%x",&p);
		cout<<"LengthValue="<<dec<<p<<endl;
		write<<"LengthValue="<<dec<<p<<endl;
		Num++;
		if(mms[Num] == "30"){
			cout<<"variableSpecification:"<<" ";
			write<<"variableSpecification:"<<" ";
			Num++;
			string x = mms[Num].data();
			int p = 0;
			sscanf(x.c_str(),"%x",&p);
			cout<<"LengthValue="<<dec<<p<<endl;
			write<<"LengthValue="<<dec<<p<<endl;
			Num++;
			if(mms[Num] == "a0"){
				cout<<"ObjectName:"<<" ";
				write<<"ObjectName:"<<" ";
				Num++;
				string x = mms[Num].data();
				int p = 0;
				sscanf(x.c_str(),"%x",&p);
				cout<<"LengthValue="<<dec<<p<<endl;
				write<<"LengthValue="<<dec<<p<<endl;
				Num++;
				if(mms[Num] == "a1"){
					cout<<"domain_specific:"<<" ";
					write<<"domain_specific:"<<" ";
					Num++;
					string x = mms[Num].data();
					int p = 0;
					sscanf(x.c_str(),"%x",&p);
					cout<<"LengthValue="<<dec<<p<<endl;
					write<<"LengthValue="<<dec<<p<<endl;
					domain_specific(Num);
				}
			}
		}
	}
}
void Read_Request(int Num)
{
	ofstream write;write.open("mmsAnalysis.txt", ios::out|ios::app);
	Num++;
	if(mms[Num] == "a1"){
		cout<<"variableAccessSpecification:"<<" ";
		write<<"variableAccessSpecification:"<<" ";
		Num++;
		string x = mms[Num].data();
		int p = 0;
		sscanf(x.c_str(),"%x",&p);
		cout<<"LengthValue="<<dec<<p<<endl;
		write<<"LengthValue="<<dec<<p<<endl;
		variableAccessSpecification(Num);
	}
}
void confirmed_RequestPDU(int Num)
{
	ofstream write;
	write.open("mmsRead.txt", ios::out|ios::app);
	cout<<"confirmed-RequestPDU:"<<" ";
	write<<"confirmed-RequestPDU:"<<" ";
	Num++;
	string x;
	int p = 0;
	int p1 = 0;
	x = mms[Num].data();
	sscanf(x.c_str(),"%x",&p);
	cout<<"LengthValue="<<dec<<p;
	write<<"LengthValue="<<dec<<p;
	Num++;
	cout<<endl;
	write<<endl;
//InvokeID
	if(mms[Num] == "02"){
		cout<<"InvokeID:"<<" ";
		write<<"InvokeID:"<<" ";
		Num++;
		if(mms[Num] == "01"){
			Num++;
			x = mms[Num].data();
			sscanf(x.c_str(),"%x",&p);
			cout<<dec<<p;
			write<<dec<<p;
		}
		else if(mms[Num] == "02"){
			Num++;
			x = mms[Num].data();
			sscanf(x.c_str(),"%x",&p);
			Num++;
			x = mms[Num].data();
			sscanf(x.c_str(),"%x",&p1);
			int LengthValue = p*256 + p1;
			cout<<dec<<LengthValue;
			write<<dec<<LengthValue;
		}
		else {
			cout<<"Failed";
			write<<"Failed";
		}
		cout<<endl;
		write<<endl;
		Num++;
	}
//ConfirmedServiceRequest
	if(mms[Num] == "a1"){
		cout<<"getNameList:"<<" ";
		write<<"getNameList:"<<" ";
		Num++;
	}
	else if(mms[Num] == "a4"){
		cout<<"Read:"<<" ";
		write<<"Read:"<<" ";
		Num++;
		x = mms[Num].data();
		sscanf(x.c_str(),"%x",&p);
		cout<<"LengthValue="<<dec<<p<<endl;
		write<<"LengthValue="<<dec<<p<<endl;
		Read_Request(Num);
	}
	else if(mms[Num] == "a5"){
		cout<<"Write:"<<" ";
		write<<"Write:"<<" ";
		Num++;
	}
	else if(mms[Num] == "a6"){
		cout<<"getVariableAccessAttributes:"<<" ";
		write<<"getVariableAccessAttributes:"<<" ";
		Num++;
	}
	else if(mms[Num] == "ab"){
		cout<<"defineNamedVariableList:"<<" ";
		write<<"defineNamedVariableList:"<<" ";
		Num++;
	}
	else if(mms[Num] == "ac"){
		cout<<"getNamedVariableListAttributes:"<<" ";
		write<<"getNamedVariableListAttributes:"<<" ";
		Num++;
	}
	else if(mms[Num] == "ad"){
		cout<<"deleteNamedVariableList:"<<" ";
		write<<"deleteNamedVariableList:"<<" ";
		Num++;
	}
	else if(mms[Num] == "bf"){
		Num++;
		if(mms[Num] == "2e"){
			cout<<"obtainFile:"<<" ";
			write<<"obtainFile:"<<" ";
		}
		else if(mms[Num] == "41"){
			cout<<"readJournal:"<<" ";
			write<<"readJournal:"<<" ";
		}
		else if(mms[Num] == "48"){
			cout<<"fileOpen:"<<" ";
			write<<"fileOpen:"<<" ";
		}
		else if(mms[Num] == "4c"){
			cout<<"fileDelete:"<<" ";
			write<<"fileDelete:"<<" ";
		}
		else if(mms[Num] == "4d"){
			cout<<"filedirectory:"<<" ";
			write<<"filedirectory:"<<" ";
		}
		Num++;
	}
	else if(mms[Num] == "9f"){
		Num++;
		if(mms[Num] == "49"){
			cout<<"fileRead:"<<" ";
			write<<"fileRead:"<<" ";
		}
		else if(mms[Num] == "4a"){
			cout<<"fileClose:"<<" ";
			write<<"fileClose:"<<" ";
		}
		Num++;
	}
}
void clear_file(string file)
{
	ofstream clear(file, ios::trunc);
	clear.close();
}
void mmsRead(string file)
{
	//string file = DEFAULT_mms_FILE; 
	readTxt(file);
	clear_file("mmsRead.txt");

	if(mms[Num] == "a0"){
		confirmed_RequestPDU(Num);
	}
		else if(mms[Num] == "a1")
			cout<<"confirmed-ResponsePDU:"<<" ";
		else if(mms[Num] == "a2")
			cout<<"confirmed-ErrorPDU:"<<" ";
		else if(mms[Num] == "a3")
			cout<<"unconfirmed-PDU:"<<" ";
		else if(mms[Num] == "a4")
			cout<<"rejectPDU:"<<" ";
		else if(mms[Num] == "a5")
			cout<<"cancel-RequestPDU:"<<" ";
		else if(mms[Num] == "a6")
			cout<<"cancel-ResponsePDU:"<<" ";
		else if(mms[Num] == "a7")
			cout<<"cancel-ErrorPDU:"<<" ";
		else if(mms[Num] == "a8")
			cout<<"initiate-RequestPDU:"<<" ";
		else if(mms[Num] == "a9")
			cout<<"initiate-ResponsePDU:"<<" ";
		else if(mms[Num] == "aa")
			cout<<"initiate-ErrorPDU:"<<" ";
		else if(mms[Num] == "ab")
			cout<<"conclude-RequestPDU:"<<" ";
		else if(mms[Num] == "ac")
			cout<<"conclude-ResponsePDU:"<<" ";
		else if(mms[Num] == "ad")
			cout<<"conclude-ErrorPDU:"<<" ";
		else cout<<"failed";

		//system("pause");
}