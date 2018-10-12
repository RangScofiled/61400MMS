#include <stdio.h>
#include <assert.h>
# include<stdlib.h>
#include <libxml/xmlmemory.h>
#include <libxml/parser.h>
#include <iostream>
#include <fstream>
#include <string>
#include "parse_SCL.h"
using namespace std;


char ln[10] ;
char fc[10] ;
char doname[20] ;
//parse_DAI
string dainame[100];
string daival[100];//value
int num =0;

// parse_DOI


//parse_LDevice

char lntype[30];
// parse_LNodeType
char dotype[30];

//parse_DOType
int a = 0;
string Dabtype[10];
string Datype[10];
string Daname[10];
//parse_EnumType
int eNum = 0;
string enumord[100];
string enumval[100];

static int parse_DAI(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *DAIVal;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		//获取DAI
		if ((!xmlStrcmp(cur->name, BAD_CAST"Val"))){
		DAIVal = xmlNodeListGetString(doc, cur->xmlChildrenNode, 1);
		daival[num] = (char*)DAIVal;
		num++;
		//printf("%s\n", DAIVal);
		//xmlFree(DAIVal);
		}
		cur = cur->next;
	}

	return 0;
}
static int parse_SDI(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *DAIdesc;
	xmlChar *DAIname;
	xmlChar *DAIvalKind;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		//获取DAI
		if ((!xmlStrcmp(cur->name, BAD_CAST"DAI"))){
		DAIdesc = xmlGetProp(cur, (const xmlChar *)"desc");
       // printf("DAI:desc=%s\t",DAIdesc);
		DAIname = xmlGetProp(cur, (const xmlChar *)"name");
       // printf("name=%s\t",DAIname);
		DAIvalKind = xmlGetProp(cur, (const xmlChar *)"valKind");
        //printf("valKind=%s\n",DAIvalKind);
		//xmlFree(DAIdesc);xmlFree(DAIname);xmlFree(DAIvalKind);
			parse_DAI(doc,cur);
		}
		cur = cur->next;
	}
	return 0;
}


