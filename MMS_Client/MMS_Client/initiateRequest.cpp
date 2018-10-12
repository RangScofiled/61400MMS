#include <stdio.h>
#include <stdio.h>
#include <assert.h>
# include<stdlib.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <iostream>
#include <fstream>
#include <string>
#include "initiateRequest.h"

using namespace std;

string bitTohex(int *x)
{
	string Service="";
	int serviceH=0;
	for(int i=0;i<8;i=i+4)
	{
		serviceH=x[i]*8+x[i+1]*4+x[i+2]*2+x[i+3];
		if(serviceH<10)
			Service=Service+char('0'+serviceH);
		else Service=Service+char('a'-10+serviceH);
	}
	return Service;
}
string parse(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);

	int services[88]={0};//"1110 1110 /0001 1100 /0000 0000 /0000 0000 /0000 0000 /0000 0000 /0000 0000 /0000 0000 /0101 0000 /0000 0001 /0001 1000"//11bytes
	int Num = 0;
	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if (!xmlStrcmp(cur->name, BAD_CAST"DynAssociation"))
		{
			services[0]=1;// status[0];initiate;abort;reject,
			services[2]=1;//identify[2];
			services[83]=1;//conclude[83];
			services[84]=1;//cancel[84],
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"GetDirectory"))
		{
			services[1]=1;// GetNameList[1]
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"GetDataObjectDefinition"))
		{
			services[6]=1;//GetVariableAccessAttributes[6]
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"DataObjectDirectory"))
		{
			services[4]=1;//read[4];GetVariableAccessAttribute
			services[5]=1;//write[5];
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"GetDataSetValue"))
		{
			services[4]=1;//read[4];
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"DataSetDirectory"))
		{
			services[11]=1;//DefineNamedVariableList[11];
			services[12]=1;//GetVariableListAttributes[12];
			services[13]=1;//DeleteNamedVariablelist[13];
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"ReadWrite"))
		{
			services[4]=1;//read[4];
			services[5]=1;//write[5];
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"GetCBValues"))
		{
			services[4]=1;//read[4];
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"ReportSettings"))
		{
			services[4]=1;//read[4];
			services[5]=1;//write[5];
			services[79]=1;//informationReport[79]
		}
		else if (!xmlStrcmp(cur->name, BAD_CAST"LogSettings"))
		{
			services[65]=1;//ReadJournal[65];
			services[67]=1;//initializeJournal[67];
		}
		cur = cur->next;
	}
	string Services="";
	int service8[8]={0};
	for(int j=0;j<88;)
	{
		int i=0;
		for(;i<8;i++)
		{
			service8[i]=services[j];
			j++;
		}
		if(j==88)
			Services=Services+bitTohex(service8);
		else Services=Services+bitTohex(service8)+" ";
	}
	return Services;
}
string parse_Services(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);

	string services="";

	cur = cur->xmlChildrenNode;
	while (cur != NULL)
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"Services"))) 
		{
	/*****************************************************************************AccessPoint*****************************************************************************/
			services=parse(doc,cur);
		}
		cur = cur->next;
	}
	return services;
}
string services(const char *file_name)
{
	//输入
	//file_name="WPP.scd";
	assert(file_name);

	string services="";
	
	xmlDocPtr doc;
	xmlNodePtr cur;
	
	//获取树形结构
	doc = xmlParseFile(file_name);
	if (doc == NULL) {
		fprintf(stderr, "Failed to parse xml file:%s\n", file_name);
		goto FAILED;
	}
	//获取根节点
	cur = xmlDocGetRootElement(doc);
	if (cur == NULL) {
		fprintf(stderr,"Root is empty.\n");
		goto FAILED;
	}
	if ((xmlStrcmp(cur->name, (const xmlChar *)"SCL"))) {
    fprintf(stderr, "The root is not SCL.\n");
    goto FAILED;
    }
	//遍历处理根节点的每一个子节点/**********************************************************IED******************************************************************/
    cur = cur->xmlChildrenNode;
	while (cur != NULL) 
	{
		if ((!xmlStrcmp(cur->name, BAD_CAST"IED"))) 
		{
			xmlChar *IEDname = xmlGetProp(cur, (const xmlChar *)"name");
	/*****************************************************************************Services*****************************************************************************/
			services=parse_Services(doc,cur);
		}
		cur = cur->next;
	}
	xmlFreeDoc(doc);
	return services;
FAILED:
    if (doc) {
    xmlFreeDoc(doc);
    }
    return "failed";
}

string initiateRequest(const char *mFile)
{
	string Services=services(mFile);
	string initiateR="a8 26 80 03 00 fd e8 81 01 06 82 01 06 83 01 0a a4 16 80 01 01 81 03 06 e1 00 82 0c 03 "+Services;
	return initiateR;
}
