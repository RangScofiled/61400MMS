#include <stdio.h> 
#include <winsock2.h> 
#include <assert.h>
#include <fstream>
#include <iostream>
#include <iosfwd>
#include "mmsRead.h"
#include "mmsResponse.h"
#include "parseSclForReport.h"
#include "mmsReport.h"
#define CONNECT_NUM_MAX 10

#pragma comment(lib,"ws2_32.lib")  
using namespace std;

    string s;
void readFile(string file)
{
	//string file = "mmsRead.txt";
    ifstream infile; 
    infile.open(file.data());   //���ļ����������ļ��������� 
    assert(infile.is_open());   //��ʧ��,�����������Ϣ,����ֹ�������� 
    while(getline(infile,s))
	{
        cout<<s<<endl;
		//const char * sendData = s.data();
		//cout<< sendData<<endl;
    }
    infile.close();             //�ر��ļ������� 
	//system("pause");
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
	
   WSADATA wsaData; 
   WORD sockVersion = MAKEWORD(2,2); 
   if(WSAStartup(sockVersion, &wsaData) != 0) 
   { 
        cout << "WSAStartup(MAKEWORD(2,2),&wsaData) execute failed"<<endl;
		return -1;
   } 
   if(2 != LOBYTE(wsaData.wVersion) || 2 != HIBYTE(wsaData.wVersion))
	{
		WSACleanup();
		cout << "WSADATA version is not correct!"<<endl;
		return -1;
	}
   SOCKET serSocket = socket(AF_INET, SOCK_STREAM, 0);  
   if(serSocket == INVALID_SOCKET) 
   { 
       cout << "serverSocket = socket() execute failed!"<<endl;
		return -1;
   } 
	//��ʼ����������ַ�����
   sockaddr_in serAddr; 
   serAddr.sin_family = AF_INET; 
   serAddr.sin_port = htons(102); 
   serAddr.sin_addr.S_un.S_addr = htonl(INADDR_ANY); 

   
   //��
   if(bind(serSocket, (sockaddr *)&serAddr, sizeof(serAddr)) ==SOCKET_ERROR) 
   { 
       printf("bind error !"); 
       closesocket(serSocket); 
       return -1; 
   } 
    
   	//����
	//listen()�������óɹ�ʱ����0ֵ�����ɹ�ʱ����SOCKET_ERROR��
	if(listen(serSocket, CONNECT_NUM_MAX) == SOCKET_ERROR)
	{
		cout << "listen() execute failed!";
		return -1;
	}

	//�ȴ�����_����_����
   SOCKADDR_IN remoteAddr; 
   int nAddrLen = sizeof(SOCKADDR); 
 

   SOCKET connSocket = accept(serSocket,(SOCKADDR*)&remoteAddr,&nAddrLen);
   if(connSocket == INVALID_SOCKET)
   {
       cout << "accept() execute failed!"<<endl;
	   return -1;
   } 
   int seqNum=0;
   while (true) 
   { 
		char recvData[255]={0};   
      // int ret = recvfrom(serSocket, recvData, 255, 0, (sockaddr*)&remoteAddr, &nAddrLen); 
        int ret = recv(connSocket, recvData, 255, 0);
	    if (ret > 0) 
        { 
            recvData[ret] = 0x00; 
            printf("���ܵ�һ�����ӣ�%s \r\n",inet_ntoa(remoteAddr.sin_addr)); 
            printf("%s\n", recvData);  
		   
		    fstream write;
		    write.open("mms_client.txt", ios::out|ios::trunc);
		    write << recvData<<endl;
		    mmsRead("mms_client.txt");
		    fstream write1;
	        write1.open("mmsLog.txt", ios::out|ios::app);
	        write1 << recvData<<endl;

	        mmsResponse("mms_client.txt", "mms_response.txt");
	        readFile("mmsResponse.txt");
			s=stringToascii(s);
            const char *sendResponse = s.data(); 
            send(connSocket, sendResponse, strlen(sendResponse)+1,0);          
        } 
		string *parseReport=parseSclForReport("WPP.scd","TurRpCh");
	   while(1)
	   {
			
			string dataMX="";
			cout<<"dataMX(���ݱ��+����float��)=";
			getline(cin,dataMX);
			if(dataMX!="")
			{
				string reportC="";
				reportC = mmsReport(parseReport,dataMX,seqNum);
				reportC = stringToascii(reportC);
				const char *sendReport = reportC.data();
				send(connSocket, sendReport, reportC.length(),0);
				dataMX="";
				seqNum++;
			}
	   }
   } 

   closesocket(serSocket);  
   WSACleanup(); 
   return 0; 
} 