static int parse_DOI(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *SDIdesc;
	xmlChar *SDIname;
	xmlChar *DAIdesc;
	xmlChar *DAIname;
	xmlChar *DAIvalKind;
	int danum = 0;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		//获取

		if ((!xmlStrcmp(cur->name, BAD_CAST"SDI"))){
		SDIdesc = xmlGetProp(cur, (const xmlChar *)"desc");
       // printf("SDI:desc=%s\t",SDIdesc);
		SDIname = xmlGetProp(cur, (const xmlChar *)"name");
       // printf("name=%s\t",SDIname);
		//xmlFree(SDIdesc);xmlFree(SDIname);
			parse_SDI(doc,cur);
		}
		if ((!xmlStrcmp(cur->name, BAD_CAST"DAI"))){
		DAIdesc = xmlGetProp(cur, (const xmlChar *)"desc");
      //  printf("DAI:desc=%s\t",DAIdesc);
		DAIname = xmlGetProp(cur, (const xmlChar *)"name");
      //  printf("name=%s\t",DAIname);
		DAIvalKind = xmlGetProp(cur, (const xmlChar *)"valKind");
      //  printf("valKind=%s\n",DAIvalKind);
		//xmlFree(DAIdesc);xmlFree(DAIname);xmlFree(DAIvalKind);
		dainame[danum] = (char*)DAIname;
		danum++;
		parse_DAI(doc,cur);
		}
		cur = cur->next;
	}
	return 0;
}
static int parse_DataSet(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *FCDAprefix;
	xmlChar *FCDAdoName;
	xmlChar *FCDAlnInst;
	xmlChar *FCDAdaName;
	xmlChar *FCDAldInst;
	xmlChar *FCDAfc;
	xmlChar *FCDAlnClass;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		//获取DAI
		if ((!xmlStrcmp(cur->name, BAD_CAST"FCDA"))){
		FCDAprefix = xmlGetProp(cur, (const xmlChar *)"prefix");
        //printf("FCDA:\nprefix=%s\t",FCDAprefix);
		FCDAdoName = xmlGetProp(cur, (const xmlChar *)"doName");
       // printf("doName=%s\t",FCDAdoName);
		FCDAlnInst = xmlGetProp(cur, (const xmlChar *)"lnInst");
      //  printf("lnInst=%s\t",FCDAlnInst);
		FCDAdaName = xmlGetProp(cur, (const xmlChar *)"daName");
     //   printf("daName=%s\t",FCDAdaName);
		FCDAldInst = xmlGetProp(cur, (const xmlChar *)"ldInst");
      //  printf("ldInst=%s\t",FCDAldInst);
		FCDAfc = xmlGetProp(cur, (const xmlChar *)"fc");
     //   printf("fc=%s\t",FCDAfc);
		FCDAlnClass = xmlGetProp(cur, (const xmlChar *)"lnClass");
     //   printf("lnClass=%s\n",FCDAlnClass);
		//xmlFree(FCDAprefix);xmlFree(FCDAdoName);xmlFree(FCDAlnInst);xmlFree(FCDAdaName);
		//xmlFree(FCDAldInst);xmlFree(FCDAfc);xmlFree(FCDAlnClass);
		}
		cur = cur->next;
	}
	return 0;
}
static int parse_LN(xmlDocPtr doc, xmlNodePtr cur)
{


	assert(doc || cur);
	xmlChar *DOIdesc;
	xmlChar *DOIname;
	xmlChar *DataSetdesc;
	xmlChar *DataSetname;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		//获取
		char doiname[20];
		if ((!xmlStrcmp(cur->name, BAD_CAST"DOI"))){
		DOIdesc = xmlGetProp(cur, (const xmlChar *)"desc");
       // printf("DOI:desc=%s\t",DOIdesc);
		DOIname = xmlGetProp(cur, (const xmlChar *)"name");

		sprintf(doiname,"%s",(char*)DOIname);
		int x = strlen(doiname);
		for(int i=0;i<x;i++){
			if(doname[i] == doiname[i]){ 
				if(i == x-1){
					cout<<doname<<endl;
					parse_DOI(doc,cur);
				}
			}
			else i = x;
		}
		}
	/*	if ((!xmlStrcmp(cur->name, BAD_CAST"DataSet"))){
		DataSetdesc = xmlGetProp(cur, (const xmlChar *)"desc");
        //printf("DataSet:desc=%s\t",DataSetdesc);
		DataSetname = xmlGetProp(cur, (const xmlChar *)"name");
       // printf("name=%s\n",DataSetname);
		//xmlFree(DataSetdesc);xmlFree(DataSetname);
			//parse_DataSet(doc,cur);
		}
		*/
		cur = cur->next;
	}
	return 0;
}


static int parse_LDevice(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *LNinst;
	xmlChar *LNlnType;
	xmlChar *LNlnClass;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		char LNname[10];
		//获取
		if ((!xmlStrcmp(cur->name, BAD_CAST"LN0"))){
		LNinst = xmlGetProp(cur, (const xmlChar *)"inst");
       // printf("LN0:inst=%s\t",LNinst);
		LNlnType = xmlGetProp(cur, (const xmlChar *)"lnType");		
       // printf("lnType=%s\t",LNlnType);
		LNlnClass = xmlGetProp(cur, (const xmlChar *)"lnClass");
      //  printf("lnClass=%s\n",LNlnClass);
		sprintf(LNname,"%s",(char*)LNlnClass);
		int x = strlen(LNname);
		for(int i=0;i<x;i++){
			if(ln[i] == LNname[i]){ 
				if(i == x-1){
					sprintf(lntype,"%s",(char*)LNlnType);
					printf("%s\n", LNname);
					parse_LN(doc,cur);
				}
			}
			else i = x;
		}
		//xmlFree(LNinst);xmlFree(LNlnType);xmlFree(LNlnClass);
		//parse_LN(doc,cur);
		}
		if ((!xmlStrcmp(cur->name, BAD_CAST"LN"))){
		LNinst = xmlGetProp(cur, (const xmlChar *)"inst");
        //printf("LN:inst=%s\t",LNinst);
		LNlnType = xmlGetProp(cur, (const xmlChar *)"lnType");
		
        //printf("lnType=%s\t",LNlnType);
		LNlnClass = xmlGetProp(cur, (const xmlChar *)"lnClass");
       // printf("lnClass=%s\n",LNlnClass);

		sprintf(LNname,"%s",(char*)LNlnClass);
		int x = strlen(LNname);
		for(int i=0;i<x;i++){
			if(ln[i] == LNname[i]){ 
				if(i == x-1){
					sprintf(lntype,"%s",(char*)LNlnType);
					printf("%s\n", ln);
					parse_LN(doc,cur);
				}
			}
			else i = x;
		}
		//xmlFree(LNinst);xmlFree(LNlnType);xmlFree(LNlnClass);
		//parse_LN(doc,cur);
		}
		cur = cur->next;
	}
	return 0;
}

