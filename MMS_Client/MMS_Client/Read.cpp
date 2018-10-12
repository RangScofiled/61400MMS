#include <stdio.h>
#include<string>
#include<iostream>
#include <fstream>
#include <stdlib.h>
using namespace std;

void Read(string domain, string item)
{
	string message[100]={"a0"};
	char domainID[25];
	//cout << "domainID=";
	//string domain;
	//cin >> domain;
	strcpy(domainID,domain.c_str());
	int Length = strlen(domainID);
	//cout<<Length<<endl;
	char itemID[25];
	//cout << "itemID=";
	//string item;
	//cin >> item;
	strcpy(itemID,item.c_str());
	int Long = strlen(itemID);
	
//confirmed-RequestPDU
	message[0] = "a0";
	char s[3];
	itoa(Length +18+Long, s, 16);
//InvokeID
	message[2] = "02";
	message[3] = "01";
	if(message[3] == "01")
		message[1] = s;
	else if(message[3] == "02")
		message[1] = s;
	message[4] = "01";
//Read·þÎñ
	message[5] = "a4";
	itoa(Length +14+Long, s, 16);
	message[6] = s;	
//variableAccessSpecification	
	message[7] = "a1";
	itoa(Length +12+Long, s, 16);
	message[8] = s;	
//listofVariable
	message[9] = "a0";
	itoa(Length +10+Long, s, 16);
	message[10] = s;	
//variableSpecification
	message[11] = "30";
	itoa(Length +8+Long, s, 16);
	message[12] = s;	
//ObjectName
	message[13] = "a0";
	itoa(Length +6+Long, s, 16);
	message[14] = s;
//domain-specific
	message[15] = "a1";
	itoa(Length +4+Long, s, 16);
	message[16] = s;
//domainID   visiblestring
	message[17] = "1a";
	itoa(Length, s, 16);
	message[18] = s;
	for (int i = 0; i< Length; i++){
		int domainid = (int)domainID[i];
		itoa(domainid, s, 16);
		message[i+19] = s;
	}
//itemID
	message[19+Length] = "1a";
	itoa(Long, s, 16);
	message[20+Length] = s;
	for (int i = 0; i< Long; i++){
		int itemid = (int)itemID[i];
		itoa(itemid, s, 16);
		message[i+21+Length] = s;
	}	
	ofstream write;
	write.open("mmsRead.txt", ios::out|ios::trunc);
	int LValue = Length + 21+ Long;
	for(int i = 0; i<LValue;i++)
		write << message[i]<<" ";
	//system("pause");
}
