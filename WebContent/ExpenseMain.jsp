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
<script src="page/js/addmanpower.js"></script>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<form:form name="accountForm" action="addPaymentVoucher"
		commandName="accountFormBean" method="post">


		<br />
		<br />
		<table cellpadding="0" cellspacing="0" width="820" align="center">
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${mismatch != null}">
						<p class="alert-Error">
							<c:out value="${mismatch}" />
						</p>
					</c:if></td>
			</tr>
			<tr>
				<td colspan="2"><c:if test="${info != null}">
						<p class="alert-Info">
							<c:out value="${info}" />
						</p>
					</c:if></td>
			</tr>
			<tr>
				<td colspan="2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr class="Heading3">
							<td>Project Information</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td valign="top">
								<table cellspacing="1" cellpadding="5" width="100%"
									class="bgcolorGray">

									<tr>
										<td class="FormContentLabel requiredFileds">Project Name</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" /></td>
									</tr>
									<tr>
										<td class="FormContentLabel requiredFileds">Client</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" />
										</td>

									</tr>
									<tr>
										<td class="FormContentLabel requiredFileds">Owner</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" /></td>

									</tr>
									<tr>
										<td class="FormContentLabel requiredFileds">PMC</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" /></td>
									</tr>
									<tr>
										<td class="FormContentLabel requiredFileds">Contractor</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" /></td>

									</tr>
									<tr>
										<td class="FormContentLabel requiredFileds">REPRESENTATIVE/FOCAL
											POINT</td>
										<td class="FormSmallContentLabel">:</td>
										<td><input type="text" name="projectName" Class="Fields" /></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td colspan="2">&nbsp;</td>
						</tr>
						<tr>
							<td colspan="2">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">

									<tr>
										<td colspan="2">
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">

												<tr>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td valign="top">
														<table cellspacing="0" id="tableId" cellpadding="5"
															border="0" width="100%" class="bgcolorGray">
															<tr>
																<td class="FormContentLabel">PROJECT JOBS/STAGE</td>
																<td class="FormContentLabel">COMPLETION DATES</td>
																<td class="FormContentLabel">DURATIONS (days)</td>
																<td class="FormContentLabel">Original Contract
																	Value</td>
																<td class="FormContentLabel">VO. 1 Budget(70% of
																	Contract Value)</td>
																<td class="FormContentLabel">VO.1 New Starting
																	Dates</td>
																<td class="FormContentLabel">VO.1 New Completion
																	Dates</td>
																<td class="FormContentLabel">VO. 1 DURATIONS (Days)</td>
																<td class="FormContentLabel">VO. 1 CONTRACT VALUE</td>
																<td class="FormContentLabel">VO. 1 BUDGET</td>
																<td class="FormContentLabel">VO. 2 New Starting
																	Dates</td>
																<td class="FormContentLabel">VO. 2 New Completion
																	Dates</td>
																<td class="FormContentLabel">VO. 2 DURATIONS</td>
																<td class="FormContentLabel">VO. 2 Contract Value</td>
																<td class="FormContentLabel">VO. 2 BUDGET</td>
																<td class="FormContentLabel">Actual Expenses</td>
																<td class="FormContentLabel">Profit/loss against
																	Budget</td>
																<td class="FormContentLabel">Fee Schedule</td>
																<td class="FormContentLabel">Remarks about Payment</td>

															</tr>
															<tr>
																<td class="FormContentLabel">Project Overall</td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>

															</tr>
															<tr>
																<td class="FormContentLabel">Master Plan</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>
															<tr>
																<td class="FormContentLabel">Concept Design</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>

															</tr>
															<tr>
																<td class="FormContentLabel">DC1 Obtainment Stage</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>
															<tr>
																<td class="FormContentLabel">Schematic Design</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>
															<tr>
																<td class="FormContentLabel">Detail Design</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>
															<tr>
																<td class="FormContentLabel">DC2 Obtainment stage</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>
															<tr>
																<td class="FormContentLabel">Tender & Const.
																	documentation</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
															</tr>

															<tr>
																<td class="FormContentLabel">Site Supervision</td>

																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
																<td><input type="text" id="chequeNumber0"
																	name="chequeNumber0" size="7" /></td>
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
											<table width="100%" border="0" cellspacing="0"
												cellpadding="0">
												<tr class="Heading3">
													<td>Financial Status</td>
												</tr>
												
												<tr>
													<td valign="top">
														<table cellspacing="0" id="tableId" cellpadding="5"
															border="0" width="100%" class="bgcolorGray">


															<tr>
																<td valign="top">
																	<table cellspacing="0" id="tableId" cellpadding="5"
																		border="0" width="100%" class="bgcolorGray">
																		<tr>
																			<td class="FormContentLabel requiredFileds">ORIGINAL</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>
																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">CONTRACT
																				VALUE</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>

																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">INVOICED
																				VALUE</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>

																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">INVOICE
																				COUNT</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>
																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">RECEIVED
																				VALUE</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>

																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">REMAINING
																				VALUE</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>
																		</tr>
																		<tr>
																			<td class="FormContentLabel requiredFileds">REMARKS</td>
																			<td class="FormSmallContentLabel">:</td>
																			<td><input type="text" name="projectName"
																				Class="Fields" /></td>
																		</tr>




																	</table>
																</td>
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
											<table width="100%" border="0" cellspacing="0" 
												cellpadding="0">
												<tr class="Heading3">
													<td>Manpower Expenses</td>
												</tr>
												
												<tr>
													<td valign="top">
														<table cellspacing="0" id="manpowerId" cellpadding="0" 
															border="1" width="40%" class="bgcolorGray">
															<tr>
																<td  class="FormContentLabel">Name</td>
																<td class="FormContentLabel">Designation</td>
																<td  class="FormContentLabel">Expense M/H</td>
																
																<td  class="FormContentLabel">ADD</td>
																<td  class="FormContentLabel">Remove</td>
															</tr>
															<tr>
															<td><input type="text"  id="name0"
																	name="name0"  /></td>
																<td><input type="text" id="designation0"
																	name="designation0"  /></td>
																<td><a href="manpower1" id="expense0">Expense M/H</a></td>
																<td><input type="button" name="add" value="Add" id="chequeNumber0"
																	name="chequeNumber0"  onclick="addRow()" /></td>
																<td><input type="button" name="remove" value="Remove" id="chequeNumber0"
																	name="chequeNumber0" onclick="removeRow('0')" /></td>
																
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

									<tr>
										<td colspan="2" valign="top">&nbsp;</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>

		<br />
		<br />
	</form:form>
	<jsp:include page="Footer.jsp" />

</body>
</html>
