#include <stdio.h>
#include <stdlib.h>
#include <string>
#include <iostream>
#include <fstream>
#include "hexToAscii.h"
using namespace std;

void decToAscii(char ch,char ascii)
{	
	ofstream write;
	write.open("mmsRead.txt", ios::out|ios::app);

	char asciiA[26]={'A','B','C','D','E','F','G','H','I','J','K','L','M','N',
	'O','P','Q','R','S','T','U','V','W','X','Y','Z'};
	char asciia[26]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n',
	'o','p','q','r','s','t','u','v','w','x','y','z'};
		
		if(ch>=48&&ch<=57){
			int value = ch - 48;
			cout<<value;
			write << value;
			ascii ='0' + value; 
		}
		if(ch>=65&&ch<=90){
			int num = ch - 65;
			char value = asciiA[num];
			cout<<value;
			write << value;
			ascii = value;
		}
		if(ch>=97&&ch<=122){
			int num = ch - 97;
			char value = asciia[num];
			cout<<value;
			write << value;
			ascii = value;
		}
		switch(ch){
		case 32:
			cout<<" ";write<<" ";ascii = (char)" ";break;
		case 33:
			cout<<"!";write<<"!";ascii = (char)"!";break;
		case 34:
			cout<<"\"";write<<"\"";ascii = (char)"\"";break;
		case 35:
			cout<<"#";write<<"#";ascii = (char)"#";break;
		case 36:
			cout<<"$";write<<"$";ascii = (char)"$";break;
		case 37:
			cout<<"%";write<<"%";ascii = (char)"%";break;
		case 38:
			cout<<"&";write<<"&";ascii = (char)"&";break;
		case 39:
			cout<<"'";write<<"'";ascii = (char)"'";break;
		case 40:
			cout<<"(";write<<"(";ascii = (char)"(";break;
		case 41:
			cout<<")";write<<")";ascii = (char)")";break;
		case 42:
			cout<<"*";write<<"*";ascii = (char)"*";break;
		case 43:
			cout<<"+";write<<"+";ascii = (char)"+";break;
		case 44:
			cout<<",";write<<",";ascii = (char)",";break;
		case 45:
			cout<<"-";write<<"-";ascii = (char)"-";break;
		case 46:
			cout<<".";write<<".";ascii = (char)".";break;
		case 47:
			cout<<"/";write<<"/";ascii = (char)"/";break;
		case 58:
			cout<<":";write<<":";ascii = (char)":";break;
		case 59:
			cout<<";";write<<";";ascii = (char)";";break;
		case 60:
			cout<<"<";write<<"<";ascii = (char)"<";break;
		case 61:
			cout<<"=";write<<"=";ascii = (char)"=";break;
		case 62:
			cout<<">";write<<">";ascii = (char)">";break;
		case 63:
			cout<<"?";write<<"?";ascii = (char)"?";break;
		case 64:
			cout<<"@";write<<"@";ascii = (char)"@";break;
		case 91:
			cout<<"[";write<<"[";ascii = (char)"[";break;
		case 92:
			cout<<"\\";write<<"\\";ascii = (char)"\\";break;
		case 93:
			cout<<"]";write<<"]";ascii = (char)"]";break;
		case 94:
			cout<<"^";write<<"^";ascii = (char)"^";break;
		case 95:
			cout<<"_";write<<"_";ascii = (char)"_";break;
		case 96:
			cout<<"`";write<<"`";ascii = (char)"`";break;
		case 123:
			cout<<"{";write<<"{";ascii = (char)"{";break;
		case 124:
			cout<<"|";write<<"|";ascii = (char)"|";break;
		case 125:
			cout<<"}";write<<"}";ascii = (char)"}";break;
		case 126:
			cout<<"~";write<<"~";ascii = (char)"~";break;
		}
}
void hexToAscii(string hex, char ascii)
{
	char dec[2] = {0};
	int nValude = 0;
	sscanf(hex.c_str(),"%x",&nValude); //十六进制转数字
	sprintf(&dec[0],"%c",nValude); //数字转字符
	decToAscii(dec[0],ascii);
}
