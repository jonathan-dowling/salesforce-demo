<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Merge Client</title>

</head>
	<body BGCOLOR="#FFFFFF">

		<IMG SRC="<c:url value="/images/logo.gif"/>" BORDER=0/>
		<CENTER>
			<TABLE WIDTH=90% BORDER=1 CELLPADDING=10 CELLSPACING=1>
				<TR><TD>
					<TABLE WIDTH=100% BORDER=0 CELLPADDING=5 CELLSPACING=5>

						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Merge Client </FONT></TD></TR>
						<TR><TD align="CENTER"><FONT FACE="Verdana" SIZE=3 COLOR=#000044>Call the merge client stored procedure using data in the file:  </FONT></TD></TR>
						<TR><TD align="CENTER"><FONT FACE="Verdana" SIZE=3 COLOR=#000044><c:out value="${mergeClientFileLocation}" /> </FONT></TD></TR>
						<TR><TD ALIGN=CENTER>
							<FORM action="<c:url value="/secure/mergeclient/runMergeClients"/>" method="get">
							<TABLE WIDTH=80% CELLPADDING=5>
								<TR>								
									<TD>&nbsp;</TD>
									<TD>
										<INPUT type="submit" name="submit" value="Run"></INPUT> 
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