<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="constants.AttributeConst" %>
<%@ page import="constants.ForwardConst" %>

<c:set var="action" value="${ForwardConst.ACT_EMP.getValue()}" />
<c:set var="commIdx" value="${ForwardConst.CMD_INDEX.getValue()}" />

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="${AttributeConst.EMP_CODE.getValue()}">社員番号</label><br />
<input type="text" name="${AttributeConst.EMP_CODE.getValue()}" value="${employee.code}" />
<br /><br />

<label for="${AttributeConst.EMP_DEPT.getValue()}">所属部署</label><br />
<select name="${AttributeConst.EMP_DEPT.getValue()}">
    <option value="${AttributeConst.DEPT_GENERAL_AFFAIRS.getValue()}"
        <c:if test="${employee.department == AttributeConst.DEPT_GENERAL_AFFAIRS.getValue()}">selected</c:if>>総務部</option>
    <option value="${AttributeConst.DEPT_HUMAN_RESOURCES.getValue()}"
        <c:if test="${employee.department == AttributeConst.DEPT_HUMAN_RESOURCES.getValue()}">selected</c:if>>人事部</option>
    <option value="${AttributeConst.DEPT_ACCOUNTING.getValue()}"
        <c:if test="${employee.department == AttributeConst.DEPT_ACCOUNTING.getValue()}">selected</c:if>>経理部</option>
    <option value="${AttributeConst.DEPT_BUSINESS.getValue()}"
        <c:if test="${employee.department == AttributeConst.DEPT_BUSINESS.getValue()}">selected</c:if>>営業部</option>
</select>
<br /><br />

<label for="${AttributeConst.EMP_POS.getIntegerValue()}">役職</label><br />
<select name="${AttributeConst.EMP_POS.getIntegerValue()}">
    <option value="${AttributeConst.POS_GENERAL.getIntegerValue()}"
        <c:if test="${employee.position == AttributeConst.POS_GENERAL.getIntegerValue()}">selected</c:if>>一般</option>
    <option value="${AttributeConst.POS_SECTION_CHIEF.getIntegerValue()}"
        <c:if test="${employee.position == AttributeConst.POS_SECTION_CHIEF.getIntegerValue()}">selected</c:if>>課長</option>
    <option value="${AttributeConst.POS_MANAGER.getIntegerValue()}"
        <c:if test="${employee.position == AttributeConst.POS_MANAGER.getIntegerValue()}">selected</c:if>>部長</option>
</select>
<br /><br />

<label for="${AttributeConst.EMP_NAME.getValue()}">氏名</label><br />
<input type="text" name="${AttributeConst.EMP_NAME.getValue()}" value="${employee.name}"/>
<br /><br />

<label for="${AttributeConst.EMP_PASS.getValue()}">パスワード</label>
<input type="password" name="${AttributeConst.EMP_PASS.getValue()}" />
<br /><br />

<label for="${AttributeConste.EMP_ADMIN_FLG.getValue()}">権限</label><br />
<select name="${AttributeConst.EMP_ADMIN_FLG.getValue()}">
    <option value="${AttributeConst.ROLE_GENERAL.getIntegerValue()}"<c:if test="${employee.adminFlag == AttributeConst.ROLE_GENERAL.getIntegerValue()}">selected</c:if>>一般</option>
    <option value="${AttributeConst.ROLE_ADMIN.getIntegerValue()}"<c:if test="${employee.adminFlag == AttributeConst.ROLE_ADMIN.getIntegerValue()}">selected</c:if>>管理者</option>
</select>
<br /><br />
<input type="hidden" name="${AttributeConst.EMP_ID.getValue()}" value="${employee.id}" />
<input type="hidden" name="${AttributeConst.TOKEN.getValue()}" value="${_token}" />
<button type="submit">投稿</button>
