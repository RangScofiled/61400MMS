#include <stdio.h>
#include <assert.h>
# include<stdlib.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <iostream>
#include <fstream>
#include <string>
#include "parseSclForReport.h"

using namespace std;


//���
string report[5]={""};
string rptID="";//������ƿ�rptID-----report[0]
string datasetPath="";//�������������ݼ���·��-----report[1]
string fcdaNum="";//���ݼ������ݸ���-----report[2]
string Optfields="";//����ѡ����-----report[3]

string d2h(int hexLen)
{
	int y=0;
	string dh="";
	if(hexLen ==0)
		dh=char('0')+dh;
	while(hexLen>0)
	{
		y=hexLen%16;  //����
		if(y<10)   //С��10������
			dh=char('0'+y)+dh;  //�����ַ���ascll�����ַ���ǰ��ƴ��
		else
			dh=char('a'-10+y)+dh;  //����9��������abcdef��ʾ
		if(hexLen>16&&dh.length()==2)
			dh=" "+dh;
		hexLen=hexLen/16;
	}
	if(dh.length()==1||dh.length()==4)
		dh="0"+dh;//��0
	return dh;
}
string parse_FCDA(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);

	string fcdaN="";
	int Num = 0;
	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if (!xmlStrcmp(cur->name, BAD_CAST"FCDA"))
		{
			Num++;
		}
		cur = cur->next;
	}
	fcdaN=d2h(Num);
	return fcdaN;
}

string parse_OptFields(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	
	string optfields="0000000000";//����ѡ����--------------------------------------------------------------------------------------report[3]
	cur = cur->xmlChildrenNode;
	while (cur != NULL)													
	{
		if (!xmlStrcmp(cur->name, BAD_CAST"OptFields"))
		{	
			xmlChar *OptFieldsConfigRef = xmlGetProp(cur, (const xmlChar *)"configRef");
			xmlChar *OptFieldsDataSet = xmlGetProp(cur, (const xmlChar *)"dataSet");
			xmlChar *OptFieldsReasonCode = xmlGetProp(cur, (const xmlChar *)"reasonCode");
			xmlChar *OptFieldsSegmentation = xmlGetProp(cur, (const xmlChar *)"segmentation");
			xmlChar *OptFieldsEntryID = xmlGetProp(cur, (const xmlChar *)"entryID");
			xmlChar *OptFieldsBufOvfl = xmlGetProp(cur, (const xmlChar *)"bufOvfl");
			xmlChar *OptFieldsSeqNum = xmlGetProp(cur, (const xmlChar *)"seqNum");
			xmlChar *OptFieldsTimeStamp = xmlGetProp(cur, (const xmlChar *)"timeStamp");
			xmlChar *OptFieldsDataRef = xmlGetProp(cur, (const xmlChar *)"dataRef");
			string opt="";
			opt=opt+(char*)OptFieldsSeqNum;
			if(opt=="true")
				optfields[1]='1';
			opt="";
			opt=opt+(char*)OptFieldsTimeStamp;
			if(opt=="true")
				optfields[2]='1';
			opt="";
			opt=opt+(char*)OptFieldsReasonCode;
			if(opt=="true")
				optfields[3]='1';
			opt="";
			opt=opt+(char*)OptFieldsDataSet;
			if(opt=="true")
				optfields[4]='1';
			opt="";
			opt=opt+(char*)OptFieldsDataRef;
			if(opt=="true")
				optfields[5]='1';
			opt="";
			opt=opt+(char*)OptFieldsBufOvfl;
			if(opt=="true")
				optfields[6]='1';
			opt="";
			opt=opt+(char*)OptFieldsEntryID;
			if(opt=="true")
				optfields[7]='1';
			opt="";
			opt=opt+(char*)OptFieldsConfigRef;
			if(opt=="true")
				optfields[8]='1';
			opt="";
			opt=opt+(char*)OptFieldsSegmentation;
			if(opt=="true")
				optfields[9]='1';
		}
		cur = cur->next;
	}
	return optfields;
}

