#include <stdio.h> 
#include <winsock2.h> 
#include "Read.h"
#include <iostream>
#include <fstream>
#include <cassert>
#include <string>
#include "initiateRequest.h"

using namespace std;
 
#pragma comment(lib,"ws2_32.lib")  
    string s;
void readTxt(string file)
{
	//string file = "mmsRead.txt";
    ifstream infile; 
    infile.open(file.data());   //将文件流对象与文件连接起来 
    assert(infile.is_open());   //若失败,则输出错误消息,并终止程序运行 

    while(getline(infile,s))
	{
        cout<<s<<endl;
		//const char * sendData = s.data();
		//cout<< sendData<<endl;
    }
    infile.close();             //关闭文件输入流 
}
string stringToascii(string str)
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
int main() 
{ 
	//加载套接字库
   WORD socketVersion = MAKEWORD(2,2); 
   WSADATA wsaData;  
   if(WSAStartup(socketVersion, &wsaData) != 0) 
   { 
       cout << "WSAStartup() execute failed"<<endl;
		return -1; 
   } 
   	if(2 != LOBYTE(wsaData.wVersion) || 2 != HIBYTE(wsaData.wVersion))
	{
		WSACleanup();
		cout<<"WSADATA version is not correct"<<endl;
		return -1;
	}

	//创建套接字
   SOCKET sclient = socket(AF_INET, SOCK_STREAM, 0); 
   if(sclient == INVALID_SOCKET)
	{
		cout<<"sclient = socket() execute failed!"<<endl;
		return -1;
	}
    
   	/************初始化服务器端地址族变量************/
   SOCKADDR_IN sin; 
   sin.sin_family = AF_INET; 
   sin.sin_port = htons(102); //键入cmd:netstat -ano获得TCP 127.0.0.1:1028/1079  192.168.0.123:139
   sin.sin_addr.S_un.S_addr = inet_addr("127.0.0.1"); //键入cmd:ipconfig获得IP Address:192.168.0.123
   //一旦使用回送地址(127.0.0.1)发送数据，协议软件立即返回，不进行任何网络传输。

   int len = sizeof(sin); 
   
   //连接服务器
	int iRet =0;
	iRet = connect(sclient, (SOCKADDR*)&sin, sizeof(SOCKADDR));
	if(0 != iRet)
	{
		cout<<"connect() execute failed!"<<endl;
		int x = WSAGetLastError();
		return -1;
	}
	string initiateR=initiateRequest("WPP.scd");
	initiateR=stringToascii(initiateR);
	const char * sendInitiateR = initiateR.data();
	send(sclient, sendInitiateR, initiateR.length(), 0);
   string domainID="WPP1W1";
   string itemID="LLN0$CF$Mod";
   //cout<<"domainID=";
   //cin >> domainID;
   //cout<<"itemID=";
   //cin >> itemID;
   Read(domainID, itemID);
   readTxt("mmsRead.txt");
  // const char * sendData = "a0 3a 02 01 01 a4 35 a1 33 a0 31 30 2f a0 2d a1 2b 1a 06 57 50 50 31 57 31 1a 1e 57 31 2f 57 52 45 50 31 24 42 52 24 62 72 63 62 54 75 72 52 70 43 68 24 44 61 74 53 65 74\n"; 
  
   //发送消息
   const char * sendData = s.data();
   //sendto(sclient, sendData, strlen(sendData), 0, (sockaddr *)&sin,len); 
   send(sclient, sendData, strlen(sendData)+1, 0);
   while(1)
   {
   		//接收消息
	   char recvData[1000]={0};      
	   //int ret = recvfrom(sclient, recvData, 255, 0, (sockaddr *)&sin,&len); 
	   int ret = recv(sclient, recvData, 1000, 0);
	   if(ret > 0) 
	   { 
		   recvData[ret] = 0x00; 
		   printf("%s\n", recvData); 
		   ret=0;
	   } 
   }

 
 	//清理
   closesocket(sclient); 
   WSACleanup(); 

   
   return 0; 
} 
