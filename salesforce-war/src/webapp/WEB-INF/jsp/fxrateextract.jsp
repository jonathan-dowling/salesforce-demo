<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<title>Aegon Ireland FX rate extract site</title>
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

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>FX rate extract...</FONT></TD></TR>
						<TR><TD align="CENTER"><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Extracts the FX rates to Focus.</FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<FORM action="<c:url value="/runfxrateextract"/>" method="get">
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=3>Source Rate Date, usually the previous process day (dd/mm/yyyy)</FONT></TD>
									<TD>
										<INPUT name="rateDateStr" size="10" value=""></INPUT> 
									</TD>
								</TR>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=3>Process Date, usually the current date (dd/mm/yyyy)</FONT></TD>
									<TD>
										<INPUT name="processDateStr" size="10" value=""></INPUT> 
									</TD>
								</TR>
								<TR>								
									<TD>&nbsp;</TD>
									<TD>
										<INPUT type="submit" name="submit" value="Upload"></INPUT> 
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