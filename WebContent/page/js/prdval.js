// JavaScript Document
function checkdate()
{
alert("Pls select date from Calendar");
}

function makeArray() {
    for (i = 0; i<makeArray.arguments.length; i++)
        this[i + 1] = makeArray.arguments[i];
}

var months = new makeArray('01','02','03','04',
                           '05','06','07','08','09',
                           '10','11','12');
var ExpDate;

function addMonths() {
	 
	noofmonths=parseInt(document.getElementById("SelMonthId").value);
	var val=document.getElementById("ReleaseDateId").value;	
	var date=val.substring(0,2);
	var month=val.substring(3,5);
	var year=val.substring(6,10);
	var today=new Date(month+"/"+date+"/"+year);
    var date1 = new Date(today.getYear(),today.getMonth() + noofmonths,today.getDate(),today.getHours(),today.getMinutes(),today.getSeconds());
    var newdate=date1.getDate();
	if(newdate<"10")
	{
		newdate="0"+newdate;
	}
   expDate= newdate + '-' + months[date1.getMonth() + 1] + '-' + date1.getYear();
 document.getElementById("ExpiryDateId").value= expDate;

}

function warDays()  {
	
	noofdays=parseInt(document.getElementById("SelDaysId").value);
	var val=document.getElementById("ExpiryDateId").value;	
	var date=val.substring(0,2);
	var month=val.substring(3,5);
	var year=val.substring(6,10);
	var today=new Date(month+"/"+date+"/"+year);
    var date1 = new Date(today.getYear(),today.getMonth(),today.getDate() - noofdays,today.getHours(),today.getMinutes(),today.getSeconds());
    var newdate=date1.getDate();
	if(newdate<"10")
	{
		newdate="0"+newdate;
	}
   warDate= newdate + '-' + months[date1.getMonth() + 1] + '-' + date1.getYear();
   document.getElementById("WarningDateId").value= warDate;

}

function checkForm() {
  	doe=document.getElementById("DateOfEntryId").value;
	//refcode=document.getElementById("ReferenceCodeId").value;
	prdname=document.getElementById("ProductNameId").value;
	prdmod=document.getElementById("ProductModelId").value;
	actdate=document.getElementById("ActivationDateId").value;
	mon=document.getElementById("SelMonthId").value;
	days=document.getElementById("SelDaysId").value;
	manu=document.getElementById("ManufacturerId").value;
	manulink=document.getElementById("ManufacturerLinkId").value;
	mar=document.getElementById("MarketingId").value;
	prddesc=document.getElementById("DescriptionId").value;
	
  	 if (doe == "") {
  	hideAllErrors();
	document.getElementById("DateofEntryError").style.display = "inline";
	document.getElementById("DateOfEntryId").select();
	document.getElementById("DateOfEntryId").focus();
  	return false;
	}
	
	else if (prdname == "") {
  	hideAllErrors();
	document.getElementById("PrdNameError").style.display = "inline";
	document.getElementById("ProductNameId").select();
	document.getElementById("ProductNameId").focus();
  	return false;
	}
	else  if (prdmod == "") {
  	hideAllErrors();
	document.getElementById("PrdModelError").style.display = "inline";
	document.getElementById("ProductModelId").select();
	document.getElementById("ProductModelId").focus();
  	return false;
	}
	
	else if (actdate == "") {
  	hideAllErrors();
	document.getElementById("ActivationDateError").style.display = "inline";
	document.getElementById("ActivationDateId").select();
	document.getElementById("ActivationDateId").focus();
  	return false;
	}
	else if (mon == "0") {
  	hideAllErrors();
	document.getElementById("SelMonthError").style.display = "inline";
	//document.getElementById("").select();
	document.getElementById("SelMonthId").focus();
  	return false;
	}
	else if (days == "0") {
  	hideAllErrors();
	document.getElementById("SelDayError").style.display = "inline";
	//document.getElementById("TelephoneNoId").select();
	document.getElementById("SelDaysId").focus();
  	return false;
	}
	else if (manu == "0") {
  	hideAllErrors();
	document.getElementById("ManuError").style.display = "inline";
	//document.getElementById("ManufacturerId").select();
	document.getElementById("ManufacturerId").focus();
  	return false;
	}
	else if (manulink == ""){
	hideAllErrors();
	document.getElementById("ManuLinkError").style.display = "inline";
	document.getElementById("ManufacturerLinkId").select();
	document.getElementById("ManufacturerLinkId").focus();
	return false;
	}
	else if (mar == "0") {
  	hideAllErrors();
	document.getElementById("MarketingError").style.display = "inline";
	//document.getElementById("MarketingId").select();
	document.getElementById("MarketingId").focus();
  	return false;
	}
	else if (prddesc == ""){
	hideAllErrors();
	document.getElementById("ProductDescError").style.display = "inline";
	document.getElementById("DescriptionId").select();
	document.getElementById("DescriptionId").focus();
	return false;
	}

	return true;
  }
 
 function hideAllErrors() {
document.getElementById("DefaultMsgError").style.display = "none"
 document.getElementById("DateofEntryError").style.display = "none"
  //document.getElementById("RefCodeError").style.display = "none"
    document.getElementById("PrdNameError").style.display = "none"
 document.getElementById("PrdModelError").style.display = "none"
 document.getElementById("ActivationDateError").style.display = "none"
 document.getElementById("SelMonthError").style.display = "none"
  document.getElementById("SelDayError").style.display = "none"
 document.getElementById("ManuError").style.display = "none"
 document.getElementById("MarketingError").style.display = "none"
 document.getElementById("ManuLinkError").style.display = "none"
 document.getElementById("ProductDescError").style.display = "none"

  }