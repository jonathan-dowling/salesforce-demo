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
        <title>Aegon Ireland - Extract Service</title>
        <STYLE TYPE="text/css"><!--
        A.standard:link {color: #440000; font-weight:bold; text-decoration: none}
        A.standard:active {color: #440000; font-weight:bold; text-decoration: none}
        A.standard:visited {color: #440000; font-weight:bold; text-decoration: none}
        A.standard:hover {color: #FF0000; font-weight:bold; text-decoration: underline}
        --></STYLE>
    </head>

    <!-- BODY BGCOLOR="#000022" -->
    <body BGCOLOR="#FFFFFF">

        <IMG SRC="<c:url value="/images/logo.gif" />" BORDER=0 />
        <CENTER>
            <TABLE WIDTH=90% BORDER=1 CELLPADDING=10 CELLSPACING=1>
                <TR><TD>
                    <TABLE WIDTH=100% BORDER=0 CELLPADDING=5 CELLSPACING=5>
                        <TR>
                            <TD ALIGN=CENTER>
                                <FONT FACE="Verdana" SIZE=5 COLOR=#000044><B>Aegon Ireland Extract Service Manager</B></FONT>
                                <HR>
                            </TD>
                        </TR>
    
                        <TR><TD ALIGN=LEFT>
                                                <pre><c:out value="${output}" /></pre>
                        </TD></TR>

                        <TR><TD><A HREF="<c:url value="/"/>" CLASS=standard>Return to main Extract Service Manager Page</A></TD></TR>

                    </TABLE>
                </TD></TR>
            </TABLE>
        </CENTER>

    </body>

</html>