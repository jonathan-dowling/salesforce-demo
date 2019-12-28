<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
<title><c:out value="${title}" /></title>
<link rel="stylesheet" href="<c:url value="/css/standard.css"/>" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
</head>

<body BGCOLOR="#FFFFFF">
	<div align = center>	
		<table style="width: 100%;">
			<tr>
				<td align=center>
					<table style="width: 80%; border-collapse: collapse">
						<tr>
							<td colspan="4" align="left">
								<h3><c:out value="${subTitle}" /></h3>
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
		</table>
	</div>
</body>
</html>
