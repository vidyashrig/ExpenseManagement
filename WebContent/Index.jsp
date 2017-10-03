<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Login - Expense Management</title>
<link href="page/css/stylesControlPanel.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--
.style1 {font-weight: bold}
-->
</style>
<script type="text/javascript">
function validateLogin(){
	if(document.getElementById("user").value==""){
	 alert("User Name missing");
	 return false;
	}else if(document.getElementById("pass").value==""){
	 alert("Password is missing");
	 return false;
	}
	return true;
}
</script>

</head>
<body>

<form name="memberForm"   method="post" action="login-home"  onsubmit="return validateLogin()" >
	<table width="800" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
  <tr>
    <td height="100">&nbsp;</td>
  </tr>
  <tr>
    <td height="10" background="/page/images/img_login_bgb.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="25">&nbsp;</td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td  width="475"><img src="page/images/login_bg2.jpg" width="475" height="83" alt="" /></td>
          </tr>
          <tr>
            <td><img src="page/images/login_bg2.jpg" width="475" height="105" alt="" /></td>
          </tr>
          <tr>
            <td><img src="page/images/login_bg3.jpg" width="475" height="72" alt="" /></td>
          </tr>
        </table></td>
        <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="190" background="page/images/login_bgbox.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
                <td><table width="86%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td colspan="2" >&nbsp;</td>
                  </tr>
				     <tr>
                    <td colspan="2" >&nbsp;</td>
                  </tr>
				   <tr>
                    <td colspan="2" >&nbsp;</td>
                  </tr>
				  <tr>
                    <td colspan="2" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="136" style="padding:10px,10px;" align="right"><strong>Username&nbsp;&nbsp;</strong>:</td>
                    <td width="126" style="padding:10px,10px;"><div align="right">
                      <input type="text" autofocus="true"  name="mbrLoginName" id="user"  size="25" />
                    </div></td>
                  </tr>
				     <tr>
                    <td colspan="2" >&nbsp;</td>
                  </tr>
                  <tr>
                    <td width="136" align="right"><strong>Password</strong>&nbsp;&nbsp;:</td>
                    <td  width="126" ><div align="right">
                      <input type="password" name="mbrPassword" id="pass" size="25" />
                    </div></td>
                    </tr>
				     <tr><td>&nbsp;</td>
                    <td><c:if test="${loginFlag != null}" ><strong><c:out value="${loginFlag}" /></strong></c:if></td>
                  </tr>
                  
                  <tr>
                    <td width="136" >&nbsp;</td>
                    <td width="126"><input type="submit" value="Login" style="color:#FFFFFF; background-color:#3C586B;" />&nbsp;</td>
                  <td width="136" >&nbsp;</td>
                  </tr>
                  
                </table></td>
                <td>&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td  height="75" valign="top"><img src="page/images/login_bg4.jpg" width="325" height="72" alt="" /></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>

  <tr>
    <td height="25">&nbsp;</td>
  </tr>
  <tr>
    <td height="10" background="page/images/img_login_bgb.jpg">&nbsp;</td>
  </tr>
  <tr>
   </tr>
</table>
</form>
	</body>
</html>