static int parse_Server(xmlDocPtr doc, xmlNodePtr cur, xmlChar *IEDname, const char *domain)
{
	assert(doc || cur);
	xmlChar *LDinst;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		int x = 0;
		char domainID[50];
		if ((!xmlStrcmp(cur->name, BAD_CAST"LDevice"))){
		LDinst = xmlGetProp(cur, (const xmlChar *)"inst");
		
		sprintf(domainID,"%s%s",(char*)IEDname,(char*)LDinst);
		x = strlen(domainID);
		}
		int i = 0;
		for(i;i<x;i++){
			if(domainID[i] == domain[i]){ 
				if(i == x-1){
					printf("%s\n", domain);
					parse_LDevice(doc,cur);
					
				}
			}
			else i=x;
		}
	cur = cur->next;
	}
	return 0;
}
static int parse_AccessPoint(xmlDocPtr doc, xmlNodePtr cur, xmlChar *IEDname, const char *domain)
{
	assert(doc || cur);

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		if ((!xmlStrcmp(cur->name, BAD_CAST"Server"))){
			parse_Server(doc,cur,IEDname,domain);
		}
		cur = cur->next;
	}
	return 0;
}
static int parse_IED(xmlDocPtr doc, xmlNodePtr cur, xmlChar *IEDname, const char *domain)
{
	assert(doc || cur);
	xmlChar *name;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		if ((!xmlStrcmp(cur->name, BAD_CAST"AccessPoint"))){
		name = xmlGetProp(cur, (const xmlChar *)"name");
    //    printf("%s:\n",name);
		if(strcmp((char*)name,"S1") == 0){
			xmlFree(name);
			parse_AccessPoint(doc,cur,IEDname,domain);
		}
		}
		cur = cur->next;
	}
	return 0;
}


static int parse_LNodeType(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *DOtype;
	xmlChar *DOname;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		char name[20];
		if ((!xmlStrcmp(cur->name, BAD_CAST"DO"))){
		DOtype = xmlGetProp(cur, (const xmlChar *)"type");
       // printf("type=%s\t",DOtype);
		DOname = xmlGetProp(cur, (const xmlChar *)"name");
		
		sprintf(name,"%s", (char*)DOname);
		int x = strlen(name);
		for(int i=0;i<x;i++){
			if(name[i] == doname[i]){ 
				if(i == x-1){
					sprintf(dotype,"%s", (char*)DOtype);
					printf("dotype:%s\n",dotype); //search dotype_id
				}
			}
			else i = x;
		}
       // printf("name=%s\n",DOname);
		//xmlFree(DOtype);xmlFree(DOname);
		
		}
		cur = cur->next;
	}
	return 0;
}


