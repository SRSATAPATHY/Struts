<%@taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
    function submitForm() {
        document.forms[0].action = "UserAction.do?method=add";
        document.forms[0].submit();
    }
</script>
<script type="text/javascript">
    function submitForm1() {
        document.forms[0].action = "UserAction.do?method=update";
        document.forms[0].submit();
    }
</script>
<script type="text/javascript">
    function submitForm2() {
        document.forms[0].action = "UserAction.do?method=delete";
        document.forms[0].submit();
    }
</script>
</head>
<body bgcolor="pink">
<html:form action="/UserAction.do">
    <table>
        <tr>
            <td><bean:write name="UserForm" property="message" /></td>
        </tr>
        <tr>
            <td><html:submit value="Add" onclick="submitForm()" /></td>
        </tr>
        <tr>
            <td><html:submit property="method" value="update" onclick="submitForm1()" /></td>
        </tr>
        <tr>
            <td><html:submit property="method" value="delete" onclick="submitForm2()" ></html:submit></td>
        </tr>
    </table>
</html:form>
</body>
</html>
