#include <stdio.h>
#include<string>
#include<iostream>
#include <fstream>
#include <stdlib.h>
#include <cassert>
#include "mmsReport.h"
using namespace std;
 
/*string stringToascii(string str)
{
	//report = "a3 a4 a5";
	string ascii="";
	int len = str.length();
	for(int i=0;i<len;i=i+3)
	{
		int value=0;
		sscanf(&str[i],"%x",&value);
		ascii = ascii+(char)value;
	}
	return ascii;
}
*/
int readNumber(string x)//h2d
{
	int num=0;
	int i=0;
	while(i<2)
	{
		if(x[i]-'a'>=0)
			num=((x[i]-'a')+10) + num*16;
		else num = (x[i]-'0') + num*16;
		i++;
	}
	return num;
}
string b2h(string x)
{
	int y=x.length();
	int b[16]={0};//二进制
	string bh="";
	for(int i=0;i<y;i++)
	{
		if(x[i]=='1')
			b[i]=1;
	}
	int d[4]={0};//十进制
	int j=0;
	for(int i=0;i<4;i++)
	{
		d[i]=b[j]*8+b[j+1]*4+b[j+2]*2+b[j+3];
		if(d[i]<10)
			bh=bh+char('0'+d[i]);
		else bh=bh+char('a'-10+d[i]);
		if(bh.length()==2)
			bh=bh+" ";
		j=j+4;
	}
	
	return bh;
}
string d2hex(int hexLen)
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
string addHeader(string str)
{
	string presL=d2hex((str.length()+1)/3);
	str="02 01 03 a0 "+presL+" "+str;
	string presLe=d2hex((str.length()+1)/3);
	str="30 "+presLe+" "+str;
	string presLen=d2hex((str.length()+1)/3);
	str="61 "+presLen+" "+str;//presentation protocol
	str="01 00 01 00 "+str;//sessioon protocol
	str="02 f0 80 "+str;//cotp
	string tpktLen=d2hex((str.length()+1)/3+4);
	if(tpktLen.length()<6)
		tpktLen="00 "+tpktLen;
	str="03 00 "+tpktLen+" "+str;//tpkt
	return str;
}
string mmsReport(string *parseReport,string reportV,int seqNum)
{
	/**********************************************************************输入************************************************************************/
	//string reportV= "01 00 00 00 00 19 00 00 00 00";//01为数据编号（从00开始），00 00 00 00 为数据值
	//string RptID = "W1/WREP1$RP$brcbTurRpCh";
	//string dataSet = "WPP1W1/WREP1$brcbTurRpCh";
	//string optflds="0101100000";
	//int seqNum=0;//序列号
	//string dataNum="4f";//十六进制
	string RptID = parseReport[0];
	string dataSet =parseReport[1];
	string dataNum =parseReport[2];
	string optflds =parseReport[3];
	
	int datasetLen=0;
	datasetLen=readNumber(dataNum);//该数据集有79个数据，通过读取scd文件获得
	/*********************************************************************组帧**************************************************************************/
	char rptid[50];
	strcpy(rptid,RptID.c_str());
	int Length = strlen(rptid);
	char dataset[50];
	strcpy(dataset,dataSet.c_str());
	int Long=strlen(dataset);
	int len = reportV.length();

	string message[20];
	int messageN=0;
//unconfirmed_PDU
	message[0] = "a3";
	messageN++;

//informationReport
	message[1] = "a0";
	messageN++;

	//variablAccessSpecification:variableListName//:vmd-specific//RPT
	message[2] = "a1 05 80 03 52 50 54";
	messageN++;

	//listofAccessResult //message[3]
	message[3] = "a0";
	messageN++;

		//RptID  visiable-string //message[4]
	message[4]= "8a";
	messageN++;
	string rpL=d2hex(Length);
	message[4]=message[4]+" "+rpL;
	for(int i=0;i<Length;i++)
	{
		char rp[3]={0};
		int x=(int)RptID[i];
		itoa(x,rp,16);
		message[4]=message[4]+" "+rp[0]+rp[1];
	}

		//OptFlds bit-string //message[5]
	message[5] = "84 03 06";//长度=3 padding=6
	messageN++;
	string opt = b2h(optflds);
	message[5] = message[5]+" "+opt;

		//序列号 unsigned //message[6]
	message[6] = "86";
	messageN++;
	string seqV=d2hex(seqNum);//值
	string seqL=d2hex(seqV.length()/2);//长度
	message[6]=message[6]+" "+seqL+" "+seqV;

		//数据集名称 visiable-string //message[7]
	message[7] = "8a";
	messageN++;
	char ch[3]={0};
	itoa(Long,ch,16);
	message[7]=message[7]+" "+ch[0]+ch[1];
	for(int i=0;i<Long;i++)
	{
		char da[3]={0};
		int x=(int)dataset[i];
		itoa(x,da,16);
		message[7]=message[7]+" "+da[0]+da[1];
	}

		//包含位串 bit-string 需要补位padding //message[8]
	message[8] = "84";
	messageN++;

	int hexLen=0;
	int padding = 0;
	if(datasetLen%8!=0)
	{
		hexLen = datasetLen/8+1;
		padding = 8-(datasetLen%8);
	}
	else hexLen = datasetLen/8;
	string inclusionLen[2];
	inclusionLen[0]=d2hex(hexLen+1);
	inclusionLen[1]=d2hex(padding);
	message[8]=message[8]+" "+inclusionLen[0]+" "+inclusionLen[1];//字符串相加

	int inclusionBitstring[200]={0};
	for(int t=0;t<len;t=t+15)
	{
		int u=0;
		string dataNum ="";
		dataNum=dataNum+reportV[t]+reportV[t+1];//数据编号，十六进制01, 19 
		u = readNumber(dataNum);
		inclusionBitstring[u]=1;
	}
	char value[40] = {0};
	int m=0;
	int bitL=datasetLen+padding;//80
	for(int n=0;n<bitL;n=n+4)
	{
		int h=0;char he[2]={0};
		h=inclusionBitstring[n]*8+inclusionBitstring[n+1]*4+inclusionBitstring[n+2]*2+inclusionBitstring[n+3];
		itoa(h,he,16);//将整数h转换成字符并存储在字符数组he中
		value[m] = he[0];
		m++;
		if(m==2||m==5||m==8||m==11||m==14||m==17||m==20||m==23||m==26)
		{	
			value[m]= ' ';
			m++;
		}
	}
	message[8] = message[8] + " " + value;

		//数据引用 visiable-string
	//message[15]="8a";

		//数据值 float //message[9]
	messageN++;
	reportV = reportV+" ";
	for(int t=0;t<len;t=t+15)//01 00 00 00 00 19 00 00 00 00
	{
		message[9]= message[9]+"87 04";
		message[9]= message[9]+reportV[t+2]+reportV[t+3]+reportV[t+4];
		message[9]= message[9]+reportV[t+5]+reportV[t+6]+reportV[t+7];
		message[9]= message[9]+reportV[t+8]+reportV[t+9]+reportV[t+10];
		message[9]= message[9]+reportV[t+11]+reportV[t+12]+reportV[t+13]+" ";
	}
		//包含原因 bit-string 
	//message[16]="84";

	//listofAccessResult //message[3]
	string list="";
	for(int i=4;i<messageN;i++)
		list=list+message[i]+" ";
	int listN= (list.length())/3;
	string listL=d2hex(listN);
	if(listL.length()==5)
		message[3]=message[3]+" "+"82";
	message[3]=message[3]+" "+listL;

	//informationReport //message[1]
	message[1] = "a0";
	string inf=message[2]+" "+message[3]+" "+list;
	int infN=inf.length()/3;
	string infL=d2hex(infN);
	if(infL.length()==5)
		message[1]=message[1]+" "+"82";
	message[1]=message[1]+" "+infL;

	//unconfirmed_PDU
	message[0] = "a3";
	string uncon=message[1]+" "+inf;
	int unconN=uncon.length()/3;
	string unconL=d2hex(unconN);
	if(unconL.length()==5)
		message[0]=message[0]+" "+"82";
	message[0]=message[0]+" "+unconL;
/**************************************************输出report*************************************************/
	string report="";
	for(int i=0;i<messageN;i++)
		report=report+message[i]+" ";
	int reportLen=report.length()-2;
	string reportTrue="";
	for(int i=0;i<reportLen;i++)
	{
		reportTrue=reportTrue+report[i];
	}
	report=addHeader(reportTrue);
	//report=stringToascii(report);
	return report;
}