static int parse_DOType(xmlDocPtr doc, xmlNodePtr cur)
{

	assert(doc || cur);
	xmlChar *SDOtype;
	xmlChar *SDOname;
	xmlChar *DAbType;
	xmlChar *DAtype;
	xmlChar *DAname;
	xmlChar *DAfc;
	xmlChar *DAqchg;
	xmlChar *DAdchg;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		if ((!xmlStrcmp(cur->name, BAD_CAST"SDO"))){
		SDOtype = xmlGetProp(cur, (const xmlChar *)"type");
       // printf("type=%s\t",SDOtype);
		SDOname = xmlGetProp(cur, (const xmlChar *)"name");
        //printf("name=%s\n",SDOname);
		//xmlFree(SDOtype);	xmlFree(SDOname);	
		}
		char dafc[10];
		if ((!xmlStrcmp(cur->name, BAD_CAST"DA"))){
		DAqchg = xmlGetProp(cur, (const xmlChar *)"qchg");
        //printf("qchg=%s\t",DAqchg);
		DAbType = xmlGetProp(cur, (const xmlChar *)"bType");
        //printf("bType=%s\t",DAbType);
		DAtype = xmlGetProp(cur, (const xmlChar *)"type");
        //printf("type=%s\t",DAtype);
		DAname = xmlGetProp(cur, (const xmlChar *)"name");
        //printf("name=%s\t",DAname);
		DAfc = xmlGetProp(cur, (const xmlChar *)"fc");
        //printf("fc=%s\t",DAfc);
		DAdchg = xmlGetProp(cur, (const xmlChar *)"dchg");

		sprintf(dafc,"%s",(char*)DAfc);
		//cout<<DAfc<<endl;
		int x = strlen(dafc);		
		for(int i=0;i<x;i++){
			if(dafc[i] == fc[i]){ 
				if(i == x-1){
					Dabtype[a] = (char*)DAbType;
					//cout<<Dabtype[a]<<endl;
					Datype[a]= (char*)DAtype;
					Daname[a]= (char*)DAname;//screen out DA based on fc
					//cout<<Daname[a]<<endl;
					a++;
				}
			}
			else i = x;
		}

        //printf("dchg=%s\n",DAdchg);
		//xmlFree(DAbType);xmlFree(DAtype);xmlFree(DAname);
		//xmlFree(DAfc);xmlFree(DAqchg);xmlFree(DAdchg);
		}
		cur = cur->next;
	}


	return 0;
}
static int parse_DAType(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *BDAbType;
	xmlChar *BDAtype;
	xmlChar *BDAname;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		if ((!xmlStrcmp(cur->name, BAD_CAST"BDA"))){
		BDAbType = xmlGetProp(cur, (const xmlChar *)"bType");
        //printf("bType=%s\t",BDAbType);
		BDAtype = xmlGetProp(cur, (const xmlChar *)"type");
        //printf("type=%s\t",BDAtype);
		BDAname = xmlGetProp(cur, (const xmlChar *)"name");
        //printf("name=%s\n",BDAname);
		xmlFree(BDAbType);xmlFree(BDAtype);xmlFree(BDAname);
		}
		cur = cur->next;
	}
	return 0;
}	

