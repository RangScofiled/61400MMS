<?xml  version="1.0" encoding="UTF-8" ?>
<SCL xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.iec.ch/61850/2003/SCL">
 <Header toolID="Nari-Relays SCL Configurator" id="WPP" nameStructure="IEDName"/>
 <Communication>
  <SubNetwork desc="" type="8-MMS" name="MMS">
   <ConnectedAP desc="" iedName="WPP1" apName="S1">
    <Address>
     <P type="IP">192.168.0.2</P>
     <P type="IP-SUBNET">255.255.255.0</P>
     <P type="IP-GATEWAY">192.168.0.1</P>
     <P type="OSI-TSEL">00 01</P>
     <P type="OSI-SSEL">00 01</P>
     <P type="OSI-PSEL">00 00 00 01</P>
     <P type="OSI-AP-Title">1 3 9999 23</P>
     <P type="OSI-AE-Qualifier">33</P>
    </Address>
   </ConnectedAP>
  </SubNetwork>
 </Communication>
 <IED configVersion="1.00" desc="风电场" type="WPP" manufacturer="SHR" name="WPP1">
  <Private type="SHR-SmartV-EDC Version">2.1.70</Private>
  <Private type="SHR-IEC61850-MR Version">1.11</Private>
  <Services>
   <DynAssociation/>
   <GetDirectory/>
   <GetDataObjectDefinition/>
   <DataObjectDirectory/>
   <GetDataSetValue/>
   <DataSetDirectory/>
   <ConfDataSet max="50" maxAttributes="500"/>
   <ReadWrite/>
   <ConfReportControl max="50"/>
   <GetCBValues/>
   <ConfLogControl max="50"/>
   <ReportSettings cbName="Dyn" datSet="Dyn" rptID="Dyn" optFields="Dyn" bufTime="Dyn" trgOps="Dyn" intgPd="Dyn"/>
   <LogSettings cbName="Dyn" datSet="Dyn" intgPd="Dyn" logEna="Dyn" trgOps="Dyn"/>
  </Services>
  <AccessPoint name="S1">
   <Server>
    <Authentication none="true"/>
    <LDevice inst="W1">
     <LN0 inst="" lnType="WPP_W1_LLN0" lnClass="LLN0">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
     </LN0>
     <LN inst="1" lnType="WPP_LPHD" lnClass="LPHD">
      <DOI desc="物理设备铭牌" name="PhyNam">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
      </DOI>
      <DOI desc="物理设备健康" name="PhyHealth">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI name="Proxy">
       <DAI name="stVal">
        <Val>0</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WTUR" lnClass="WTUR">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="有功发电" name="W">
       <DAI name="dU">
        <Val>有功发电</Val>
       </DAI>
      </DOI>
      <DOI desc="无功发电" name="VAr">
       <DAI name="dU">
        <Val>有功发电</Val>
       </DAI>
      </DOI>
      <DOI desc="涡轮机可用时间(特定供应商)" name="AvlTmRs">
       <DAI name="dU">
        <Val>涡轮机可用时间(特定供应商)</Val>
       </DAI>
      </DOI>
      <DOI desc="操作时间（供应商专用）" name="OpTmRs">
       <DAI name="dU">
        <Val>操作时间（供应商专用）</Val>
       </DAI>
      </DOI>
      <DOI desc="涡轮启动次数（供应商专用）" name="StrCnt">
       <DAI name="dU">
        <Val>涡轮启动次数（供应商专用）</Val>
       </DAI>
      </DOI>
      <DOI desc="涡轮机停止数(供应商特定)" name="StopCnt">
       <DAI name="dU">
        <Val>涡轮机停止数(供应商特定)</Val>
       </DAI>
      </DOI>
      <DOI desc="总(净)有功生产" name="TotWh">
       <SDI desc="手动强制复位" name="manRs">
        <DAI name="ctlVal">
         <Val>false</Val>
        </DAI>
        <DAI name="ctlModel" valKind="RO">
         <Val>direct-with-normal-security</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>总(净)有功生产</Val>
       </DAI>
      </DOI>
      <DOI desc="总(净)无功生产" name="TotVArh">
       <SDI desc="手动强制复位" name="manRs">
        <DAI name="ctlVal">
         <Val>false</Val>
        </DAI>
        <DAI name="ctlModel" valKind="RO">
         <Val>direct-with-normal-security</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>总(净)无功生产</Val>
       </DAI>
      </DOI>
      <DOI desc="涡轮机状态" name="TurSt">
       <SDI desc="实际状态" name="actSt">
        <DAI name="stVal"/>
        <DAI name="q"/>
        <DAI name="t"/>
       </SDI>
       <DAI desc="触发前时刻" name="preTmms"/>
       <DAI desc="触发后时刻" name="pstTmms"/>
       <DAI desc="采样时间" name="smpTmms"/>
      </DOI>
      <DOI desc="风力涡轮机常规操作" name="SetTurOp">
       <SDI desc="实际控制状态" name="actSt">
        <SDI name="origin">
         <DAI name="orCat"/>
         <DAI name="orIdent"/>
        </SDI>
        <DAI name="ctlVal"/>
        <DAI name="stVal"/>
        <DAI name="q"/>
        <DAI name="t"/>
       </SDI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WROT" lnClass="WROT">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="转子侧转速值" name="RotSpd">
       <DAI name="dU">
        <Val>转子侧转速值</Val>
       </DAI>
      </DOI>
      <DOI desc="转子转角位置" name="RotPos">
       <DAI name="dU">
        <Val>转子转角位置</Val>
       </DAI>
      </DOI>
      <DOI desc="转子轮毂温度" name="HubTmp">
       <DAI name="dU">
        <Val>转子轮毂温度</Val>
       </DAI>
      </DOI>
      <DOI desc="1号叶片液压螺距系统压力(参考)" name="PtHyPresBl1">
       <DAI name="dU">
        <Val>1号叶片液压螺距系统压力(参考)</Val>
       </DAI>
      </DOI>
      <DOI desc="2号叶片液压螺距系统的压力" name="PtHyPresBl2">
       <DAI name="dU">
        <Val>2号叶片液压螺距系统的压力</Val>
       </DAI>
      </DOI>
      <DOI desc="3号叶片液压螺距系统的压力" name="PtHyPresBl3">
       <DAI name="dU">
        <Val>3号叶片液压螺距系统的压力</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片1节角设定点(参考)" name="PtAngSpBl1">
       <DAI name="dU">
        <Val>叶片1节角设定点(参考)</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片2节角设定点" name="PtAngSpBl2">
       <DAI name="dU">
        <Val>叶片2节角设定点</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片3节角设定点" name="PtAngSpBl3">
       <DAI name="dU">
        <Val>叶片3节角设定点</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片1的桨距角(参考)" name="PtAngValBl1">
       <DAI name="dU">
        <Val>叶片1的桨距角(参考)</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片2的桨距角" name="PtAngValBl2">
       <DAI name="dU">
        <Val>叶片2的桨距角</Val>
       </DAI>
      </DOI>
      <DOI desc="叶片3的桨距角" name="PtAngValBl3">
       <DAI name="dU">
        <Val>叶片3的桨距角</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WGEN" lnClass="WGEN">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转速" name="Spd">
       <DAI name="dU">
        <Val>发电机转速</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机定子温度测量" name="GnTmpSta">
       <DAI name="dU">
        <Val>发电机定子温度测量</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转子温度测量" name="GnTmpRtr">
       <DAI name="dU">
        <Val>发电机转子温度测量</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机进气/水温的温度测量" name="GnTmpInlet">
       <DAI name="dU">
        <Val>发电机进气/水温的温度测量</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转子直流励磁" name="RtrExtDC">
       <DAI name="dU">
        <Val>发电机转子直流励磁</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转子交流励磁" name="RtrExtAC">
       <DAI name="dU">
        <Val>发电机转子交流励磁</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机运行时间" name="OpTmRs">
       <DAI name="dU">
        <Val>发电机运行时间</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机有功功率" name="W">
       <DAI name="dU">
        <Val>发电机有功功率</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机无功功率" name="Var">
       <DAI name="dU">
        <Val>发电机无功功率</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机定子三相对地电压" name="StaPhV">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>发电机定子A相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>发电机定子B相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>发电机定子C相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>发电机定子三相对地电压</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机定子三相电流" name="StaA">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>发电机定子A相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>发电机定子B相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>发电机定子C相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>发电机定子三相电流</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转子三相对地电压" name="RtrPhV">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>发电机转子A相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>发电机转子B相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>发电机转子C相对地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>发电机转子三相对地电压</Val>
       </DAI>
      </DOI>
      <DOI desc="发电机转子三相电流" name="RtrA">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>发电机转子A相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>发电机转子B相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>发电机转子C相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>发电机转子三相电流</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WNAC" lnClass="WNAC">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="机舱定向" name="Dir">
       <DAI name="dU">
        <Val>机舱定向</Val>
       </DAI>
      </DOI>
      <DOI desc="舱外风速" name="WdSpd">
       <DAI name="dU">
        <Val>舱外风速</Val>
       </DAI>
      </DOI>
      <DOI desc="舱外风向" name="WdDir">
       <DAI name="dU">
        <Val>舱外风向</Val>
       </DAI>
      </DOI>
      <DOI desc="舱外温度" name="ExTmp">
       <DAI name="dU">
        <Val>舱外温度</Val>
       </DAI>
      </DOI>
      <DOI desc="舱内温度" name="IntlTmp">
       <DAI name="dU">
        <Val>舱内温度</Val>
       </DAI>
      </DOI>
      <DOI desc="舱内湿度" name="IntlHum">
       <DAI name="dU">
        <Val>舱内湿度</Val>
       </DAI>
      </DOI>
      <DOI desc="灯塔亮度值" name="BecLumLev">
       <DAI name="dU">
        <Val>灯塔亮度值</Val>
       </DAI>
      </DOI>
      <DOI desc="舱外能见度" name="Vis">
       <DAI name="dU">
        <Val>舱外能见度</Val>
       </DAI>
      </DOI>
      <DOI desc="冰厚" name="Ice">
       <DAI name="dU">
        <Val>冰厚</Val>
       </DAI>
      </DOI>
      <DOI desc="塔位移(纵向)" name="DispXdir">
       <DAI name="dU">
        <Val>塔位移(纵向)</Val>
       </DAI>
      </DOI>
      <DOI desc="塔顶位移(横向)" name="DispYdir">
       <DAI name="dU">
        <Val>塔顶位移(横向)</Val>
       </DAI>
      </DOI>
      <DOI desc="灯塔工作时间" name="BecTmRs">
       <DAI name="dU">
        <Val>灯塔工作时间</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WYAW" lnClass="WYAW">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="偏航速度" name="YwSpd">
       <DAI name="dU">
        <Val>偏航速度</Val>
       </DAI>
      </DOI>
      <DOI desc="偏航电机/齿轮温度" name="Tmp">
       <DAI name="dU">
        <Val>偏航电机/齿轮温度</Val>
       </DAI>
      </DOI>
      <DOI desc="偏航轴承相对于公称真北的旋转角度" name="YawAng">
       <DAI name="dU">
        <Val>偏航轴承相对于公称真北的旋转角度</Val>
       </DAI>
      </DOI>
      <DOI desc="电缆导通" name="CabWup">
       <DAI name="dU">
        <Val>电缆导通</Val>
       </DAI>
      </DOI>
      <DOI desc="偏航系统润滑油位" name="SysGsLev">
       <DAI name="dU">
        <Val>偏航系统润滑油位</Val>
       </DAI>
      </DOI>
      <DOI desc="偏航制动压力" name="BrkPres">
       <DAI name="dU">
        <Val>偏航制动压力</Val>
       </DAI>
      </DOI>
      <DOI desc="顺时针偏航作业时数" name="CwTm">
       <DAI name="dU">
        <Val>顺时针偏航作业时数</Val>
       </DAI>
      </DOI>
      <DOI desc="逆时针偏航作业时数" name="CcwTm">
       <DAI name="dU">
        <Val>逆时针偏航作业时数</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WALM" lnClass="WALM">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WTRM" lnClass="WTRM">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="轴轴承1测量温度" name="TrmTmpShfBrg1">
       <DAI name="dU">
        <Val>轴轴承1测量温度</Val>
       </DAI>
      </DOI>
      <DOI desc="轴轴承2测量温度" name="TrmTmpShfBrg2">
       <DAI name="dU">
        <Val>轴轴承2测量温度</Val>
       </DAI>
      </DOI>
      <DOI desc="变速箱油的测量温度" name="TrmTmpGbxOil">
       <DAI name="dU">
        <Val>变速箱油的测量温度</Val>
       </DAI>
      </DOI>
      <DOI desc="轴制动器(表面)温度测量" name="TrmTmpShfBrk">
       <DAI name="dU">
        <Val>轴制动器(表面)温度测量</Val>
       </DAI>
      </DOI>
      <DOI desc="变速箱1变速箱振动测量" name="VibGbx1">
       <DAI name="dU">
        <Val>变速箱1变速箱振动测量</Val>
       </DAI>
      </DOI>
      <DOI desc="变速箱2变速箱振动测量" name="VibGbx2">
       <DAI name="dU">
        <Val>变速箱2变速箱振动测量</Val>
       </DAI>
      </DOI>
      <DOI desc="主轴轴承润滑油位" name="GsLev">
       <DAI name="dU">
        <Val>主轴轴承润滑油位</Val>
       </DAI>
      </DOI>
      <DOI desc="变速箱油位" name="GbxOilLev">
       <DAI name="dU">
        <Val>变速箱油位</Val>
       </DAI>
      </DOI>
      <DOI desc="齿轮油压力" name="GbxOilPres">
       <DAI name="dU">
        <Val>齿轮油压力</Val>
       </DAI>
      </DOI>
      <DOI desc="轴制动器液压" name="BrkHyPres">
       <DAI name="dU">
        <Val>轴制动器液压</Val>
       </DAI>
      </DOI>
      <DOI desc="离线滤池污染" name="OfFlt">
       <DAI name="dU">
        <Val>离线滤池污染</Val>
       </DAI>
      </DOI>
      <DOI desc="内滤器污染" name="InlFlt">
       <DAI name="dU">
        <Val>内滤器污染</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WCNV" lnClass="WCNV">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="频率" name="Hz">
       <DAI name="dU">
        <Val>频率</Val>
       </DAI>
      </DOI>
      <DOI desc="扭矩值" name="Torq">
       <DAI name="dU">
        <Val>扭矩值</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器内部温度" name="CnvTmpDclink">
       <DAI name="dU">
        <Val>变换器内部温度</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器-发电机侧温" name="CnvTmpGn">
       <DAI name="dU">
        <Val>变换器-发电机侧温</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器-电网侧温度" name="CnvTmpGri">
       <DAI name="dU">
        <Val>变换器-电网侧温</Val>
       </DAI>
      </DOI>
      <DOI desc="直流环节电压变换器" name="DclVol">
       <DAI name="dU">
        <Val>直流环节电压变换器</Val>
       </DAI>
      </DOI>
      <DOI desc="直流环节电流变换器" name="DclAmp">
       <DAI name="dU">
        <Val>直流环节电流变换器</Val>
       </DAI>
      </DOI>
      <DOI desc="转换器工作时间" name="OpTmRs">
       <DAI name="dU">
        <Val>转换器工作时间</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器发电机侧3相接地电压" name="GnPhV">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变换器发电机侧A相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>Va</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变换器发电机侧B相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>Vb</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变换器发电机侧C相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>Vc</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变换器发电机侧3相接地电压</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器发电机侧3相电流" name="GnA">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变换器发电机侧A相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变换器发电机侧B相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变换器发电机侧C相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变换器发电机侧3相电流</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器发电机侧三相功率因数" name="GnPF">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变换器发电机侧A相功率因数</Val>
        </DAI>
        <DAI name="angRef">
         <Val>other</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变换器发电机侧B相功率因数</Val>
        </DAI>
        <DAI name="angRef">
         <Val>other</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变换器发电机侧C相功率因数</Val>
        </DAI>
        <DAI name="angRef">
         <Val>other</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变换器发电机侧三相功率因数</Val>
       </DAI>
      </DOI>
      <DOI desc="变换器操作模式" name="CnvOpMod">
       <SDI desc="实际状态" name="actSt">
        <DAI name="stVal"/>
        <DAI name="q"/>
        <DAI name="t"/>
       </SDI>
       <DAI desc="触发前时刻" name="preTmms"/>
       <DAI desc="触发后时刻" name="pstTmms"/>
       <DAI desc="采样时间" name="smpTmms"/>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WTOW" lnClass="WTOW">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="提升位置" name="LiftPos">
       <DAI name="dU">
        <Val>提升位置</Val>
       </DAI>
      </DOI>
      <DOI desc="塔内湿度" name="IntlHum">
       <DAI name="dU">
        <Val>塔内湿度</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WMET" lnClass="WMET">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-传感器高度" name="MetAlt1Alt">
       <DAI name="dU">
        <Val>气象高度1-传感器高度</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-水平风速" name="MetAlt1HorWdSpd">
       <DAI name="dU">
        <Val>气象高度1-水平风速</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-水平风向" name="MetAlt1HorWdDir">
       <DAI name="dU">
        <Val>气象高度1-水平风向</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-垂直风速" name="MetAlt1VerWdSpd">
       <DAI name="dU">
        <Val>气象高度1-垂直风速</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-垂直风向" name="MetAlt1VerWdDir">
       <DAI name="dU">
        <Val>气象高度1-垂直风向</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-温度" name="MetAlt1Tmp">
       <DAI name="dU">
        <Val>气象高度1-温度</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-湿度" name="MetAlt1Hum">
       <DAI name="dU">
        <Val>气象高度1-湿度</Val>
       </DAI>
      </DOI>
      <DOI desc="气象高度1-压力" name="MetAlt1Pres">
       <DAI name="dU">
        <Val>气象高度1-压力</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WTRF" lnClass="WTRF">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="汽轮机侧变压器温度" name="TrfTmpTrfTur">
       <DAI name="dU">
        <Val>汽轮机侧变压器温度</Val>
       </DAI>
      </DOI>
      <DOI desc="电网侧变压器温度" name="TrfTmpTrfGri">
       <DAI name="dU">
        <Val>电网侧变压器温度</Val>
       </DAI>
      </DOI>
      <DOI desc="变压器运行时间(具体供应商)" name="TrfOpTmRs">
       <DAI name="dU">
        <Val>变压器运行时间(具体供应商)</Val>
       </DAI>
      </DOI>
      <DOI desc="变压器涡轮侧三相接地电压" name="TrfTurPhV">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变压器涡轮侧A相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变压器涡轮侧B相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变压器涡轮侧C相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变压器涡轮侧三相接地电压</Val>
       </DAI>
      </DOI>
      <DOI desc="变压器涡轮侧三相电流" name="TrfTurA">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变压器涡轮侧A相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变压器涡轮侧B相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变压器涡轮侧C相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变压器涡轮侧三相电流</Val>
       </DAI>
      </DOI>
      <DOI desc="变压器网侧三相接地电压" name="TrfGriPhV">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变压器网侧A相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变压器网侧B相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变压器网侧C相接地电压</Val>
        </DAI>
        <DAI name="angRef">
         <Val>V</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变压器网侧三相接地电压</Val>
       </DAI>
      </DOI>
      <DOI desc="变压器网侧三相电流" name="TrfGriA">
       <SDI desc="A相" name="phsA">
        <DAI name="dU">
         <Val>变压器网侧A相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="B相" name="phsB">
        <DAI name="dU">
         <Val>变压器网侧B相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <SDI desc="C相" name="phsC">
        <DAI name="dU">
         <Val>变压器网侧C相电流</Val>
        </DAI>
        <DAI name="angRef">
         <Val>A</Val>
        </DAI>
       </SDI>
       <DAI name="dU">
        <Val>变压器网侧三相电流</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WSLG" lnClass="WSLG">
      <DataSet desc="Data set of all logged (historical) turbine commands. " name="TurCmLog "/>
      <DataSet desc="Data set of all logged (historical) turbine status " name="TurStLog "/>
      <DataSet desc="Data set of all high urgent alarms " name="HiUrgAlm "/>
      <DataSet desc="Data set of all low urgent alarms " name="LoUrgAlm "/>
      <DataSet desc="Data set of all counting information " name="TurCtLog "/>
      <DataSet desc="Data set of all event timing information " name="TurTmLog"/>
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WALG" lnClass="WALG">
      <DataSet desc="Data set of all logged (historical) turbine analogue time series " name="TurAnLog ">
       <FCDA prefix="" doName="W" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="W" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="W" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="VAr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="VAr" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="VAr" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="RotSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotSpd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotSpd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotPos" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotPos" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotPos" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="HubTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="HubTmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="HubTmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl1" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl1" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl2" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl2" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl3" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl3" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl1" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl1" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl2" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl2" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl3" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl3" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl1" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl1" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl2" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl2" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl3" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl3" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="Spd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="Spd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="Spd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpSta" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpSta" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpSta" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpRtr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpRtr" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpRtr" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpInlet" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpInlet" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpInlet" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtDC" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtDC" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtDC" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtAC" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtAC" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtAC" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="Dir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Dir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Dir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdSpd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdSpd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdDir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdDir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="ExTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="ExTmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="ExTmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecLumLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecLumLev" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecLumLev" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Vis" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Vis" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Vis" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Ice" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Ice" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Ice" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispXdir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispXdir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispXdir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispYdir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispYdir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispYdir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="YwSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YwSpd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YwSpd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="Tmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="Tmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="Tmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YawAng" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YawAng" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YawAng" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="CabWup" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="CabWup" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="CabWup" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="SysGsLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="SysGsLev" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="SysGsLev" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="BrkPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="BrkPres" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="BrkPres" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="TrmTmpShfBrg1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg1" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg1" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg2" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg2" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpGbxOil" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpGbxOil" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpGbxOil" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrk" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrk" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrk" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx1" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx1" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx2" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx2" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GsLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GsLev" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GsLev" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilLev" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilLev" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilPres" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilPres" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="BrkHyPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="BrkHyPres" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="BrkHyPres" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="OfFlt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="OfFlt" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="OfFlt" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="InlFlt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="InlFlt" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="InlFlt" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="Hz" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Hz" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Hz" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Torq" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Torq" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Torq" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGn" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGn" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGn" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpDclink" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpDclink" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpDclink" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGri" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGri" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGri" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclVol" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclVol" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclVol" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclAmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclAmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclAmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="LiftPos" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="LiftPos" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="LiftPos" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="MetAlt1Alt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Alt" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Alt" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdSpd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdSpd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdSpd" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdSpd" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdDir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdDir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdDir" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdDir" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Tmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Tmp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Tmp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Hum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Hum" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Hum" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Pres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Pres" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Pres" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="TrfTmpTrfTur" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfTur" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfTur" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfGri" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfGri" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfGri" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="PlWCap" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWCap" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWCap" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlW" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlW" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlW" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVA" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVA" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVA" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlGra" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlGra" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlGra" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWDel" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWDel" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWDel" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVAr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVAr" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVAr" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapImp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapImp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapImp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapExp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapExp" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapExp" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlPF" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlPF" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlPF" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlV" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlV" lnInst="1" daName="range" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlV" lnInst="1" daName="q" ldInst="W1" fc="MX" lnClass="WRPC"/>
      </DataSet>
      <DataSet desc="Data set of all logged (historical) turbine three phase time series " name="TurPhLog "/>
      <DataSet desc="Data set of all logged (historical) turbine set points. High accessprotected. " name="HiAcsSp "/>
      <DataSet desc="Data set of all logged (historical) turbine set points. Low accessprotected. " name="LoAcsSp "/>
      <DataSet desc="Data set of all transient log triggered at emergency shut down " name="TrgEmgStop "/>
      <DataSet desc="Data set of all transient turbine loggings." name="TrgProdGri "/>
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WREP" lnClass="WREP">
      <DataSet desc="模拟量" name="TurRpCh">
       <FCDA prefix="" doName="YwSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="Tmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="YawAng" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="CabWup" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="SysGsLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="BrkPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WYAW"/>
       <FCDA prefix="" doName="TrmTmpShfBrg1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrg2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpGbxOil" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="TrmTmpShfBrk" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="VibGbx2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GsLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="GbxOilPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="BrkHyPres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="InlFlt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="OfFlt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRM"/>
       <FCDA prefix="" doName="Hz" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="Torq" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpDclink" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGn" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="CnvTmpGri" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclVol" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="DclAmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="LiftPos" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTOW"/>
       <FCDA prefix="" doName="MetAlt1Alt" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1HorWdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1VerWdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Tmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Hum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="MetAlt1Pres" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WMET"/>
       <FCDA prefix="" doName="TrfTmpTrfTur" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTmpTrfGri" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="PlWCap" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlW" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVA" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlGra" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlWDel" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WAPC"/>
       <FCDA prefix="" doName="PlVAr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapImp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlVArCapExp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlPF" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="PlV" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WRPC"/>
       <FCDA prefix="" doName="Dir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="WdDir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="ExTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="IntlHum" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecLumLev" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Vis" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Ice" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispXdir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="DispYdir" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WNAC"/>
       <FCDA prefix="" doName="Spd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpSta" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpRtr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnTmpInlet" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtDC" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrExtAC" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RotSpd" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="RotPos" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="HubTmp" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtHyPresBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngSpBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl1" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl2" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="PtAngValBl3" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WROT"/>
       <FCDA prefix="" doName="W" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTUR"/>
       <FCDA prefix="" doName="VAr" lnInst="1" daName="mag.f" ldInst="W1" fc="MX" lnClass="WTUR"/>
      </DataSet>
      <DataSet desc="设备运行持续时间" name="TurRpTm">
       <FCDA prefix="" doName="BecTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WNAC"/>
       <FCDA prefix="" doName="BecTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WNAC"/>
       <FCDA prefix="" doName="CwTm" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CwTm" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CwTm" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CwTm" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CcwTm" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CcwTm" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CcwTm" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="CcwTm" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WYAW"/>
       <FCDA prefix="" doName="TrfOpTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfOpTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfOpTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfOpTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTRF"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WCNV"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WCNV"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WCNV"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WCNV"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WGEN"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WGEN"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WGEN"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WGEN"/>
       <FCDA prefix="" doName="AvlTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="AvlTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="AvlTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="AvlTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="OpTmRs" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
      </DataSet>
      <DataSet desc="事件计数" name="TurRpCt">
       <FCDA prefix="" doName="StrCnt" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StrCnt" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StrCnt" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StrCnt" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StopCnt" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StopCnt" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StopCnt" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="StopCnt" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotWh" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotWh" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotWh" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotWh" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotVArh" lnInst="1" daName="dly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotVArh" lnInst="1" daName="mly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotVArh" lnInst="1" daName="yly" ldInst="W1" fc="ST" lnClass="WTUR"/>
       <FCDA prefix="" doName="TotVArh" lnInst="1" daName="tot" ldInst="W1" fc="ST" lnClass="WTUR"/>
      </DataSet>
      <DataSet desc="三相电流电压" name="TurRpWy">
       <FCDA prefix="" doName="StaPhV.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="StaPhV.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="StaPhV.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="StaA.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="StaA.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="StaA.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrPhV.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrPhV.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrPhV.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrA.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrA.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="RtrA.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WGEN"/>
       <FCDA prefix="" doName="GnPhV.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="GnPhV.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="GnPhV.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="GnA.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="GnA.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="GnA.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WCNV"/>
       <FCDA prefix="" doName="TrfTurPhV.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTurPhV.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTurPhV.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTurA.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTurA.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfTurA.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriPhV.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriPhV.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriPhV.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriA.phsA" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriA.phsB" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
       <FCDA prefix="" doName="TrfGriA.phsC" lnInst="1" daName="cVal" ldInst="W1" fc="MX" lnClass="WTRF"/>
      </DataSet>
      <ReportControl desc="" bufTime="1000" confRev="1" rptID="W1/WREP1$RP$brcbTurRpCh" intgPd="0" datSet="TurRpCh" name="brcbTurRpCh" buffered="false">
       <TrgOps qchg="false" period="true" dupd="false" dchg="true"/>
       <OptFields configRef="false" dataSet="true" reasonCode="true" segmentation="false" entryID="false" bufOvfl="false" seqNum="true" timeStamp="false" dataRef="false"/>
       <RptEnabled max="8"/>
      </ReportControl>
      <ReportControl desc="" bufTime="1000" confRev="1" rptID="W1/WREP1$BR$brcbTurRpTm" intgPd="5000" datSet="TurRpTm" name="brcbTurRpTm" buffered="true">
       <TrgOps qchg="false" period="true" dupd="false" dchg="true"/>
       <OptFields configRef="true" dataSet="true" reasonCode="true" segmentation="false" entryID="true" bufOvfl="false" seqNum="true" timeStamp="true" dataRef="true"/>
       <RptEnabled max="1"/>
      </ReportControl>
      <ReportControl desc="" bufTime="1000" confRev="1" rptID="W1/WREP1$BR$brcbTurRpCt" intgPd="5000" datSet="TurRpCt" name="brcbTurRpCt" buffered="true">
       <TrgOps qchg="false" period="true" dupd="false" dchg="true"/>
       <OptFields configRef="true" dataSet="true" reasonCode="true" segmentation="false" entryID="true" bufOvfl="false" seqNum="true" timeStamp="true" dataRef="true"/>
       <RptEnabled max="1"/>
      </ReportControl>
      <ReportControl desc="" bufTime="1000" confRev="1" rptID="W1/WREP1$BR$brcbTurRpCt" intgPd="5000" datSet="TurRpWy" name="brcbTurRpWy" buffered="true">
       <TrgOps qchg="false" period="true" dupd="false" dchg="true"/>
       <OptFields configRef="true" dataSet="true" reasonCode="true" segmentation="false" entryID="true" bufOvfl="false" seqNum="true" timeStamp="true" dataRef="false"/>
       <RptEnabled max="1"/>
      </ReportControl>
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WAPC" lnClass="WAPC">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="风力发电厂有功功率输出能力" name="PlWCap">
       <DAI name="dU">
        <Val>风力发电厂有功功率输出能力</Val>
       </DAI>
      </DOI>
      <DOI desc="风电场有功功率输出" name="PlW">
       <DAI name="dU">
        <Val>风电场有功功率输出</Val>
       </DAI>
      </DOI>
      <DOI desc="风电场有功功率输出" name="PlVA">
       <DAI name="dU">
        <Val>风电场有功功率输出</Val>
       </DAI>
      </DOI>
      <DOI desc="风力发电厂视在功率" name="PlGra">
       <DAI name="dU">
        <Val>风力发电厂视在功率</Val>
       </DAI>
      </DOI>
      <DOI desc="利用Delta函数的风电场有功备用-有功发电能力与有功功率的差异" name="PlWDel">
       <DAI name="dU">
        <Val>利用Delta函数的风电场有功备用-有功发电能力与有功功率的差异</Val>
       </DAI>
      </DOI>
      <DOI desc="设置风电场有功功率输出参考值" name="SetPlW">
       <SDI desc="设置点或参数的需求值" name="actVal">
        <SDI name="ctlVal">
         <DAI name="f"/>
        </SDI>
        <SDI name="origin">
         <DAI name="orCat"/>
         <DAI name="orIdent"/>
        </SDI>
        <SDI name="mxVal">
         <DAI name="f"/>
        </SDI>
        <DAI name="q"/>
        <DAI name="t"/>
        <DAI name="ctlModel"/>
       </SDI>
      </DOI>
     </LN>
     <LN inst="1" lnType="WPP_WRPC" lnClass="WRPC">
      <DOI desc="逻辑节点铭牌" name="NamPlt">
       <DAI name="vendor" valKind="RO">
        <Val>SHR Power Automation</Val>
       </DAI>
       <DAI name="swRev">
        <Val>ConfigVer1.00</Val>
       </DAI>
      </DOI>
      <DOI desc="模式" name="Mod">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
       <DAI name="ctlModel" valKind="RO">
        <Val>status-only</Val>
       </DAI>
      </DOI>
      <DOI desc="行为" name="Beh">
       <DAI name="stVal">
        <Val>on</Val>
       </DAI>
      </DOI>
      <DOI desc="健康状态" name="Health">
       <DAI name="stVal">
        <Val>Ok</Val>
       </DAI>
      </DOI>
      <DOI desc="风电场无功输出" name="PlVAr">
       <DAI name="dU">
        <Val>风电场无功输出</Val>
       </DAI>
      </DOI>
      <DOI desc="风电场无功输入(需求)能力" name="PlVArCapImp">
       <DAI name="dU">
        <Val>风电场无功输入(需求)能力</Val>
       </DAI>
      </DOI>
      <DOI desc="风电场无功输出(供电)能力" name="PlVArCapExp">
       <DAI name="dU">
        <Val>风电场无功输出(供电)能力</Val>
       </DAI>
      </DOI>
      <DOI desc="风力发电厂实际功率因数" name="PlPF">
       <DAI name="dU">
        <Val>风力发电厂实际功率因数</Val>
       </DAI>
      </DOI>
      <DOI desc="风力发电厂外部电网连接点的输出电压" name="PlV">
       <DAI name="dU">
        <Val>风力发电厂外部电网连接点的输出电压</Val>
       </DAI>
      </DOI>
     </LN>
    </LDevice>
   </Server>
  </AccessPoint>
 </IED>
 <DataTypeTemplates>
  <LNodeType id="WPP_W1_LLN0" lnClass="LLN0">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_SPS" name="Loc"/>
   <DO type="CN_INS_Health" name="EEHealth"/>
   <DO type="CN_WDPL" name="EEName"/>
   <DO type="CN_INS" name="OpCntRs"/>
   <DO type="CN_INS" name="OpCnt"/>
   <DO type="CN_INS" name="OpTmh"/>
   <DO type="CN_SPS" name="CalcExp"/>
   <DO type="CN_SPC" name="CalcStr"/>
   <DO type="CN_ING_SP_EX" name="CalcMthd"/>
   <DO type="CN_ING_SP_EX" name="CalcPer"/>
   <DO type="CN_ORG" name="CalcSrc"/>
  </LNodeType>
  <LNodeType id="WPP_LPHD" lnClass="LPHD">
   <DO type="CN_WDPL" name="PhyNam"/>
   <DO type="CN_INS_PhyHealth" name="PhyHealth"/>
   <DO type="CN_SPS" name="OutOv"/>
   <DO type="CN_SPS" name="Proxy"/>
   <DO type="CN_SPS" name="InOv"/>
   <DO type="CN_INS" name="NumPwrUp"/>
   <DO type="CN_INS" name="WrmStr"/>
   <DO type="CN_INS" name="WacTrg"/>
   <DO type="CN_SPS" name="PwrUp"/>
   <DO type="CN_SPS" name="PwrDn"/>
   <DO type="CN_SPS" name="PwrSupAlm"/>
   <DO type="CN_SPC" name="RsStat"/>
  </LNodeType>
  <LNodeType id="WPP_WYAW" lnClass="WYAW">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="CwTm"/>
   <DO type="CN_TMS" name="CcwTm"/>
   <DO type="CN_STV_YwSt" name="YwSt"/>
   <DO type="CN_STV_YwBrakeSt" name="YwBrakeSt"/>
   <DO type="CN_MV" name="YwSpd"/>
   <DO type="CN_MV" name="Tmp"/>
   <DO type="CN_MV" name="YawAng"/>
   <DO type="CN_MV" name="CabWup"/>
   <DO type="CN_MV" name="SysGsLev"/>
   <DO type="CN_MV" name="BrkPres"/>
   <DO type="CN_CMD_AtvYw" name="AtvYw"/>
  </LNodeType>
  <LNodeType id="WPP_WNAC" lnClass="WNAC">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="BecTmRs"/>
   <DO type="CN_STV_BecBulbSt" name="BecBulbSt"/>
   <DO type="CN_STV_WdHtSt" name="WdHtSt"/>
   <DO type="CN_STV_IceSt" name="IceSt"/>
   <DO type="CN_STV_AneSt" name="AneSt"/>
   <DO type="CN_MV" name="Dir"/>
   <DO type="CN_MV" name="WdSpd"/>
   <DO type="CN_MV" name="WdDir"/>
   <DO type="CN_MV" name="ExTmp"/>
   <DO type="CN_MV" name="IntlTmp"/>
   <DO type="CN_MV" name="IntlHum"/>
   <DO type="CN_MV" name="BecLumLev"/>
   <DO type="CN_MV" name="Vis"/>
   <DO type="CN_MV" name="Ice"/>
   <DO type="CN_MV" name="DispXdir"/>
   <DO type="CN_MV" name="DispYdir"/>
   <DO type="CN_CMD_SetBecMod" name="SetBecMod"/>
   <DO type="CN_SPV" name="SetBecLev"/>
   <DO type="CN_SPV" name="SetFlsh"/>
  </LNodeType>
  <LNodeType id="WPP_WTRF" lnClass="WTRF">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="TrfOpTmRs"/>
   <DO type="CN_STV_TrfClSt" name="TrfClSt"/>
   <DO type="CN_STV" name="OilLevSt"/>
   <DO type="CN_STV_MTPresSt" name="MTPresSt"/>
   <DO type="SHR_DEL" name="TrfTurPPV"/>
   <DO type="SHR_WYE" name="TrfTurPhV"/>
   <DO type="SHR_WYE" name="TrfTurA"/>
   <DO type="SHR_DEL" name="TrfGriPPV"/>
   <DO type="SHR_WYE" name="TrfGriPhV"/>
   <DO type="SHR_WYE" name="TrfGriA"/>
   <DO type="CN_MV" name="TrfTmpTrfTur"/>
   <DO type="CN_MV" name="TrfTmpTrfGri"/>
   <DO type="CN_CMD_AtvGriSw" name="AtvGriSw"/>
  </LNodeType>
  <LNodeType id="WPP_WCNV" lnClass="WCNV">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="OpTmRs"/>
   <DO type="CN_STV_CnvOpMod" name="CnvOpMod"/>
   <DO type="CN_STV_ClSt" name="ClSt"/>
   <DO type="CN_MV" name="Hz"/>
   <DO type="CN_MV" name="Torq"/>
   <DO type="SHR_DEL" name="GnPPV"/>
   <DO type="SHR_WYE" name="GnPhV"/>
   <DO type="SHR_WYE" name="GnA"/>
   <DO type="SHR_WYE" name="GnPF"/>
   <DO type="SHR_DEL" name="GriPPV"/>
   <DO type="SHR_WYE" name="GriPhV"/>
   <DO type="SHR_WYE" name="GriA"/>
   <DO type="SHR_WYE" name="GriPF"/>
   <DO type="CN_MV" name="CnvTmpGn"/>
   <DO type="CN_MV" name="CnvTmpDclink"/>
   <DO type="CN_MV" name="CnvTmpGri"/>
   <DO type="CN_MV" name="DclVol"/>
   <DO type="CN_MV" name="DclAmp"/>
  </LNodeType>
  <LNodeType id="WPP_WGEN" lnClass="WGEN">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="OpTmRs"/>
   <DO type="CN_STV_GnOpMod" name="GnOpMod"/>
   <DO type="CN_STV_GnClSt" name="ClSt"/>
   <DO type="CN_MV" name="Spd"/>
   <DO type="SHR_WYE" name="W"/>
   <DO type="SHR_WYE" name="Var"/>
   <DO type="CN_MV" name="GnTmpSta"/>
   <DO type="CN_MV" name="GnTmpRtr"/>
   <DO type="CN_MV" name="GnTmpInlet"/>
   <DO type="SHR_DEL" name="StaPPV"/>
   <DO type="SHR_WYE" name="StaPhV"/>
   <DO type="SHR_WYE" name="StaA"/>
   <DO type="SHR_DEL" name="RtrPPV"/>
   <DO type="SHR_WYE" name="RtrPhV"/>
   <DO type="SHR_WYE" name="RtrA"/>
   <DO type="CN_MV" name="RtrExtDC"/>
   <DO type="CN_MV" name="RtrExtAC"/>
  </LNodeType>
  <LNodeType id="WPP_WTRM" lnClass="WTRM">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_STV_BrkOpMod" name="BrkOpMod"/>
   <DO type="CN_STV_LuSt" name="LuSt"/>
   <DO type="CN_STV_FtrSt" name="FtrSt"/>
   <DO type="CN_STV_ClSt" name="ClSt"/>
   <DO type="CN_STV_HtSt" name="HtSt"/>
   <DO type="CN_STV_OilLevSt" name="OilLevSt"/>
   <DO type="CN_STV_OfFltSt" name="OfFltSt"/>
   <DO type="CN_STV_InlFltSt" name="InlFltSt"/>
   <DO type="CN_MV" name="TrmTmpShfBrg1"/>
   <DO type="CN_MV" name="TrmTmpShfBrg2"/>
   <DO type="CN_MV" name="TrmTmpGbxOil"/>
   <DO type="CN_MV" name="TrmTmpShfBrk"/>
   <DO type="CN_MV" name="VibGbx1"/>
   <DO type="CN_MV" name="VibGbx2"/>
   <DO type="CN_MV" name="GsLev"/>
   <DO type="CN_MV" name="GbxOilLev"/>
   <DO type="CN_MV" name="GbxOilPres"/>
   <DO type="CN_MV" name="BrkHyPres"/>
   <DO type="CN_MV" name="OfFlt"/>
   <DO type="CN_MV" name="InlFlt"/>
  </LNodeType>
  <LNodeType id="WPP_WROT" lnClass="WROT">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_STV_RotSt" name="RotSt"/>
   <DO type="CN_STV_BlSt" name="BlStBl1"/>
   <DO type="CN_STV_BlSt" name="BlStBl2"/>
   <DO type="CN_STV_BlSt" name="BlStBl3"/>
   <DO type="CN_STV_PtCtlSt" name="PtCtlSt"/>
   <DO type="CN_MV" name="RotSpd"/>
   <DO type="CN_MV" name="RotPos"/>
   <DO type="CN_MV" name="HubTmp"/>
   <DO type="CN_MV" name="PtHyPresBl1"/>
   <DO type="CN_MV" name="PtHyPresBl2"/>
   <DO type="CN_MV" name="PtHyPresBl3"/>
   <DO type="CN_MV" name="PtAngSpBl1"/>
   <DO type="CN_MV" name="PtAngSpBl2"/>
   <DO type="CN_MV" name="PtAngSpBl3"/>
   <DO type="CN_MV" name="PtAngValBl1"/>
   <DO type="CN_MV" name="PtAngValBl2"/>
   <DO type="CN_MV" name="PtAngValBl3"/>
   <DO type="CN_CMD_BlkRot" name="BlkRot"/>
   <DO type="CN_CMD_PtEmgChk" name="PtEmgChk"/>
  </LNodeType>
  <LNodeType id="WPP_WTUR" lnClass="WTUR">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_TMS" name="AvlTmRs"/>
   <DO type="CN_TMS" name="OpTmRs"/>
   <DO type="CN_CTE" name="StrCnt"/>
   <DO type="CN_CTE" name="StopCnt"/>
   <DO type="CN_CTE" name="TotWh"/>
   <DO type="CN_CTE" name="TotVArh"/>
   <DO type="CN_BCR" name="DmdWh"/>
   <DO type="CN_BCR" name="DmdVArh"/>
   <DO type="CN_BCR" name="SupWh"/>
   <DO type="CN_BCR" name="SupVArh"/>
   <DO type="CN_STV_TurSt" name="TurSt"/>
   <DO type="CN_MV" name="W"/>
   <DO type="CN_MV" name="VAr"/>
   <DO type="CN_CMD_SetTurOp" name="SetTurOp"/>
   <DO type="CN_CMD" name="VArOvW"/>
   <DO type="CN_CMD" name="VArRefPri"/>
   <DO type="CN_SPV" name="DmdW"/>
   <DO type="CN_SPV" name="DmdVAr"/>
   <DO type="CN_SPV" name="DmdPF"/>
  </LNodeType>
  <LNodeType id="WPP_WTOW" lnClass="WTOW">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_STV_LiftSt" name="LiftSt"/>
   <DO type="CN_STV_DehumSt" name="DehumSt"/>
   <DO type="CN_STV_HtexSt" name="HtexSt"/>
   <DO type="CN_MV" name="LiftPos"/>
   <DO type="CN_MV" name="IntlHum"/>
  </LNodeType>
  <LNodeType id="WPP_WMET" lnClass="WMET">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_MV" name="MetAlt1Alt"/>
   <DO type="CN_MV" name="MetAlt1HorWdSpd"/>
   <DO type="CN_MV" name="MetAlt1VerWdSpd"/>
   <DO type="CN_MV" name="MetAlt1HorWdDir"/>
   <DO type="CN_MV" name="MetAlt1VerWdDir"/>
   <DO type="CN_MV" name="MetAlt1Tmp"/>
   <DO type="CN_MV" name="MetAlt1Hum"/>
   <DO type="CN_MV" name="MetAlt1Pres"/>
  </LNodeType>
  <LNodeType id="WPP_WALM" lnClass="WALM">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_ASS" name="AlmSt"/>
   <DO type="CN_TMS" name="EvtTm"/>
  </LNodeType>
  <LNodeType id="WPP_WAPC" lnClass="WAPC">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_INS" name="NumOpTur"/>
   <DO type="CN_STV" name="PlWLimEn"/>
   <DO type="CN_STV" name="PlVAEn"/>
   <DO type="CN_STV" name="PlGraEn"/>
   <DO type="CN_STV" name="PlDelEn"/>
   <DO type="CN_MV" name="PlWCap"/>
   <DO type="CN_MV" name="PlW"/>
   <DO type="CN_MV" name="PlVA"/>
   <DO type="CN_MV" name="PlGra"/>
   <DO type="CN_MV" name="PlWDel"/>
   <DO type="CN_CMD" name="PlWAtv"/>
   <DO type="CN_CMD" name="PlVAAtv"/>
   <DO type="CN_CMD" name="PlGraAtv"/>
   <DO type="CN_CMD" name="PlDelAtv"/>
   <DO type="CN_SPV" name="SetPlW"/>
   <DO type="CN_SPV" name="SetPlVA"/>
   <DO type="CN_SPV" name="SetPlWUpGra"/>
   <DO type="CN_SPV" name="SetPlWDoGra"/>
   <DO type="CN_SPV" name="SetPlDel"/>
  </LNodeType>
  <LNodeType id="WPP_WRPC" lnClass="WRPC">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
   <DO type="CN_INS" name="NumOpTur"/>
   <DO type="CN_STV" name="PlVArMode"/>
   <DO type="CN_MV" name="PlVAr"/>
   <DO type="CN_MV" name="PlVArCapImp"/>
   <DO type="CN_MV" name="PlVArCapExp"/>
   <DO type="CN_MV" name="PlPF"/>
   <DO type="CN_MV" name="PlV"/>
   <DO type="CN_CMD" name="PlVArAtv"/>
   <DO type="CN_SPV" name="SetPlVAr"/>
   <DO type="CN_SPV" name="SetPlVArUpGra"/>
   <DO type="CN_SPV" name="SetPlVArDoGra"/>
   <DO type="CN_SPV" name="SetPlV"/>
   <DO type="CN_SPV" name="SetPlVUpGra"/>
   <DO type="CN_SPV" name="SetPlVDoGra"/>
   <DO type="CN_SPV" name="SetPlDrp"/>
   <DO type="CN_SPV" name="SetPlPF"/>
  </LNodeType>
  <LNodeType id="WPP_WSLG" lnClass="WSLG">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
  </LNodeType>
  <LNodeType id="WPP_WALG" lnClass="WALG">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
  </LNodeType>
  <LNodeType id="WPP_WREP" lnClass="WREP">
   <DO type="CN_LPL" name="NamPlt"/>
   <DO type="CN_INC_Mod" name="Mod"/>
   <DO type="CN_INS_Beh" name="Beh"/>
   <DO type="CN_INS_Health" name="Health"/>
  </LNodeType>
  <DOType id="CN_ASS" cdc="ASS">
   <DA bType="Enum" type="AssSt" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="INT16U" name="numAlm" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_BCR" cdc="BCR">
   <DA bType="INT64" name="actVal" fc="ST"/>
   <DA bType="INT64" name="frVal" fc="ST"/>
   <DA bType="TimeStamp" name="frTm" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="TimeStamp" name="t" fc="ST"/>
   <DA bType="Struct" type="CN_units" name="units" fc="CF"/>
   <DA bType="FLOAT32" name="pulsQty" fc="CF"/>
   <DA bType="BOOLEAN" name="frEna" fc="CF"/>
   <DA bType="TimeStamp" name="strTm" fc="CF"/>
   <DA bType="INT32" name="frPd" fc="CF"/>
   <DA bType="BOOLEAN" name="frRs" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_CTE" cdc="CTE">
   <SDO type="CN_SPC_manRs" name="manRs"/>
   <SDO type="CN_INC_hisRs" name="hisRs"/>
   <SDO type="CN_INS_actVal" name="actCtVal"/>
   <SDO type="CN_INS_oldVal" name="oldCtVal"/>
   <DA bType="INT32U" name="ctTot" fc="ST" dchg="true"/>
   <DA bType="INT32U" name="dly" fc="ST" dchg="true"/>
   <DA bType="INT32U" name="mly" fc="ST" dchg="true"/>
   <DA bType="INT32U" name="yly" fc="ST" dchg="true"/>
   <DA bType="INT32U" name="tot" fc="ST"/>
   <DA bType="Enum" type="rsPer" name="rsPer" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_CMD" cdc="CMD">
   <SDO type="CN_INC_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
  </DOType>
  <DOType id="CN_MV" cdc="MV">
   <DA bType="Struct" type="CN_AnalogueValue" name="mag" fc="MX"/>
   <DA bType="Enum" type="range" name="range" fc="MX"/>
   <DA bType="Quality" name="q" fc="MX"/>
   <DA bType="Timestamp" name="t" fc="MX"/>
   <DA bType="BOOLEAN" name="subEna" fc="SV"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="subMag" fc="SV"/>
   <DA bType="Quality" name="subQ" fc="SV"/>
   <DA bType="VisString64" name="subID" fc="SV"/>
   <DA bType="Struct" type="CN_units" name="units" fc="CF"/>
   <DA bType="INT32U" name="db" fc="CF"/>
   <DA bType="INT32U" name="zeroDb" fc="CF"/>
   <DA bType="Struct" type="CN_ScaledValueConfig" name="sVC" fc="CF"/>
   <DA bType="Struct" type="CN_RangeConfig" name="rangeC" fc="CF"/>
   <DA bType="INT32U" name="smpRate" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_INC" cdc="INC">
   <DA bType="INT32" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_Mod" cdc="INC">
   <DA bType="Enum" type="Mod" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_ING_SP_EX" cdc="ING">
   <DA bType="INT32" name="setVal" fc="SP"/>
   <DA bType="INT32" name="minVal" fc="CF"/>
   <DA bType="INT32" name="maxVal" fc="CF"/>
   <DA bType="INT32U" name="stepSize" fc="CF"/>
   <DA bType="Struct" type="CN_units" name="units" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
   <DA bType="VisString255" name="dataNs" fc="EX">
    <Val>SGCC: 2009</Val>
   </DA>
  </DOType>
  <DOType id="CN_INS_Beh" cdc="INS">
   <DA bType="Enum" type="Beh" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_Health" cdc="INS">
   <DA bType="Enum" type="Health" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_PhyHealth" cdc="INS">
   <DA bType="Enum" type="PhyHealth" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="subEna" fc="SV"/>
   <DA bType="INT32" name="subVal" fc="SV"/>
   <DA bType="Quality" name="subQ" fc="SV"/>
   <DA bType="VisString64" name="subID" fc="SV"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_LPL" cdc="LPL">
   <DA bType="VisString255" name="vendor" fc="DC"/>
   <DA bType="VisString255" name="swRev" fc="DC"/>
   <DA bType="VisString255" name="d" fc="DC"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_ORG" cdc="ORG">
   <DA bType="VisString255" name="setSrcRef" fc="SP"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_SPC" cdc="SPC">
   <DA bType="Struct" type="CN_SBOw_Oper_SDPC" name="SBOw" fc="CO"/>
   <DA bType="Struct" type="CN_SBOw_Oper_SDPC" name="Oper" fc="CO"/>
   <DA bType="Struct" type="CN_Cancel_SDPC" name="Cancel" fc="CO"/>
   <DA bType="BOOLEAN" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="subEna" fc="SV"/>
   <DA bType="BOOLEAN" name="subVal" fc="SV"/>
   <DA bType="Quality" name="subQ" fc="SV"/>
   <DA bType="VisString64" name="subID" fc="SV"/>
   <DA bType="Struct" type="CN_PulseConfig" name="pulseConfig" fc="CF"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_SPS" cdc="SPS">
   <DA bType="BOOLEAN" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="subEna" fc="SV"/>
   <DA bType="BOOLEAN" name="subVal" fc="SV"/>
   <DA bType="Quality" name="subQ" fc="SV"/>
   <DA bType="VisString64" name="subID" fc="SV"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_SPV" cdc="SPV">
   <SDO type="CN_SPC_chaManRs" name="chaManRs"/>
   <SDO type="CN_APC_actVal" name="actVal"/>
   <SDO type="CN_APC_oldVal" name="oldVal"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="minMxVal" fc="MX"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="maxMxVal" fc="MX"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="totAvVal" fc="MX"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="sdvVal" fc="MX"/>
   <DA bType="Struct" type="CN_units" name="units" fc="CF"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="minVal" fc="CF"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="maxVal" fc="CF"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="incRate" fc="CF"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="decRate" fc="CF"/>
   <DA bType="Enum" type="spAcs" name="spAcs" fc="CF"/>
   <DA bType="Enum" type="chaPerRs" name="chaPerRs" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_STV" cdc="STV">
   <SDO type="CN_INS_actSt" name="actSt"/>
   <SDO type="CN_INS_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_TMS" cdc="TMS">
   <SDO type="CN_SPC_manRs" name="manRs"/>
   <SDO type="CN_INC_hisRs" name="hisRs"/>
   <SDO type="CN_INS_actVal" name="actTmVal"/>
   <SDO type="CN_INS_oldVal" name="oldTmVal"/>
   <DA bType="INT32U" name="tmTot" fc="ST"/>
   <DA bType="INT32U" name="dly" fc="ST"/>
   <DA bType="INT32U" name="mly" fc="ST"/>
   <DA bType="INT32U" name="yly" fc="ST"/>
   <DA bType="INT32U" name="tot" fc="ST"/>
   <DA bType="Enum" type="rsPer" name="rsPer" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_WDPL" cdc="WDPL">
   <DA bType="VisString255" name="vendor" fc="DC"/>
   <DA bType="VisString255" name="hwRev" fc="DC"/>
   <DA bType="VisString255" name="swRev" fc="DC"/>
   <DA bType="VisString255" name="serNum" fc="DC"/>
   <DA bType="VisString255" name="model" fc="DC"/>
   <DA bType="VisString255" name="location" fc="DC"/>
   <DA bType="VisString255" name="cdcNs" fc="EX"/>
   <DA bType="VisString255" name="cdcName" fc="EX"/>
   <DA bType="VisString255" name="dataNs" fc="EX"/>
   <DA bType="INT16" name="tmOffset" fc="DC"/>
   <DA bType="BOOLEAN" name="tmUseDT" fc="DC"/>
   <DA bType="BOOLEAN" name="tmDT" fc="DC"/>
   <DA bType="BOOLEAN" name="tmAutoDT" fc="DC"/>
   <DA bType="VisString255" name="tmTZ" fc="DC"/>
   <DA bType="VisString32" name="tmLang" fc="DC"/>
   <DA bType="VisString32" name="tmCountry" fc="DC"/>
   <DA bType="BOOLEAN" name="stDT" fc="ST"/>
   <DA bType="VisString255" name="d" fc="DC"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="SHR_CMV" cdc="CMV">
   <DA bType="Struct" type="CN_Vector" name="cVal" fc="MX"/>
   <DA bType="Enum" type="range" name="range" fc="MX"/>
   <DA bType="Quality" name="q" fc="MX"/>
   <DA bType="Timestamp" name="t" fc="MX"/>
   <DA bType="BOOLEAN" name="subEna" fc="SV"/>
   <DA bType="Struct" type="CN_Vector" name="subCVal" fc="SV"/>
   <DA bType="Quality" name="subQ" fc="SV"/>
   <DA bType="VisString64" name="subID" fc="SV"/>
   <DA bType="Struct" type="CN_units" name="units" fc="CF"/>
   <DA bType="INT32U" name="db" fc="CF"/>
   <DA bType="INT32U" name="zeroDb" fc="CF"/>
   <DA bType="INT32U" name="dbAng" fc="CF"/>
   <DA bType="Struct" type="CN_RangeConfig" name="rangeC" fc="CF"/>
   <DA bType="Struct" type="CN_ScaledValueConfig" name="magSVC" fc="CF"/>
   <DA bType="Struct" type="CN_ScaledValueConfig" name="angSVC" fc="CF"/>
   <DA bType="Enum" type="angidCMV" name="angRef" fc="CF"/>
   <DA bType="INT32U" name="smpRate" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="SHR_DEL" cdc="DEL">
   <SDO type="SHR_CMV" name="phsAB"/>
   <SDO type="SHR_CMV" name="phsBC"/>
   <SDO type="SHR_CMV" name="phsCA"/>
   <DA bType="Enum" type="angid" name="angRef" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="SHR_WYE" cdc="WYE">
   <SDO type="SHR_CMV" name="phsA"/>
   <SDO type="SHR_CMV" name="phsB"/>
   <SDO type="SHR_CMV" name="phsC"/>
   <SDO type="SHR_CMV" name="neut"/>
   <DA bType="Enum" type="angid" name="angRef" fc="CF"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
  </DOType>
  <DOType id="CN_SPC_chaManRs" cdc="SPC">
   <DA bType="BOOLEAN" name="ctlVal" fc="CO"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="BOOLEAN" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_APC_actVal" cdc="APC">
   <DA bType="Struct" type="CN_AnalogueValue" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="MX"/>
   <DA bType="Timestamp" name="operTm" fc="CO"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="mxVal" fc="MX" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="MX"/>
   <DA bType="Timestamp" name="t" fc="MX"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_APC_oldVal" cdc="APC">
   <DA bType="Struct" type="CN_AnalogueValue" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="MX"/>
   <DA bType="Timestamp" name="operTm" fc="CO"/>
   <DA bType="Struct" type="CN_AnalogueValue" name="mxVal" fc="MX" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="MX"/>
   <DA bType="Timestamp" name="t" fc="MX"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_actSt" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_oldSt" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_YwBrakeSt_actSt" cdc="INS">
   <DA bType="Enum" type="YwBrakeSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_YwBrakeSt_oldSt" cdc="INS">
   <DA bType="Enum" type="YwBrakeSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_YwBrakeSt" cdc="STV">
   <SDO type="CN_INS_YwBrakeSt_actSt" name="actSt"/>
   <SDO type="CN_INS_YwBrakeSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_YwSt_actSt" cdc="INS">
   <DA bType="Enum" type="YwSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_YwSt_oldSt" cdc="INS">
   <DA bType="Enum" type="YwSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_YwSt" cdc="STV">
   <SDO type="CN_INS_YwSt_actSt" name="actSt"/>
   <SDO type="CN_INS_YwSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_AneSt_actSt" cdc="INS">
   <DA bType="Enum" type="AneSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_AneSt_oldSt" cdc="INS">
   <DA bType="Enum" type="AneSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_AneSt" cdc="STV">
   <SDO type="CN_INS_AneSt_actSt" name="actSt"/>
   <SDO type="CN_INS_AneSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_BecBulbSt_actSt" cdc="INS">
   <DA bType="Enum" type="BecBulbSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_BecBulbSt_oldSt" cdc="INS">
   <DA bType="Enum" type="BecBulbSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_BecBulbSt" cdc="STV">
   <SDO type="CN_INS_BecBulbSt_actSt" name="actSt"/>
   <SDO type="CN_INS_BecBulbSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_BlSt_actSt" cdc="INS">
   <DA bType="Enum" type="BlSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_BlSt_oldSt" cdc="INS">
   <DA bType="Enum" type="BlSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_BlSt" cdc="STV">
   <SDO type="CN_INS_BlSt_actSt" name="actSt"/>
   <SDO type="CN_INS_BlSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_BrkOpMod_actSt" cdc="INS">
   <DA bType="Enum" type="BrkOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_BrkOpMod_oldSt" cdc="INS">
   <DA bType="Enum" type="BrkOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_BrkOpMod" cdc="STV">
   <SDO type="CN_INS_BrkOpMod_actSt" name="actSt"/>
   <SDO type="CN_INS_BrkOpMod_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_ClSt_actSt" cdc="INS">
   <DA bType="Enum" type="ClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_ClSt_oldSt" cdc="INS">
   <DA bType="Enum" type="ClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_ClSt" cdc="STV">
   <SDO type="CN_INS_ClSt_actSt" name="actSt"/>
   <SDO type="CN_INS_ClSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_GnClSt_actSt" cdc="INS">
   <DA bType="Enum" type="GnClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_GnClSt_oldSt" cdc="INS">
   <DA bType="Enum" type="GnClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_GnClSt" cdc="STV">
   <SDO type="CN_INS_GnClSt_actSt" name="actSt"/>
   <SDO type="CN_INS_GnClSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_TrfClSt_actSt" cdc="INS">
   <DA bType="Enum" type="TrfClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_TrfClSt_oldSt" cdc="INS">
   <DA bType="Enum" type="TrfClSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_TrfClSt" cdc="STV">
   <SDO type="CN_INS_TrfClSt_actSt" name="actSt"/>
   <SDO type="CN_INS_TrfClSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_CnvOpMod_actSt" cdc="INS">
   <DA bType="Enum" type="CnvOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_CnvOpMod_oldSt" cdc="INS">
   <DA bType="Enum" type="CnvOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_CnvOpMod" cdc="STV">
   <SDO type="CN_INS_CnvOpMod_actSt" name="actSt"/>
   <SDO type="CN_INS_CnvOpMod_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_GnOpMod_actSt" cdc="INS">
   <DA bType="Enum" type="GnOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_GnOpMod_oldSt" cdc="INS">
   <DA bType="Enum" type="GnOpMod_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_GnOpMod" cdc="STV">
   <SDO type="CN_INS_GnOpMod_actSt" name="actSt"/>
   <SDO type="CN_INS_GnOpMod_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_DehumSt_actSt" cdc="INS">
   <DA bType="Enum" type="DehumSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_DehumSt_oldSt" cdc="INS">
   <DA bType="Enum" type="DehumSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_DehumSt" cdc="STV">
   <SDO type="CN_INS_DehumSt_actSt" name="actSt"/>
   <SDO type="CN_INS_DehumSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_FtrSt_actSt" cdc="INS">
   <DA bType="Enum" type="FtrSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_FtrSt_oldSt" cdc="INS">
   <DA bType="Enum" type="FtrSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_FtrSt" cdc="STV">
   <SDO type="CN_INS_FtrSt_actSt" name="actSt"/>
   <SDO type="CN_INS_FtrSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_HtexSt_actSt" cdc="INS">
   <DA bType="Enum" type="HtexSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_HtexSt_oldSt" cdc="INS">
   <DA bType="Enum" type="HtexSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_HtexSt" cdc="STV">
   <SDO type="CN_INS_HtexSt_actSt" name="actSt"/>
   <SDO type="CN_INS_HtexSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_HtSt_actSt" cdc="INS">
   <DA bType="Enum" type="HtSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_HtSt_oldSt" cdc="INS">
   <DA bType="Enum" type="HtSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_HtSt" cdc="STV">
   <SDO type="CN_INS_HtSt_actSt" name="actSt"/>
   <SDO type="CN_INS_HtSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_WdHtSt_actSt" cdc="INS">
   <DA bType="Enum" type="WdHtSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_WdHtSt_oldSt" cdc="INS">
   <DA bType="Enum" type="WdHtSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_WdHtSt" cdc="STV">
   <SDO type="CN_INS_WdHtSt_actSt" name="actSt"/>
   <SDO type="CN_INS_WdHtSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_IceSt_actSt" cdc="INS">
   <DA bType="Enum" type="IceSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_IceSt_oldSt" cdc="INS">
   <DA bType="Enum" type="IceSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_IceSt" cdc="STV">
   <SDO type="CN_INS_IceSt_actSt" name="actSt"/>
   <SDO type="CN_INS_IceSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_InlFltSt_actSt" cdc="INS">
   <DA bType="Enum" type="InlFltSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_InlFltSt_oldSt" cdc="INS">
   <DA bType="Enum" type="InlFltSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_InlFltSt" cdc="STV">
   <SDO type="CN_INS_InlFltSt_actSt" name="actSt"/>
   <SDO type="CN_INS_InlFltSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_LiftSt_actSt" cdc="INS">
   <DA bType="Enum" type="LiftSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_LiftSt_oldSt" cdc="INS">
   <DA bType="Enum" type="LiftSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_LiftSt" cdc="STV">
   <SDO type="CN_INS_LiftSt_actSt" name="actSt"/>
   <SDO type="CN_INS_LiftSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_LuSt_actSt" cdc="INS">
   <DA bType="Enum" type="LuSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_LuSt_oldSt" cdc="INS">
   <DA bType="Enum" type="LuSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_LuSt" cdc="STV">
   <SDO type="CN_INS_LuSt_actSt" name="actSt"/>
   <SDO type="CN_INS_LuSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_MTPresSt_actSt" cdc="INS">
   <DA bType="Enum" type="MTPresSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_MTPresSt_oldSt" cdc="INS">
   <DA bType="Enum" type="MTPresSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_MTPresSt" cdc="STV">
   <SDO type="CN_INS_MTPresSt_actSt" name="actSt"/>
   <SDO type="CN_INS_MTPresSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_OfFltSt_actSt" cdc="INS">
   <DA bType="Enum" type="OfFltSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_OfFltSt_oldSt" cdc="INS">
   <DA bType="Enum" type="OfFltSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_OfFltSt" cdc="STV">
   <SDO type="CN_INS_OfFltSt_actSt" name="actSt"/>
   <SDO type="CN_INS_OfFltSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_OilLevSt_actSt" cdc="INS">
   <DA bType="Enum" type="OilLevSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_OilLevSt_oldSt" cdc="INS">
   <DA bType="Enum" type="OilLevSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_OilLevSt" cdc="STV">
   <SDO type="CN_INS_OilLevSt_actSt" name="actSt"/>
   <SDO type="CN_INS_OilLevSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_PtCtlSt_actSt" cdc="INS">
   <DA bType="Enum" type="PtCtlSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_PtCtlSt_oldSt" cdc="INS">
   <DA bType="Enum" type="PtCtlSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_PtCtlSt" cdc="STV">
   <SDO type="CN_INS_PtCtlSt_actSt" name="actSt"/>
   <SDO type="CN_INS_PtCtlSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_RotSt_actSt" cdc="INS">
   <DA bType="Enum" type="RotSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_RotSt_oldSt" cdc="INS">
   <DA bType="Enum" type="RotSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_RotSt" cdc="STV">
   <SDO type="CN_INS_RotSt_actSt" name="actSt"/>
   <SDO type="CN_INS_RotSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INS_TurSt_actSt" cdc="INS">
   <DA bType="Enum" type="TurSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_TurSt_oldSt" cdc="INS">
   <DA bType="Enum" type="TurSt_St" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_STV_TurSt" cdc="STV">
   <SDO type="CN_INS_TurSt_actSt" name="actSt"/>
   <SDO type="CN_INS_TurSt_oldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="stTm"/>
   <SDO type="CN_CTE" name="stCt"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_SPC_almAck" cdc="SPC">
   <DA bType="BOOLEAN" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="BOOLEAN" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_ALM" cdc="ALM">
   <SDO type="CN_SPC_almAck" name="almAck"/>
   <SDO type="CN_INS_actSt" name="actSt"/>
   <SDO type="CN_INS_oldSt" name="oldSt"/>
   <DA bType="Enum" type="almLev" name="almLev" fc="ST"/>
   <DA bType="INT32U" name="seqId" fc="ST"/>
   <DA bType="INT32U" name="almStPos" fc="CF"/>
   <DA bType="INT32U" name="preTmms" fc="CF"/>
   <DA bType="INT32U" name="pstTmms" fc="CF"/>
   <DA bType="INT16U" name="smpTmms" fc="CF"/>
   <DA bType="VisString255" name="datSetMx" fc="CF" dchg="true"/>
   <DA bType="VisString255" name="datSetSt" fc="CF" dchg="true"/>
  </DOType>
  <DOType id="CN_INC_CmdActSt" cdc="INC">
   <DA bType="INT32" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_CmdOldSt" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INC_SetBecMod_CmdActSt" cdc="INC">
   <DA bType="Enum" type="SetBecMod_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="SetBecMod_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_SetBecMod_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="SetBecMod_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_SetBecMod" cdc="CMD">
   <SDO type="CN_INC_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_SetTurOp_CmdActSt" cdc="INC">
   <DA bType="Enum" type="SetTurOp_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="SetTurOp_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_SetTurOp_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="SetTurOp_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_SetTurOp" cdc="CMD">
   <SDO type="CN_INC_SetTurOp_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_SetTurOp_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_AtvGriSw_CmdActSt" cdc="INC">
   <DA bType="Enum" type="AtvGriSw_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="AtvGriSw_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_AtvGriSw_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="AtvGriSw_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_AtvGriSw" cdc="CMD">
   <SDO type="CN_INC_AtvGriSw_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_AtvGriSw_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_AtvYw_CmdActSt" cdc="INC">
   <DA bType="Enum" type="AtvYw_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="AtvYw_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_AtvYw_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="AtvYw_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_AtvYw" cdc="CMD">
   <SDO type="CN_INC_AtvYw_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_AtvYw_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_BlkRot_CmdActSt" cdc="INC">
   <DA bType="Enum" type="BlkRot_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="BlkRot_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_BlkRot_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="BlkRot_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_BlkRot" cdc="CMD">
   <SDO type="CN_INC_BlkRot_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_BlkRot_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
   <DA bType="VisString255" name="d" fc="DC"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
   <DA bType="VisString255" name="cdcNs" fc="EX"/>
   <DA bType="VisString255" name="cdcName" fc="EX"/>
   <DA bType="VisString255" name="dataNs" fc="EX"/>
  </DOType>
  <DOType id="CN_INC_PtEmgChk_CmdActSt" cdc="INC">
   <DA bType="Enum" type="PtEmgChk_CmdCtl" name="ctlVal" fc="CO" dchg="true"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="Enum" type="PtEmgChk_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="BOOLEAN" name="stSeld" fc="ST" dchg="true"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
   <DA bType="INT32U" name="sboTimeout" fc="CF"/>
   <DA bType="Enum" type="sboClasses" name="sboClass" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_PtEmgChk_CmdOldSt" cdc="INS">
   <DA bType="Enum" type="PtEmgChk_CmdSt" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_CMD_PtEmgChk" cdc="CMD">
   <SDO type="CN_INC_PtEmgChk_CmdActSt" name="actSt"/>
   <SDO type="CN_INS_PtEmgChk_CmdOldSt" name="oldSt"/>
   <SDO type="CN_TMS" name="cmTm"/>
   <SDO type="CN_CTE" name="cmCt"/>
   <DA bType="INT8U" name="cmAcs" fc="CF"/>
   <DA bType="VisString255" name="d" fc="DC"/>
   <DA bType="Unicode255" name="dU" fc="DC"/>
   <DA bType="VisString255" name="cdcNs" fc="EX"/>
   <DA bType="VisString255" name="cdcName" fc="EX"/>
   <DA bType="VisString255" name="dataNs" fc="EX"/>
  </DOType>
  <DOType id="CN_SPC_manRs" cdc="SPC">
   <DA bType="BOOLEAN" name="ctlVal" fc="CO"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="BOOLEAN" name="stVal" fc="ST" dchg="true"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_INC_hisRs" cdc="INC">
   <DA bType="Enum" type="hisRs" name="ctlVal" fc="CO"/>
   <DA bType="Struct" type="CN_Originator" name="origin" fc="CO"/>
   <DA bType="INT32" name="stVal" fc="ST"/>
   <DA bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
   <DA bType="Enum" type="ctlModels" name="ctlModel" fc="CF"/>
  </DOType>
  <DOType id="CN_INS_actVal" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DOType id="CN_INS_oldVal" cdc="INS">
   <DA bType="INT32" name="stVal" fc="ST" dchg="true"/>
   <DA qchg="true" bType="Quality" name="q" fc="ST"/>
   <DA bType="Timestamp" name="t" fc="ST"/>
  </DOType>
  <DAType id="CN_AnalogueValue">
   <BDA bType="FLOAT32" name="f"/>
  </DAType>
  <DAType id="CN_units">
   <BDA bType="Enum" type="SIUnit" name="SIUnit"/>
   <BDA bType="Enum" type="multiplier" name="multiplier"/>
  </DAType>
  <DAType id="CN_ScaledValueConfig">
   <BDA bType="FLOAT32" name="scaleFactor"/>
   <BDA bType="FLOAT32" name="offset"/>
  </DAType>
  <DAType id="CN_RangeConfig">
   <BDA bType="Struct" type="CN_AnalogueValue" name="hhLim"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="hLim"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="lLim"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="llLim"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="min"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="max"/>
  </DAType>
  <DAType id="CN_Vector">
   <BDA bType="Struct" type="CN_AnalogueValue" name="mag"/>
   <BDA bType="Struct" type="CN_AnalogueValue" name="ang"/>
  </DAType>
  <DAType id="CN_SBOw_Oper_SDPC">
   <BDA bType="BOOLEAN" name="ctlVal"/>
   <BDA bType="Struct" type="CN_Originator" name="origin"/>
   <BDA bType="INT8U" name="ctlNum"/>
   <BDA bType="Timestamp" name="T"/>
   <BDA bType="BOOLEAN" name="Test"/>
   <BDA bType="Check" name="Check"/>
  </DAType>
  <DAType id="CN_Cancel_SDPC">
   <BDA bType="BOOLEAN" name="ctlVal"/>
   <BDA bType="Struct" type="CN_Originator" name="origin"/>
   <BDA bType="INT8U" name="ctlNum"/>
   <BDA bType="Timestamp" name="T"/>
   <BDA bType="BOOLEAN" name="Test"/>
  </DAType>
  <DAType id="CN_PulseConfig">
   <BDA bType="Enum" type="PulseConfigCmdQual" name="cmdQual"/>
   <BDA bType="INT32U" name="onDur"/>
   <BDA bType="INT32U" name="offDur"/>
   <BDA bType="INT32U" name="numPls"/>
  </DAType>
  <DAType id="CN_AnalogueValue_I">
   <BDA bType="INT32" name="i"/>
  </DAType>
  <DAType id="CN_Originator">
   <BDA bType="Enum" type="orCategory" name="orCat"/>
   <BDA bType="Octet64" name="orIdent"/>
  </DAType>
  <EnumType id="AssSt">
   <EnumVal ord="1">Off</EnumVal>
   <EnumVal ord="2">Acknowledged</EnumVal>
   <EnumVal ord="3">Warning</EnumVal>
   <EnumVal ord="4">Active</EnumVal>
  </EnumType>
  <EnumType id="AneSt_St">
   <EnumVal ord="1">Auto</EnumVal>
   <EnumVal ord="2">Ane1</EnumVal>
   <EnumVal ord="3">Ane2</EnumVal>
   <EnumVal ord="4">Off</EnumVal>
   <EnumVal ord="5">Flt</EnumVal>
  </EnumType>
  <EnumType id="AtvGriSw_CmdCtl">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Auto</EnumVal>
  </EnumType>
  <EnumType id="AtvGriSw_CmdSt">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Auto</EnumVal>
  </EnumType>
  <EnumType id="AtvYw_CmdCtl">
   <EnumVal ord="1">Cw</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Ccw</EnumVal>
   <EnumVal ord="4">Auto</EnumVal>
  </EnumType>
  <EnumType id="AtvYw_CmdSt">
   <EnumVal ord="1">Cw</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Ccw</EnumVal>
   <EnumVal ord="4">Auto</EnumVal>
  </EnumType>
  <EnumType id="almLev">
   <EnumVal ord="1">low</EnumVal>
   <EnumVal ord="2">normal</EnumVal>
   <EnumVal ord="3">urgent</EnumVal>
  </EnumType>
  <EnumType id="angidCMV">
   <EnumVal ord="0">V</EnumVal>
   <EnumVal ord="1">A</EnumVal>
   <EnumVal ord="2">other</EnumVal>
  </EnumType>
  <EnumType id="angid">
   <EnumVal ord="0">Va</EnumVal>
   <EnumVal ord="1">Vb</EnumVal>
   <EnumVal ord="2">Vc</EnumVal>
   <EnumVal ord="3">Aa</EnumVal>
   <EnumVal ord="4">Ab</EnumVal>
   <EnumVal ord="5">Ac</EnumVal>
   <EnumVal ord="6">Vab</EnumVal>
   <EnumVal ord="7">Vbc</EnumVal>
   <EnumVal ord="8">Vca</EnumVal>
   <EnumVal ord="9">Vother</EnumVal>
   <EnumVal ord="10">Aother</EnumVal>
   <EnumVal ord="11">Synchrophasor</EnumVal>
  </EnumType>
  <EnumType id="Beh">
   <EnumVal ord="1">on</EnumVal>
   <EnumVal ord="2">blocked</EnumVal>
   <EnumVal ord="3">test</EnumVal>
   <EnumVal ord="4">test/blocked</EnumVal>
   <EnumVal ord="5">off</EnumVal>
  </EnumType>
  <EnumType id="BecBulbSt_St">
   <EnumVal ord="1">Auto</EnumVal>
   <EnumVal ord="2">Bulb1</EnumVal>
   <EnumVal ord="3">Bulb2</EnumVal>
   <EnumVal ord="4">Off</EnumVal>
   <EnumVal ord="5">Flt</EnumVal>
  </EnumType>
  <EnumType id="BlkRot_CmdCtl">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Auto</EnumVal>
  </EnumType>
  <EnumType id="BlkRot_CmdSt">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Auto</EnumVal>
  </EnumType>
  <EnumType id="BlSt_St">
   <EnumVal ord="1">Blk</EnumVal>
   <EnumVal ord="2">Stop</EnumVal>
   <EnumVal ord="3">Pt</EnumVal>
  </EnumType>
  <EnumType id="BrkOpMod_St">
   <EnumVal ord="1">Brk</EnumVal>
   <EnumVal ord="2">Rdy</EnumVal>
   <EnumVal ord="3">OvHt</EnumVal>
   <EnumVal ord="4">Flt</EnumVal>
  </EnumType>
  <EnumType id="ctlModels">
   <EnumVal ord="0">status-only</EnumVal>
   <EnumVal ord="1">direct-with-normal-security</EnumVal>
   <EnumVal ord="2">sbo-with-normal-security</EnumVal>
   <EnumVal ord="3">direct-with-enhanced-security</EnumVal>
   <EnumVal ord="4">sbo-with-enhanced-security</EnumVal>
  </EnumType>
  <EnumType id="chaPerRs">
   <EnumVal ord="0">hly</EnumVal>
   <EnumVal ord="1">dly</EnumVal>
   <EnumVal ord="2">wly</EnumVal>
   <EnumVal ord="3">mly</EnumVal>
  </EnumType>
  <EnumType id="ClSt_St">
   <EnumVal ord="1">Inact</EnumVal>
   <EnumVal ord="2">Actv</EnumVal>
   <EnumVal ord="3">OvHt</EnumVal>
  </EnumType>
  <EnumType id="CnvOpMod_St">
   <EnumVal ord="1">Chrg</EnumVal>
   <EnumVal ord="2">Rdy</EnumVal>
   <EnumVal ord="3">Run</EnumVal>
   <EnumVal ord="4">Flt</EnumVal>
  </EnumType>
  <EnumType id="Check">
   <EnumVal ord="0">no-check</EnumVal>
   <EnumVal ord="1">synchrocheck</EnumVal>
   <EnumVal ord="2">interlocking-check</EnumVal>
   <EnumVal ord="3">both</EnumVal>
  </EnumType>
  <EnumType id="DehumSt_St">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="FtrSt_St">
   <EnumVal ord="1">Inact</EnumVal>
   <EnumVal ord="2">Actv</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="GnClSt_St">
   <EnumVal ord="1">Cl</EnumVal>
   <EnumVal ord="2">Stdby</EnumVal>
   <EnumVal ord="3">Off</EnumVal>
   <EnumVal ord="4">Flt</EnumVal>
  </EnumType>
  <EnumType id="GnOpMod_St">
   <EnumVal ord="1">Ht</EnumVal>
   <EnumVal ord="2">Run</EnumVal>
   <EnumVal ord="3">Rdy</EnumVal>
   <EnumVal ord="4">Flt</EnumVal>
  </EnumType>
  <EnumType id="Health">
   <EnumVal ord="1">Ok</EnumVal>
   <EnumVal ord="2">Warning</EnumVal>
   <EnumVal ord="3">Alarm</EnumVal>
  </EnumType>
  <EnumType id="hisRs">
   <EnumVal ord="1">dly</EnumVal>
   <EnumVal ord="2">mly</EnumVal>
   <EnumVal ord="3">yly</EnumVal>
   <EnumVal ord="4">tot</EnumVal>
   <EnumVal ord="5">all</EnumVal>
  </EnumType>
  <EnumType id="HtexSt_St">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="HtSt_St">
   <EnumVal ord="1">Inact</EnumVal>
   <EnumVal ord="2">Actv</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="IceSt_St">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="InlFltSt_St">
   <EnumVal ord="1">HiHi</EnumVal>
   <EnumVal ord="2">Hi</EnumVal>
   <EnumVal ord="3">Nor</EnumVal>
   <EnumVal ord="4">Lo</EnumVal>
   <EnumVal ord="5">LoLo</EnumVal>
   <EnumVal ord="6">OutRng</EnumVal>
  </EnumType>
  <EnumType id="LiftSt_St">
   <EnumVal ord="1">Up</EnumVal>
   <EnumVal ord="2">Dn</EnumVal>
   <EnumVal ord="3">Off</EnumVal>
   <EnumVal ord="4">Blk</EnumVal>
  </EnumType>
  <EnumType id="LuSt_St">
   <EnumVal ord="1">Inact</EnumVal>
   <EnumVal ord="2">Actv</EnumVal>
   <EnumVal ord="3">Flt</EnumVal>
  </EnumType>
  <EnumType id="MTPresSt_St">
   <EnumVal ord="1">HiHi</EnumVal>
   <EnumVal ord="2">Hi</EnumVal>
   <EnumVal ord="3">Nor</EnumVal>
   <EnumVal ord="4">Lo</EnumVal>
   <EnumVal ord="5">LoLo</EnumVal>
   <EnumVal ord="6">OutRng</EnumVal>
  </EnumType>
  <EnumType id="Mod">
   <EnumVal ord="1">on</EnumVal>
   <EnumVal ord="2">blocked</EnumVal>
   <EnumVal ord="3">test</EnumVal>
   <EnumVal ord="4">test/blocked</EnumVal>
   <EnumVal ord="5">off</EnumVal>
  </EnumType>
  <EnumType id="multiplier">
   <EnumVal ord="-24">y</EnumVal>
   <EnumVal ord="-21">z</EnumVal>
   <EnumVal ord="-18">a</EnumVal>
   <EnumVal ord="-15">f</EnumVal>
   <EnumVal ord="-12">p</EnumVal>
   <EnumVal ord="-9">n</EnumVal>
   <EnumVal ord="-6">µ</EnumVal>
   <EnumVal ord="-3">m</EnumVal>
   <EnumVal ord="-2">c</EnumVal>
   <EnumVal ord="-1">d</EnumVal>
   <EnumVal ord="0"/>
   <EnumVal ord="1">da</EnumVal>
   <EnumVal ord="2">h</EnumVal>
   <EnumVal ord="3">k</EnumVal>
   <EnumVal ord="6">M</EnumVal>
   <EnumVal ord="9">G</EnumVal>
   <EnumVal ord="12">T</EnumVal>
   <EnumVal ord="15">P</EnumVal>
   <EnumVal ord="18">E</EnumVal>
   <EnumVal ord="21">Z</EnumVal>
   <EnumVal ord="24">Y</EnumVal>
  </EnumType>
  <EnumType id="OfFltSt_St">
   <EnumVal ord="1">HiHi</EnumVal>
   <EnumVal ord="2">Hi</EnumVal>
   <EnumVal ord="3">Nor</EnumVal>
   <EnumVal ord="4">Lo</EnumVal>
   <EnumVal ord="5">LoLo</EnumVal>
   <EnumVal ord="6">OutRng</EnumVal>
  </EnumType>
  <EnumType id="OilLevSt_St">
   <EnumVal ord="1">HiHi</EnumVal>
   <EnumVal ord="2">Hi</EnumVal>
   <EnumVal ord="3">Nor</EnumVal>
   <EnumVal ord="4">Lo</EnumVal>
   <EnumVal ord="5">LoLo</EnumVal>
   <EnumVal ord="6">OutRng</EnumVal>
  </EnumType>
  <EnumType id="orCategory">
   <EnumVal ord="0">not-supported</EnumVal>
   <EnumVal ord="1">bay-control</EnumVal>
   <EnumVal ord="2">station-control</EnumVal>
   <EnumVal ord="3">remote-control</EnumVal>
   <EnumVal ord="4">automatic-bay</EnumVal>
   <EnumVal ord="5">automatic-station</EnumVal>
   <EnumVal ord="6">automatic-remote</EnumVal>
   <EnumVal ord="7">maintenance</EnumVal>
   <EnumVal ord="8">process</EnumVal>
  </EnumType>
  <EnumType id="PhyHealth">
   <EnumVal ord="1">Ok</EnumVal>
   <EnumVal ord="2">Warning</EnumVal>
   <EnumVal ord="3">Alarm</EnumVal>
  </EnumType>
  <EnumType id="PtCtlSt_St">
   <EnumVal ord="1">Op</EnumVal>
   <EnumVal ord="2">Flt</EnumVal>
  </EnumType>
  <EnumType id="PtEmgChk_CmdCtl">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
  </EnumType>
  <EnumType id="PtEmgChk_CmdSt">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
  </EnumType>
  <EnumType id="PulseConfigCmdQual">
   <EnumVal ord="0">pulse</EnumVal>
   <EnumVal ord="1">persistent</EnumVal>
  </EnumType>
  <EnumType id="RotSt_St">
   <EnumVal ord="1">Blk</EnumVal>
   <EnumVal ord="2">Stop</EnumVal>
   <EnumVal ord="3">Idl</EnumVal>
   <EnumVal ord="4">Run</EnumVal>
  </EnumType>
  <EnumType id="range">
   <EnumVal ord="0">normal</EnumVal>
   <EnumVal ord="1">high</EnumVal>
   <EnumVal ord="2">low</EnumVal>
   <EnumVal ord="3">high-high</EnumVal>
   <EnumVal ord="4">low-low</EnumVal>
  </EnumType>
  <EnumType id="rsPer">
   <EnumVal ord="1">dly</EnumVal>
   <EnumVal ord="2">wly</EnumVal>
   <EnumVal ord="3">mly</EnumVal>
   <EnumVal ord="4">yly</EnumVal>
   <EnumVal ord="5">manual</EnumVal>
  </EnumType>
  <EnumType id="sboClasses">
   <EnumVal ord="0">operate-once</EnumVal>
   <EnumVal ord="1">operate-many</EnumVal>
  </EnumType>
  <EnumType id="spAcs">
   <EnumVal ord="0">Low</EnumVal>
   <EnumVal ord="1">medium</EnumVal>
   <EnumVal ord="2">high</EnumVal>
  </EnumType>
  <EnumType id="SetBecMod_CmdCtl">
   <EnumVal ord="1">Auto</EnumVal>
   <EnumVal ord="2">Bulb1</EnumVal>
   <EnumVal ord="3">Bulb2</EnumVal>
  </EnumType>
  <EnumType id="SetBecMod_CmdSt">
   <EnumVal ord="1">Auto</EnumVal>
   <EnumVal ord="2">Bulb1</EnumVal>
   <EnumVal ord="3">Bulb2</EnumVal>
  </EnumType>
  <EnumType id="SetTurOp_CmdCtl">
   <EnumVal ord="1">Str</EnumVal>
   <EnumVal ord="2">Stop</EnumVal>
  </EnumType>
  <EnumType id="SetTurOp_CmdSt">
   <EnumVal ord="1">Str</EnumVal>
   <EnumVal ord="2">Stop</EnumVal>
  </EnumType>
  <EnumType id="Str">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Auto</EnumVal>
  </EnumType>
  <EnumType id="SIUnit">
   <EnumVal ord="1"/>
   <EnumVal ord="2">m</EnumVal>
   <EnumVal ord="3">kg</EnumVal>
   <EnumVal ord="4">s</EnumVal>
   <EnumVal ord="5">A</EnumVal>
   <EnumVal ord="6">K</EnumVal>
   <EnumVal ord="7">mol</EnumVal>
   <EnumVal ord="8">cd</EnumVal>
   <EnumVal ord="9">deg</EnumVal>
   <EnumVal ord="10">rad</EnumVal>
   <EnumVal ord="11">sr</EnumVal>
   <EnumVal ord="21">Gy</EnumVal>
   <EnumVal ord="22">q</EnumVal>
   <EnumVal ord="23">°C</EnumVal>
   <EnumVal ord="24">Sv</EnumVal>
   <EnumVal ord="25">F</EnumVal>
   <EnumVal ord="26">C</EnumVal>
   <EnumVal ord="27">S</EnumVal>
   <EnumVal ord="28">H</EnumVal>
   <EnumVal ord="29">V</EnumVal>
   <EnumVal ord="30">ohm</EnumVal>
   <EnumVal ord="31">J</EnumVal>
   <EnumVal ord="32">N</EnumVal>
   <EnumVal ord="33">Hz</EnumVal>
   <EnumVal ord="34">lx</EnumVal>
   <EnumVal ord="35">Lm</EnumVal>
   <EnumVal ord="36">Wb</EnumVal>
   <EnumVal ord="37">T</EnumVal>
   <EnumVal ord="38">W</EnumVal>
   <EnumVal ord="39">Pa</EnumVal>
   <EnumVal ord="41">m²</EnumVal>
   <EnumVal ord="42">m³</EnumVal>
   <EnumVal ord="43">m/s</EnumVal>
   <EnumVal ord="44">m/s²</EnumVal>
   <EnumVal ord="45">m³/s</EnumVal>
   <EnumVal ord="46">m/m³</EnumVal>
   <EnumVal ord="47">M</EnumVal>
   <EnumVal ord="48">kg/m³</EnumVal>
   <EnumVal ord="49">m²/s</EnumVal>
   <EnumVal ord="50">W/m K</EnumVal>
   <EnumVal ord="51">J/K</EnumVal>
   <EnumVal ord="52">ppm</EnumVal>
   <EnumVal ord="53">1/s</EnumVal>
   <EnumVal ord="54">rad/s</EnumVal>
   <EnumVal ord="61">VA</EnumVal>
   <EnumVal ord="62">Watts</EnumVal>
   <EnumVal ord="63">VAr</EnumVal>
   <EnumVal ord="64">phi</EnumVal>
   <EnumVal ord="65">cos(phi)</EnumVal>
   <EnumVal ord="66">Vs</EnumVal>
   <EnumVal ord="67">V²</EnumVal>
   <EnumVal ord="68">As</EnumVal>
   <EnumVal ord="69">A²</EnumVal>
   <EnumVal ord="70">A²s</EnumVal>
   <EnumVal ord="71">VAh</EnumVal>
   <EnumVal ord="72">Wh</EnumVal>
   <EnumVal ord="73">VArh</EnumVal>
   <EnumVal ord="74">V/Hz</EnumVal>
  </EnumType>
  <EnumType id="TrfClSt_St">
   <EnumVal ord="1">Cl</EnumVal>
   <EnumVal ord="2">Stdby</EnumVal>
   <EnumVal ord="3">Off</EnumVal>
   <EnumVal ord="4">Flt</EnumVal>
  </EnumType>
  <EnumType id="TurSt_St">
   <EnumVal ord="1">Stop</EnumVal>
   <EnumVal ord="2">Stdby</EnumVal>
   <EnumVal ord="3">Str</EnumVal>
   <EnumVal ord="4">Run</EnumVal>
   <EnumVal ord="5">Free</EnumVal>
   <EnumVal ord="6">Brk</EnumVal>
  </EnumType>
  <EnumType id="WdHtSt_St">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
   <EnumVal ord="3">Dis</EnumVal>
  </EnumType>
  <EnumType id="YwBrakeSt_St">
   <EnumVal ord="1">On</EnumVal>
   <EnumVal ord="2">Off</EnumVal>
  </EnumType>
  <EnumType id="YwSt_St">
   <EnumVal ord="1">Auto</EnumVal>
   <EnumVal ord="2">Cw</EnumVal>
   <EnumVal ord="3">Blk</EnumVal>
   <EnumVal ord="4">Ccw</EnumVal>
   <EnumVal ord="5">Flt</EnumVal>
  </EnumType>
  <EnumType id="dir">
   <EnumVal ord="0">unknown</EnumVal>
   <EnumVal ord="1">forward</EnumVal>
   <EnumVal ord="2">backward</EnumVal>
   <EnumVal ord="3">both</EnumVal>
  </EnumType>
  <EnumType id="seqT">
   <EnumVal ord="0">pos-neg-zero</EnumVal>
   <EnumVal ord="1">dir-quad-zero</EnumVal>
  </EnumType>
 </DataTypeTemplates>
</SCL>
