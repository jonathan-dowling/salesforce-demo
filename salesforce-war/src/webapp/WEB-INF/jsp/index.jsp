<%--
 * Filename: index.html
 * 
 * Description:
 * Web page use to invoke parts of the Extract Service.
 *
 --%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>Aegon Ireland Extract Manager Site</title>
		<STYLE TYPE="text/css"><!--
		A.standard:link {color: #440000; font-weight:bold; text-decoration: none}
		A.standard:active {color: #440000; font-weight:bold; text-decoration: none}
		A.standard:visited {color: #440000; font-weight:bold; text-decoration: none}
		A.standard:hover {color: #FF0000; font-weight:bold; text-decoration: underline}
		--></STYLE>
	</head>

	<!-- BODY BGCOLOR="#000022" -->
	<body BGCOLOR="#FFFFFF">

		<IMG SRC="<c:url value="/images/logo.gif"/>" BORDER=0/>
		<CENTER>
			<TABLE WIDTH=90% BORDER=1 CELLPADDING=10 CELLSPACING=1>
				<TR><TD>
					<TABLE WIDTH=100% BORDER=0 CELLPADDING=5 CELLSPACING=5>
						<TR>
							<TD ALIGN=CENTER>
								<FONT FACE="Verdana" SIZE=5 COLOR=#000044><B>Aegon Ireland Extract Manager</B></FONT>
								<BR>
								<FONT FACE="Verdana" SIZE=5 COLOR=#000044>- Extract Service Subtask Executer -</FONT>
								<HR>
							</TD>
						</TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044> Actuarial Extract Subtasks</FONT></TD></TR>

						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
                                <TR><TD><A HREF="<c:url value="/secure/actuarialextract/runextract/"/>" CLASS=standard><LI>Run Actuarial Extract...</LI></A></TD></TR>
                                <TR><TD><A HREF="<c:url value="/actuarialextract/filerequest/"/>" CLASS=standard><LI>Generate Actuarial Extract files...</LI></A></TD></TR>
							</TABLE>
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Asset Information Subtasks</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/assetinfo/"/>" CLASS=standard><LI>Run Asset Information jobs...</LI></A></TD></TR>
								</TABLE>
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Bloomberg</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/bloomberg/createbloombergrequest/"/>" CLASS=standard><LI>Bloomberg File Creation jobs...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/secure/bloomberg/createbloomberggethistoryrequest/"/>" CLASS=standard><LI>Bloomberg Get History job...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/secure/bloomberg/validationforexpectedpricedate/"/>" CLASS=standard><LI>Bloomberg Validation jobs...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/secure/bloomberg/qrtfileupload/"/>" CLASS=standard><LI>Quantitative Reporting Templates...</LI></A></TD></TR>
								</TABLE>
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>SUN Interface Extract Subtasks</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/suninterface"/>" CLASS=standard><LI>Run SUN Interface Extract...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/transactions"/>" CLASS=standard><LI>FOCUS Transactions / SUN Rules...</LI></A></TD></TR>
								</TABLE>	
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Daily Reporting Extract Subtasks</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=1003"/>" CLASS=standard><LI>Run NL Fund Price Extract...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/germanAgentPaymentsFile"/>" CLASS=standard><LI>Generate German Agent Payment File</LI></A></TD></TR>								
								</TABLE>	
						</TD></TR>
												
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=1006"/>" CLASS=standard><LI>Run ARC Guaranteed Income Job</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=1007"/>" CLASS=standard><LI>Run ARC Guaranteed Valuation Job</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=1009"/>" CLASS=standard><LI>Run ARC Charge Import Job</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=1010"/>" CLASS=standard><LI>Run ARC Charge Previous Month Data Check</LI></A></TD></TR>
								</TABLE>	
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Other</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=2001"/>" CLASS=standard><LI>Force Daily HouseKeeping</LI></A></TD></TR>
								</TABLE>	
						</TD></TR>	
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Method Caching</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=3002"/>" CLASS=standard><LI>Clear Method Caches</LI></A></TD></TR>
								</TABLE>	
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>FX Rates</FONT></TD></TR>

						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/fxrateextract.html"/>" CLASS=standard><LI>Run FX Rate Extract...</LI></A></TD></TR>
								</TABLE>	
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Qapla</FONT></TD></TR>

						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/qaplabrokerimport.html"/>" CLASS=standard><LI>Import Qapla Broker Details...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/qaplaagencytransfer.html"/>" CLASS=standard><LI>Import Qapla Agency Transfers...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/qaplatransferapp.html"/>" CLASS=standard><LI>Transfer Focus Application into QAPLA...</LI></A></TD></TR>
							</TABLE>	
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>HSBC</FONT></TD></TR>

						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runhsbcbulkholdings"/>" CLASS=standard><LI>Run HSBC Bulk Holdings Export</LI></A></TD></TR>
							</TABLE>	
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>FATCA / CRS Reporting</FONT></TD></TR>
						
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/fatca/"/>" CLASS=standard><LI>Generate FATCA File</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=5001"/>" CLASS=standard><LI>Check Contacts FATCA status of US Indicia</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=5002"/>" CLASS=standard><LI>Check Contacts CRS status of Indicia Found</LI></A></TD></TR>
							</TABLE>	
						</TD></TR>
						
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/crs/"/>" CLASS=standard><LI>Generate CRS File</LI></A></TD></TR>
							</TABLE>	
						</TD></TR>

			
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Annuity Payment Extract Subtasks (ZFA)</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/annuitypayments/extract/"/>" CLASS=standard><LI>Run Annuity Payment Extract jobs...</LI></A></TD></TR>
							</TABLE>
                            <TABLE WIDTH=80% CELLPADDING=5>
                                <TR><TD><A HREF="<c:url value="/secure/annuitypayments/process/"/>" CLASS=standard><LI>Process Annuity Payment Extract jobs...</LI></A></TD></TR>
                            </TABLE>
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Morningstar Fund Update SubTasks</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/morningstar/"/>" CLASS=standard><LI>Run Morningstar Fund Update Jobs...</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=6002"/>" CLASS=standard><LI>Generate Morningstar fund report file</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=6001"/>" CLASS=standard><LI>Clear Morningstar fund report data</LI></A></TD></TR>
							</TABLE>
							
							<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/morningstarfiles.html"/>" CLASS=standard><LI>Load Morningstar Fund Data from Archive</LI></A></TD></TR>						
								</TABLE>	
						</TD></TR>
						</TD></TR>
                        
                        <TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Notification Service</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=7001"/>" CLASS=standard><LI>Trigger Pipeline Chaser Emails</LI></A></TD></TR>
							</TABLE>
						</TD></TR>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>AML Risk Mass Recalculation</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/amlriskcalculation.html"/>" CLASS=standard><LI>Run AML Risk Mass Recalculation...</LI></A></TD></TR>
							</TABLE>
						</TD></TR>
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Hedging Attribution</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=1011"/>" CLASS=standard><LI>Load Hedging Attribution data</LI></A></TD></TR>
							</TABLE>
						</TD></TR>
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Check surrendered bonds</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD>Links Removed, TODO: code</TD></TR>
							</TABLE>
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Monthiversary Trigger</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=8001"/>" CLASS=standard><LI>Run quartz job for monthiversary trigger</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=8002"/>" CLASS=standard><LI>Trigger dashboard notification (overrides transaction complete and date checks)</LI></A></TD></TR>
								<TR><TD><A HREF="<c:url value="/runtask?task=8003"/>" CLASS=standard><LI>Trigger dashboard notification and send email (overrides transaction complete and date checks)</LI></A></TD></TR>
							</TABLE>
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Focus Extract</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/runtask?task=8010"/>" CLASS=standard><LI>Run focus extract</LI></A></TD></TR>
							</TABLE>
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Group Sanctions Triggers</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/sanctions/"/>" CLASS=standard><LI>Run Group Sanctions Related triggers</LI></A></TD></TR>								
							</TABLE>
						</TD></TR>
						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Munich Reinsurance</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/focusClaimsReportInput/"/>" CLASS=standard><LI>Generate Focus Claims Report</LI></A></TD></TR>								
							</TABLE>
						</TD></TR>
						
						

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Merge Client</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR><TD><A HREF="<c:url value="/secure/mergeclient/diplayMergeClientsPage"/>" CLASS=standard><LI>Merge Clients</LI></A></TD></TR>
							</TABLE>
						</TD></TR>
                         
                        <TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Mass Anonymisation</FONT></TD></TR>
                        <TR><TD ALIGN=CENTER>
                            <TABLE WIDTH=80% CELLPADDING=5>
                                <TR><TD><A HREF="<c:url value="/secure/anonymisation/"/>" CLASS=standard><LI>Mass Anonymisation...</LI></A></TD></TR>
                                <TR><TD><A HREF="<c:url value="/secure/anonymisation/manual"/>" CLASS=standard><LI>Manual Bond Anonymisation...</LI></A></TD></TR>
                            </TABLE>
                        </TD></TR>
						
					</TABLE>
				</TD></TR>
			</TABLE>
		</CENTER>

	</body>

</html>
