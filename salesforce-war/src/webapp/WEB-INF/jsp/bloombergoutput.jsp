<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Bloomberg Admin</title>
		<link rel="stylesheet" href="<c:url value="/css/standard.css"/>" />
    </head>

    <body BGCOLOR="#FFFFFF">
    
    <div align="center">
		<table style="width:80%">
			<tr>
				<td align="center">
					<img SRC="<c:url value="/images/logo.png"/>" align="top" height="45" />
				</td>
			</tr>	
			<tr>
				<td align="center" valign="bottom">
					<h1>Bloomberg Admin</h1>
				</td>
			</tr>
			
		</table>
	</div>

    <div align="center">
        <table>
            <tr>
            	<td>
                 <table>
                     <tr>
                     	<td style="text-align:center"><c:out value="${output}" /></td>
                     </tr>
                     <tr>
                     	<td style="text-align:center">
                     		<a href="<c:url value="/"/>" class="standard">Return to main Extract Service Manager Page</a>
                     	</td>
                     </tr>
                     <tr style="height:30px"><td><br></td></tr>
                 </table>
            	</td>
            </tr>
        </table>
    </div>

    </body>

</html>