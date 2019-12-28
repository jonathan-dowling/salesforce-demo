<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title><c:out value="${title}" /></title>
<link rel="stylesheet" href="<c:url value="/css/standard.css"/>" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
</head>

<body BGCOLOR="#FFFFFF">

		<div align = center>
			<table style="width: 80%">
				<tr>
					<td align="center">
						<img src="<c:url value="/images/logo.png"/>" align="top" height="45"/>
					</td>
				</tr>
				<tr>
					<td align="center" valign="bottom">
						<h1><c:out value="${title}" /></h1>
					</td>
				</tr>

			</table>
		</div>
		
		<div align = center>	
			<table style="width: 100%;">
				<tr>
					<td align=center>
						<table style="width: 80%; border-collapse: collapse">
							<tr style="background-color: #0071CF">
								<td colspan="4" align="left">
									<h3><c:out value="${subTitle}" /></h3>
								</td>
							</tr>
							<tr style="height: 10px">
								<td colspan="5"></td>
							</tr>
		                    <tr>
			                    <td colspan="4">
			                    	
		                    	</td>
		                    </tr>
		                    <tr>
								<td>
					                <div class="error"><c:out value="${extractErrors}" /></div>
			                    </td>
							</tr>
							<tr>
								<td>
					                <div><c:out value="${message}" /></div>
			                    </td>
							</tr>
						</table>
					</td>
				</tr>
				<tr></tr>
				<tr></tr>
				<tr>
					<td>
						<div align=center>
							<a href="<c:url value="${parentPageLink}"/>" class=standard><c:out value="${parentPage}" /></a>
						</div>
						<div align=center>
							<a href="<c:url value="/"/>" class=standard>Return to Main Page</a>
						</div>
					</td>
					
				</tr>
			</table>
		</div>
</body>

</html>
