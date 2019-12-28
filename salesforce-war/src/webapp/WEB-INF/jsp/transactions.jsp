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
	
<SCRIPT type="text/javascript">
	function findX(obj) { 
		var x = 0; 
		while (obj) { 
			x += obj.offsetLeft 
			obj = obj.offsetParent; 
		} 
		return x;
	} 
	function findY(obj) { 
		var y = 0; 
		while (obj) { 
			y += obj.offsetTop;
			obj = obj.offsetParent; 
		}
		return y;
	} 

	function ShowPopup(hoveritem, divname) {
		hp = document.getElementById(divname);
		hp.style.top = findY(hoveritem) + 10;
		hp.style.left = findX(hoveritem) + 10;
		hp.style.visibility = "Visible";
	}

	function HidePopup(divname) {
		hp = document.getElementById(divname);
		hp.style.visibility = "Hidden";	
	}
</SCRIPT>

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
	
						<TR><TD ALIGN=CENTER><FONT FACE="Verdana" SIZE=3 COLOR=#000044>FOCUS Transactions / SUN Rules</FONT></TD></TR>
	
						<TR><TD ALIGN=CENTER>
							<form action="<c:url value="/runTransactions"/>" method="get">
							<TABLE WIDTH=100% CELLPADDING=5>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=2>Transaction Type</FONT></TD>
									<TD>
										<SELECT name="txTypeOption">
  											<c:forEach var="txType" items="${txTypes}">
										      <option value = "${txType.label}" <c:if test ="${txType.label == txTypeLabel}">selected</c:if>>${txType.label} [${txType.description}]</option>
										   </c:forEach>
										</SELECT>
									</TD>
								</TR>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=2>Display All Possible Movements</FONT></TD>
									<TD>
										<INPUT type="checkbox" name="showAllOption" value="Y" <c:if test ="${showAll}">checked</c:if> /> 
									</TD>
								</TR>
								<TR>
									<TD><FONT FACE="Verdana" SIZE=2>Exclude Cashflow Style Posting Rules</FONT></TD>
									<TD>
										<INPUT type="checkbox" name="excludeCashflowOption" value="Y" <c:if test ="${excludeCashflow}">checked</c:if> /> 
									</TD>
								</TR>
								<TR>								
									<TD>&nbsp;</TD>
									<TD>
										<INPUT type="submit" name="submit" value="Submit"></INPUT> 
									</TD>
								</TR>								
																
							</TABLE>	
							</FORM>
						</TD></TR>
	
	
						<c:if test ="${txTypeChosen != null}">									
								<TR><TD>
								<img src="<c:url value="/transactionvisualiser.html?txType=${txTypeLabel}&showAll=${showAll}"/>"/>
								</TD></TR>				
								<c:forEach var="groupEntry" items="${ruleGroups}">		
									<TR><TD><FONT FACE="Verdana" SIZE=2><B>${groupEntry.key}</B></FONT></TD></TR>			
									<TR><TD>
										<TABLE width="100%" border=1 cellspacing=1 cellpadding=1>
											<TR>
												<c:forEach var="col" items="${groupEntry.value.first}">
													<TD><FONT FACE="Verdana" SIZE=1><B>${col[0]}</B></FONT></TD>
												</c:forEach>
											</TR>
											<c:forEach var="lineEntry" items="${groupEntry.value.second}">
												<TR>
													<c:forEach var="field" items="${lineEntry.value}">	
														<TD><FONT FACE="Verdana" SIZE=1>
															<c:choose>
															  <c:when test="${!field.accountHover}">
															  		${field.outputStr}
															  </c:when>
															  <c:otherwise>
															  	<A id="hoverover${field.satSerial}" style="cursor:default;" onMouseOver="ShowPopup(this, 'accountPopup${field.satSerial}');" onMouseOut="HidePopup('accountPopup${field.satSerial}');">Various...</A>
															  </c:otherwise>
															</c:choose>
														</FONT></TD>
													</c:forEach>	
												</TR>
											</c:forEach>		
										</TABLE>
									</TD></TR>		
								</c:forEach>
							
						</c:if>
						<TR><TD><A HREF="<c:url value="/"/>" CLASS=standard>Return to main Extract Service Page</A></TD></TR>
					</TABLE>
				</TD></TR>
			</TABLE>
		</CENTER>

	<c:if test ="${sunAccounts != null}">		
		<c:forEach var="sunEntry" items="${sunAccounts}">			
			<DIV id="accountPopup${sunEntry.key}" style="visibility:hidden; position:absolute; top:0; left:0;">
			<TABLE bgcolor="#0000FF" border=1 cellspacing=1 cellpadding=1>
				<TR>
					<c:forEach var="sunCol" items="${sunEntry.value.first}">
						<TD><FONT FACE="Verdana" SIZE=1><B>${sunCol[0]}</B></FONT></TD>
					</c:forEach>
				</TR>
			
				<c:forEach var="sunLineEntry" items="${sunEntry.value.second}">
					<TR>	
						<c:forEach var="sunField" items="${sunLineEntry.value}">	
							<TD bgcolor="#8888FF"><FONT FACE="Verdana" SIZE=1>${sunField}</TD>
						</c:forEach>
					</TR>	
				</c:forEach>
			</TABLE>
			</DIV>
		</c:forEach>
	</c:if>
	</body>

</html>


