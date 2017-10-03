<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="page/js/jquery/jquery-1.9.1.min.js"></script>
<script src="page/js/jquery/jquery-ui.min.js"></script>
<!-- Signature Code -->
<link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.0/themes/south-street/jquery-ui.css" rel="stylesheet">
<link href="page/css/jquery.signature.css" rel="stylesheet"
	type="text/css" />
<style>
.kbw-signature { width: 400px; height: 200px; }
</style>
<script type="text/javascript" src="page/js/jquery.signature.js"></script>
<!-- Signature Code -->	
<script type="text/javascript">
function highLight(id){

 	document.getElementById(id).parentNode.id="current";
 	
}
</script>
<!-- <script>
$(function() {
	$('#sig').signature();
	$('#clear').click(function() {
		$('#sig').signature('clear');
	});
	$('#json').click(function() {
		alert($('#sig').signature('toJSON'));
	});
	
});
</script>-->


<div class="Header">
  <div class="logo">
	<img src="page/images/mainimagelogo.jpg" alt="logo" border="0"/></div>
  <div class="textlinks">
    <div class="MenuText">
	<a href="login">Home</a>&nbsp;|
	<a href="logout-home">Logout</a>
	</div>
	
  </div>
  
</div>
<div id="tabs">
            <ul>
               <li><a href="login" id="main">
                            <span>Main Page</span></a>
               </li>
               <%
               if(session.getAttribute("memberId") != null){
            	   
               
               %>
                   <li>
	                   <a href="<%="editUser?mbrId="+session.getAttribute("memberId")%>"  styleId="category"><span>Change User Information</span>
    		           </a>
	               </li>
	               <%
	               }
	               %>
               </ul>

</div>

<br/><br/>
