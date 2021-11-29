<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="constants.AttributeConst" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="actRep" value="${ForwardConst.ACT_REP.getValue()}" />
<c:set var="commApp" value="${ForwardConst.CMD_APPROVE.getValue()}" />

<form method="POST"
    action="<c:url value='?action=${actRep}&command=${commApp}' />">
    <select name="${AttributeConst.REP_APPROVAL.getValue()}">
        <option value="${AttributeConst.APPROVE_FLAG_TRUE.getIntegerValue()}"
            <c:if test="${report.approval == AttributeConst.APPROVE_FLAG_TRUE.getIntegerValue()}">selected</c:if>>承認</option>
        <option value="${AttributeConst.APPROVE_FLAG_FALSE.getIntegerValue()}"
            <c:if test="${report.approval == AttributeConst.APPROVE_FLAG_FALSE.getIntegerValue()}">selected</c:if>>未承認</option>
        <option value="${AttributeConst.APPROVE_FLAG_RETRY.getIntegerValue()}"
            <c:if test="${report.approval == AttributeConst.APPROVE_FLAG_RETRY.getIntegerValue()}">selected</c:if>>再提出</option>
    </select>
    <input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
    <input type="hidden" name="${AttributeConst.REP_ID.getValue()}" value="${report.id}" />
    <button type="submit">変更</button>
</form>
&nbsp;