int parse_DataSet(xmlDocPtr doc, xmlNodePtr cur,string dataSet_name,xmlChar *IEDname,xmlChar *LDevicename,xmlChar *LNclass,xmlChar *LNinst)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if (!xmlStrcmp(cur->name, BAD_CAST"DataSet"))
		{	
			xmlChar *DataSetname = xmlGetProp(cur, (const xmlChar *)"name");
			string datasN="";
			datasN=datasN+(char*)DataSetname;
			if(datasN==dataSet_name)
			{
/*************************************************FCDA************************************************/
				fcdaNum=parse_FCDA(doc,cur);
			}
		}
		if ((!xmlStrcmp(cur->name, BAD_CAST"ReportControl"))) 
		{	
			xmlChar *ReportControldatSet = xmlGetProp(cur, (const xmlChar *)"datSet");//���ݼ�����
			string dats="";
			dats=dats+(char*)ReportControldatSet;
			if(dats==dataSet_name)//ʶ��ĳ�����ݼ��ı�����ƿ飬��"TurRpCh"
			{
				xmlChar *ReportControlrptID = xmlGetProp(cur, (const xmlChar *)"rptID");
				rptID=rptID+(char*)ReportControlrptID;//��ȡrptID
				xmlChar *ReportControlname = xmlGetProp(cur, (const xmlChar *)"name");
				datasetPath=datasetPath+(char*)IEDname+(char*)LDevicename+"/"+(char*)LNclass+(char*)LNinst+"$"+(char*)ReportControlname;//��ȡdatasetPath
/******************************************************************OptFields********************************************************/
				Optfields=parse_OptFields(doc,cur);
/**************************************************************���report****************************************************************/														
				report[0] = "";report[1] = "";report[2] = "";report[3] = "";
				report[0]=rptID;
				report[1]=datasetPath;
				report[2]=fcdaNum;
				report[3]=Optfields;
			}
		}
		cur = cur->next;
	}
	return 0;
}

int parse_LN(xmlDocPtr doc, xmlNodePtr cur,string dataSet_name,xmlChar *IEDname,xmlChar *LDevicename)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"LN"))) 
		{	
			xmlChar *LNname = xmlGetProp(cur, (const xmlChar *)"lnType");//printf("%s\n",LNname);
			xmlChar *LNclass = xmlGetProp(cur, (const xmlChar *)"lnClass");
			xmlChar *LNinst = xmlGetProp(cur, (const xmlChar *)"inst");
			string x="";
			x=x+(char*)LNclass;
			if(x=="WREP")//������ƿ��߼��ڵ�
			{
/*****************************************************************************DataSet*****************************************************************************/
				parse_DataSet(doc,cur,dataSet_name,IEDname,LDevicename,LNclass,LNinst);
			}
		}
		cur = cur->next;
	}
	return 0;
}

int parse_LDevice(xmlDocPtr doc, xmlNodePtr cur,string dataSet_name,xmlChar *IEDname)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"LDevice"))) 
		{	
			xmlChar *LDevicename = xmlGetProp(cur, (const xmlChar *)"inst");
/*****************************************************************************LN*****************************************************************************/
			parse_LN(doc,cur,dataSet_name,IEDname,LDevicename);
		}
		cur = cur->next;
	}
	return 0;
}

int parse_Server(xmlDocPtr doc, xmlNodePtr cur,string dataSet_name,xmlChar *IEDname)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"Server"))) 
		{	
/*****************************************************************************LDevice*****************************************************************************/
			parse_LDevice(doc,cur,dataSet_name,IEDname);
		}
		cur = cur->next;
	}
	return 0;
}

int parse_AccessPoint(xmlDocPtr doc, xmlNodePtr cur,string dataSet_name,xmlChar *IEDname)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if (!xmlStrcmp(cur->name, BAD_CAST"AccessPoint")) 
		{
			//xmlChar *AccessPointname = xmlGetProp(cur, (const xmlChar *)"name");
/*****************************************************************************Server*****************************************************************************/
			parse_Server(doc,cur,dataSet_name,IEDname);
		}
		cur = cur->next;
	}
	return 0;
}
string *parseSclForReport(const char *file_name,string dataSet_name)
{
	//����
	//file_name="WPP.scd";
	assert(file_name);
	//dataSet_name="TurRpCh";
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	//��ȡ���νṹ
	doc = xmlParseFile(file_name);
	if (doc == NULL) {
		fprintf(stderr, "Failed to parse xml file:%s\n", file_name);
		goto FAILED;
	}
	//��ȡ���ڵ�
	cur = xmlDocGetRootElement(doc);
	if (cur == NULL) {
		fprintf(stderr,"Root is empty.\n");
		goto FAILED;
	}
	if ((xmlStrcmp(cur->name, (const xmlChar *)"SCL"))) {
    fprintf(stderr, "The root is not SCL.\n");
    goto FAILED;
    }
	//����������ڵ��ÿһ���ӽڵ�/**********************************************************IED******************************************************************/
    cur = cur->xmlChildrenNode;
	while (cur != NULL) 
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"IED"))) 
		{
			xmlChar *IEDname = xmlGetProp(cur, (const xmlChar *)"name");
	/*****************************************************************************AccessPoint*****************************************************************************/
			parse_AccessPoint(doc,cur,dataSet_name,IEDname);
		}
		cur = cur->next;
	}
	xmlFreeDoc(doc);
	return report;
FAILED:
    if (doc) {
    xmlFreeDoc(doc);
    }
	string x[1]={"failed"};
    return x;
}

