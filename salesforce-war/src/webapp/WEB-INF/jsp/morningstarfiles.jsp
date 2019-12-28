<%--
 * Filename: morningstarfiles.html
 * 
 * Description:
 * Web page use to invoke parts of the Extract Service.
 *
 --%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
	<head>
		<title>Aegon Ireland Load Morningstar Fund Data from Archive Manager Site</title>
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

						
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Load Morningstar Fund Data from Archive</FONT></TD></TR>
							<FORM action="<c:url value="/runmorningstarfiles"/>" method="get">
								<TR>								
									<TD><FONT FACE="Verdana" SIZE=3>Files Location</FONT>
									<BR/><BR/>
										<INPUT name="location" size="60" value=" path to files"></INPUT> 
									</TD>
								</TR>
								<TR>								

									<TD>
										<INPUT type="submit" name="submit" value="Confirm"></INPUT> 
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