static int parse_EnumType(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);
	xmlChar *EnumValord;
	xmlChar *EnumVal;
	
	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		if ((!xmlStrcmp(cur->name, BAD_CAST"EnumVal"))){
		EnumValord = xmlGetProp(cur, (const xmlChar *)"ord");
		enumord[eNum] = (char*)EnumValord;
        //printf("%s:\t",EnumValord);
		EnumVal = xmlNodeListGetString(doc, cur->xmlChildrenNode, 1);
		enumval[eNum] = (char*)EnumVal;
		eNum++;
		//printf("%s\n", EnumVal);
		//xmlFree(EnumValord);xmlFree(EnumVal);
		}
		cur = cur->next;
	}
	//for(int i =0;i<eNum;i++)
	//	cout<<enumord[i]<<" "<<enumval[i]<<endl;
	//for(int i =0;i<num;i++)
	//	cout<<dainame[i]<<" "<<daival[i]<<endl;

	fstream write;
	write.open("mms_response.txt", ios::out|ios::trunc);
	int i = 0;
	while(i<a){
		for(int n=0;n<num;n++){
			if(Daname[i] == dainame[n]){
				if(Dabtype[i] == "Enum"){
					for(int x=0;x<eNum;x++){
						if(daival[n] == enumval[x]){
							write <<dainame[n]<<" "<<Dabtype[i]<<" "<<enumord[x]<<endl;
							cout<<dainame[n]<<":"<<Dabtype[i]<<" "<<enumord[x]<<endl;
						}
					}
				}
				else {
					cout<<dainame[n]<<":"<<daival[n]<<endl;
					write <<dainame[n]<<" "<<Dabtype[i]<<" "<<daival[n]<<endl;
				}
				i++;
			}
		}
	}
	return 0;
}
static int parse_DataTypeTemplates(xmlDocPtr doc, xmlNodePtr cur)
{
	assert(doc || cur);

	xmlChar *LNTypeid;
	xmlChar *LNTypelnClass;
	xmlChar *DOTypeid;
	xmlChar *DOTypecdc;
	xmlChar *DATypeid;
	xmlChar *EnumTypeid;

	cur = cur->xmlChildrenNode;
	while (cur != NULL){
		char LNid[30];
		if ((!xmlStrcmp(cur->name, BAD_CAST"LNodeType"))){
		LNTypeid = xmlGetProp(cur, (const xmlChar *)"id");		
      //  printf("%s:\t",LNTypeid);
		LNTypelnClass = xmlGetProp(cur, (const xmlChar *)"lnClass");
		
		sprintf(LNid,"%s",(char*)LNTypeid);
		int x = strlen(LNid);
		for(int i=0;i<x;i++){
			if(lntype[i] == LNid[i]){ 
				if(i == x-1){
					printf("LNid:%s\n",LNid);//search lntype
					parse_LNodeType(doc,cur);
				}
			}
			else i = x;
		}

     //   printf("%s:\n",LNTypelnClass);
		//xmlFree(LNTypeid);xmlFree(LNTypelnClass);		
			//parse_LNodeType(doc,cur);
		}
		char dotypeid[30];
		if ((!xmlStrcmp(cur->name, BAD_CAST"DOType"))){
		DOTypeid = xmlGetProp(cur, (const xmlChar *)"id");
     //   printf("%s:\t",DOTypeid);
		DOTypecdc = xmlGetProp(cur, (const xmlChar *)"cdc");
		
		sprintf(dotypeid,"%s",(char*)DOTypeid);
		int x = strlen(dotype);
		for(int i=0;i<x;i++){
			if(dotypeid[i] == dotype[i]){ 
				if(i == x-1){
					//printf("dotypeid:%s\n",dotypeid);
					parse_DOType(doc,cur);
				}
			}
			else i = x;
		}
     //   printf("%s:\n",DOTypecdc);
		//xmlFree(DOTypeid);xmlFree(DOTypecdc);		
			
		}
		if ((!xmlStrcmp(cur->name, BAD_CAST"DAType"))){
		DATypeid = xmlGetProp(cur, (const xmlChar *)"id");

		for(int num=0;num<a;num++){
			if(Dabtype[num] == "Struct"){
				if(Datype[num] == (char*)DATypeid)
					parse_DAType(doc,cur);
			}
		}
     //   printf("%s:\n",DATypeid);
		//xmlFree(DATypeid);
			
		}
		if ((!xmlStrcmp(cur->name, BAD_CAST"EnumType"))){
		EnumTypeid = xmlGetProp(cur, (const xmlChar *)"id");

		for(int num=0;num<a;num++){
			if(Dabtype[num] == "Enum"){
				if(Datype[num]==(char*)EnumTypeid){
					parse_EnumType(doc,cur);
				}
			}
		}
     //   printf("%s:\n",EnumTypeid);
		//xmlFree(EnumTypeid);
			//parse_EnumType(doc,cur);
		}
		cur = cur->next;
	}
	return 0;
}
int parse_SCL(const char *file_name, const char *domain, const char *item)
{
	int a = 0;
		//cout<<"LN=";
	while(item[a] != '$'){
		ln[a] = item[a];
			//cout<<ln[a];
		a++;
	}
		//cout<<endl;
	a++;
	int i=0;	//cout<<"fc=";
	while(item[a] != '$'){
		
		fc[i] = item[a];
			//cout<<fc[a];
		a++;
		i++;
	}
	//cout<<"fc:"<<fc<<endl;
		//cout<<endl;
	a++;
	int n =0;	//cout<<"Doname=";
	int len = strlen(item);
	//cout<<len;
	for(;a<len+1;a++){
		
		doname[n] = item[a];
		n++;
			//cout<<doname[a];
	}
	//cout<<endl;

	//const char *file_name = "WPP.scd";
	assert(file_name);
	xmlChar *IEDname;

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
	//遍历处理根节点的每一个子节点
    cur = cur->xmlChildrenNode;
	while (cur != NULL) {
	if ((!xmlStrcmp(cur->name, BAD_CAST"IED"))) {
		IEDname = xmlGetProp(cur, (const xmlChar *)"name");
		parse_IED(doc,cur,IEDname,domain);
	}
	if ((!xmlStrcmp(cur->name, BAD_CAST"DataTypeTemplates"))) {
		parse_DataTypeTemplates(doc, cur);
	}
	cur = cur->next;
	}
	xmlFreeDoc(doc);
	return 0;
FAILED:
    if (doc) {
    xmlFreeDoc(doc);
    }
    return -1;

}

