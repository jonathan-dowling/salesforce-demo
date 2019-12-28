<%--
 * Filename: output.jsp
 * 
 * Description:
 * Web page use to return the output from the controller. 
 *
--%>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <title>Athora Ireland: Asset Information</title>
		<link rel="stylesheet" href="<c:url value="/css/standard.css"/>" />
    </head>

    <body BGCOLOR="#FFFFFF">
    
    <div align="center">
		<table style="width:50%">
			<tr>
    			<td align="center">
    				<img src="<c:url value="/images/logo.png"/>" width="200">
    			</td>
    		</tr>
    		<tr>
        		<td align="center">
					<h1>Asset Information</h1>
				</td>
			</tr>
			<tr><td colspan="2"><br></td></tr>
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
                    	<tr style="height:30px">
                    		<td><br></td>
                    	</tr>
						<tr>
							<td style="text-align:center">
								<a href="<c:url value="/secure/assetinfo/"/>" class=standard>Return to Asset Information Page</a>
							</td>
						</tr>
                    	<tr>
                    		<td style="text-align:center">
                    			<a href="<c:url value="/"/>" class=standard>Return to main Extract Service Manager Page</a>
                    		</td>
                    	</tr>
                	</table>
            	</td>
            </tr>
        </table>
    </div>

</body>

</html>