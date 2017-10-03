<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Main Page - Expense Report</title>
<link href="page/css/stylesControlPanel.css" rel="stylesheet"
	type="text/css" />
<link href="page/css/epoch_styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" media="all"
	href="page/images/skins/aqua/theme.css" title="Aqua" />
<link rel="alternate stylesheet" type="text/css" media="all"
	href="page/css/calendar-win2k-1.css" title="win2k-1" />

<script type="text/javascript" src="page/js/calendar.js"></script>
<script type="text/javascript" src="page/js/calendar-en.js"></script>
<script type="text/javascript" src="page/js/calendar-setup.js"></script>
<script type="text/javascript" src="page/js/calendar-head.js"></script>
<script type="text/javascript" src="page/js/epoch-classes.js"></script>
<script type="text/javascript" src="page/js/prdval.js"></script>
</head>
<body>
	<form:form name="accountForm" action="addPaymentVoucher"
		commandName="accountFormBean" method="post">
		<table cellpadding="0" cellspacing="0" width="820" align="left">
		   <tr><td colspan="2">&nbsp;</td></tr>
			<tr>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
									
									<tr>
										<td colspan="2">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr class="Heading3">
													<td>Actual Accumulated Worked M/H  and Expenses</td>
												</tr>
												<tr>
													<td valign="top">
														<table cellspacing="1" id="tableId" cellpadding="5"
															border="1" width="100%" class="bgcolorGray">
															<tr>
																<td align="center" class="FormContentLabel">M/H QAR</td>
																<td align="center" class="FormContentLabel">Ms.P</td>
																<td align="center" class="FormContentLabel">Ms.P</td>
																<td align="center" class="FormContentLabel">Detl</td>
																<td align="center" class="FormContentLabel">Tendr</td>
																<td align="center" class="FormContentLabel">Total</td>
																															</tr>
															<tr>
																<td class="FormContentLabel">M/H</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Rate/Hr. QAR</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Budgeted Amount</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Sub Total</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Sub Total 1QAR</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
															



														</table>
													</td>
												</tr>

												<tr>
													<td valign="top">&nbsp;</td>
												</tr>


												<tr>
													<td>&nbsp;</td>
												</tr>



											</table>
										</td>
									</tr>



									<tr>
										<td colspan="2">
											<table cellspacing="1" cellpadding="5" width="100%"
												class="bgcolorGray">


											</table>
										</td>
									</tr>
																	</table>
							</td>
						</tr>
					</table>
					
							<table cellpadding="0" cellspacing="0" width="820" align="left">
							
		
		   <tr><td colspan="2">&nbsp;</td></tr>
			<tr>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
									
									<tr>
										<td colspan="2">
											<table width="100%" border="0" cellspacing="0" 
												cellpadding="0">
												<tr class="Heading3">
													<td>ACTUAL MONITORIED MHs</td>
												</tr>
												<tr>
													<td valign="top">
														<table cellspacing="1"  id="tableId" cellpadding="5"
															border="1" width="100%" class="bgcolorGray">
															<tr>
															<td colspan="53" align="center"><strong>Year-2017</strong></td>
															</tr>
															
															<tr>
																<td width=5 align="left" class="FormContentLabel">M/H QAR</td>
																<%
																if(request.getAttribute("weekList") != null){
																List<String> weekList = (List<String>)request.getAttribute("weekList");
																for(String week:weekList){
																
																 %>
																<td width="5"  align="center" class="FormContentLabel"><%=week %></td>
																<%
																}}
																 %>
																
																															</tr>
															<tr>
																<td class="FormContentLabel">M/H</td>
																<%
																for(int i=0; i<52;i++){
																 %>
																<td width="5" ><input type="text"  size="5" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<%}
																	 %>
																
																	
																</tr>
																
																<tr>
																<td class="FormContentLabel">Rate/Hr. QAR</td>
																<%
																for(int i=0; i<52;i++){
																 %>
																<td width="5" ><input type="text"  size="5" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<%}
																	 %>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Budgeted Amount</td>
																<%
																for(int i=0; i<52;i++){
																 %>
																<td width="5" ><input type="text"  size="5" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<%}
																	 %>
																	
																</tr>
																
																
																<tr>
																<td class="FormContentLabel">Sub Total</td>
																<%
																for(int i=0; i<52;i++){
																 %>
																<td width="5" ><input type="text"  size="5" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<%}
																	 %>
																	
																</tr>
																
																<tr>
																<td class="FormContentLabel">Sub Total 1QAR</td>
																<%
																for(int i=0; i<52;i++){
																 %>
																<td width="5" ><input type="text"  size="5" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<%}
																	 %>
																	
																</tr>
																
															



														</table>
													</td>
												</tr>

												<tr>
													<td valign="top">&nbsp;</td>
												</tr>


												<tr>
													<td>&nbsp;</td>
												</tr>



											</table>
										</td>
									</tr>



									<tr>
										<td colspan="2">
											<table cellspacing="1" cellpadding="5" width="100%"
												class="bgcolorGray">


											</table>
										</td>
									</tr>
									

									<tr>
										<td colspan="2" valign="top">&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
					
					<table cellpadding="0" cellspacing="0" width="820" align="left">
		
		   <tr><td colspan="2">&nbsp;</td></tr>
			<tr>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
									
									<tr>
										<td colspan="2">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr class="Heading3">
													<td>Actual Accumulated Worked M/H  and Expenses</td>
												</tr>
												<tr>
													<td valign="top">
														<table cellspacing="1" id="tableId" cellpadding="5"
															border="1" width="100%" class="bgcolorGray">
															<tr>
															<td align="center" ><strong>Year</strong></td>
																<td align="center"  colspan="5"><strong>2017</strong></td>
																<td align="center"  colspan="2"><strong>Total From Project Start Date</strong></td>
															</tr>
															<tr>
																<td align="center" class="FormContentLabel">Stage</td>
																<td align="center" class="FormContentLabel">Ms.P</td>	
																<td align="center" class="FormContentLabel">Ms.P</td>
																<td align="center" class="FormContentLabel">Detl</td>
																<td align="center" class="FormContentLabel">Tendr</td>
																<td align="center" class="FormContentLabel">Total2017</td>
																<td align="center" class="FormContentLabel">MP W/O LS & ESB</td>
																<td align="center" class="FormContentLabel">MP With LS & ESB</td>
																															</tr>
															<tr>
																<td class="FormContentLabel">M/H</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Rate/Hr</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Acct Cost</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Net M/H</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
																
																<tr>
																<td class="FormContentLabel">Act Total MP Cost</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																	<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0"  /></td>
																</tr>
															



														</table>
													</td>
												</tr>

												<tr>
													<td valign="top">&nbsp;</td>
												</tr>


												<tr>
													<td>&nbsp;</td>
												</tr>



											</table>
										</td>
									</tr>



									<tr>
										<td colspan="2">
											<table cellspacing="1" cellpadding="5" width="100%"
												class="bgcolorGray">


											</table>
										</td>
									</tr>
									<tr>
										<td colspan="2"><input type="submit" value="Save"
											name="Save" class="smallButton"
											onclick="return validateMandatoryFields()" /> &nbsp; <input
											type="button" value="Cancel" name="Cancel"
											class="smallButton" onclick="cancel()" /></td>
									</tr>
																	</table>
							</td>
						</tr>
					</table>
	</form:form>
	<jsp:include page="Footer.jsp" />

</body>
</html>
