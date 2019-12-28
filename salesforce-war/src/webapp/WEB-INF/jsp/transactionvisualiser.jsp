<%@page contentType="image/jpeg" %>
<%@page import="lu.scoteqint.common.enums.SEITransactionType"%>
<%@page import="lu.scoteqint.extract.web.TransactionVisualiser"%>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %><%
	TransactionVisualiser transactionVisualiser = (TransactionVisualiser) request.getAttribute("transactionVisualiser");
  	OutputStream os = response.getOutputStream();
	String txTypeLabel = (String) request.getAttribute("txType");
	SEITransactionType txType = SEITransactionType.getInstance(txTypeLabel);
	boolean showAll = Boolean.parseBoolean((String) request.getAttribute("showAll"));
	transactionVisualiser.outputTransactionVisualisation(txType, showAll, os);
    os.flush();
    os.close();
    out.clear(); 
    out = pageContext.pushBody(); 
%>