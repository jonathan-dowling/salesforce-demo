<%--
 * Filename: germanAgentPaymentsFile.html
 * 
 * Description:
 * Web page use to generate the German agent payment file for a given process date
 *
 --%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Collection"%>

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

						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Generate german payment file</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<form action="<c:url value="/runGermanAgentPaymentsFile"/>" method="get">
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=3>Process Date (dd/mm/yyyy)</FONT></TD>
									<TD>
										<INPUT name="processDate" size="60" value="${previousProcessDate}"></INPUT> 
									</TD>
								</TR>
								<TR>								
									<TD><FONT FACE="Verdana" SIZE=3>File Location</FONT></TD>
									<TD>
										<INPUT name="location" size="60" value="${germanAgentPaymentFileLocation}"></INPUT> 
									</TD>
								</TR>
								<TR>								
									<TD>&nbsp;</TD>
									<TD>
										<INPUT type="submit" name="submit" value="GO"></INPUT> 
									</TD>
								</TR>								
																
							</TABLE>	
							</FORM>
						</TD></TR>
						
						<TR><TD><A HREF="<c:url value="/"/>" CLASS=standard>Return to main Extract Service Page</A></TD></TR>
												
					</TABLE>
				</TD></TR>
			</TABLE>
		</CENTER>

	</body>

</html>
