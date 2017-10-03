
// Ajax Calling Function

function getXMLRequest(){
	var xmlRequest = null;
	if (window.XMLHttpRequest) // Non-IE browsers
	{ 
	
		xmlRequest = new XMLHttpRequest();
	} 
	else if (window.ActiveXObject) // IE Browsers
	{ 
	
		
		xmlRequest = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlRequest;
};

function makeAjaxCall(url, respFunc){
	
	
	iwssAjaxReq = getXMLRequest();
	iwssAjaxReq.onreadystatechange = eval(respFunc);
	iwssAjaxReq.open("GET", url, true);
	iwssAjaxReq.send(null);
};

var jsonObject= null;


// Main Method which is going to invoke when jsp os called 


//Variable to do the the expand collapse opertion
var expandUniqueID ;
var expandedCA = new Object();

function populateData(){
	alert('in');
	makeAjaxCall("/TreeLoader_Parent","loadTreeGrid");
}

function jasperDemo(){
	
	
	makeAjaxCall("/JasperServlet","loadJasper");
}

function loadJasper(){
	
	
}

function loadTreeGrid(){
	
	
	if (iwssAjaxReq.readyState == 4 && iwssAjaxReq.status ==200){
		//Getting the Json data
		var responseText=iwssAjaxReq.responseText;
		jsonObject=eval('('+responseText+')');
		
		showTree(jsonObject);
	
	
	}
		
	
}

function showTree(jsonObject){
	
	
	var caDivId= document.getElementById("showTree");
	parentInnerHTML=caDivId.innerHTML;
	
	
	jsonObject.uniqueID=jsonObject.parentTree[0].groupLevel;
	var tgContent = new TreeGridContent(jsonObject, caDivId,true,1) ;
	
	// Initialize the Tree Grid. It will create DIV component and populate all rows.
	tgContent.initialize() ;
	
	// Show Tree Grid Component.
	tgContent.show() ;
	
}




// Expand section starts here


function expand(uniqueID){
	
	//alert('uniqueID --'+uniqueID);
	
	var childContent=expandedCA[uniqueID];
	if(childContent!=undefined && childContent.populated == true) {
		// Find out the DIV associated with uniqueID and show it. (child_+uniqueID)
	childContent.showChild(uniqueID);
	
	
	var collapseStr=null;
	if(navigator.userAgent.indexOf('MSIE')!=-1){
		
	
		collapseStr="<img src='page/images/collapse.jpg' onclick='javascript:collapse(\""+uniqueID+"\");'  style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:10px;padding-right:9px;position: static;'><span id='imgDiv_"+uniqueID+"'></span>";
	
	}else{
		collapseStr="<img src='page/images/collapse.jpg'  onclick='javascript:collapse(\""+uniqueID+"\");' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:8px;padding-right:9px;position: static;'><span id='imgDiv_"+uniqueID+"'></span>";
	}
	
	document.getElementById("expandImageDiv_"+uniqueID).innerHTML=collapseStr;
	}else{
		   
		var valArr=uniqueID.split("_");
		var ProductID=valArr[0];
		var groupId=valArr[1];
		//alert('cid -->'+cid);
		//alert('cntlId -->'+cntlId);
		
		//showAjaxLoaderImg('imgDiv_'+uniqueID);
		makeAjaxCall("/TreeLoader?productId="+ProductID+"&groupId="+groupId,"getAjaxResponse");
		expandUniqueID = uniqueID ;
	}	
	
	
}



function getAjaxResponse(){
	if (iwssAjaxReq.readyState == 4 && iwssAjaxReq.status ==200){
		//Response has come so decode it and form the JSON string
		var responseJSON=eval('('+iwssAjaxReq.responseText+')');
		
		responseJSON.uniqueID = expandUniqueID ;
		//alert('expandUniqueID'+expandUniqueID);
		divID = document.getElementById("child_"+expandUniqueID) ;
		//alert('divID --'+divID);
		var label=parseInt(divID.getAttribute('currentLabel'));
		label++;
		
		var tgContent = new TreeGridContent(responseJSON, divID,false,label) ;
		// Initialize the Tree Grid. It will create DIV component and populate all rows.
		tgContent.initialize() ;
		// Show Tree Grid Component.
		tgContent.show() ;
		if(navigator.userAgent.indexOf('MSIE')!=-1){
			collapseStr="<img src='page/images/collapse.jpg'  onclick='javascript:collapse(\""+expandUniqueID+"\");' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:10px;padding-right:9px;position: static;'><span id='imgDiv_"+expandUniqueID+"'></span>";
		}else{	
			collapseStr="<img src='page/images/collapse.jpg'  onclick='javascript:collapse(\""+expandUniqueID+"\");' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:8px;padding-right:9px;position: static;'><span id='imgDiv_"+expandUniqueID+"'></span>";
		}
		document.getElementById("expandImageDiv_"+expandUniqueID).innerHTML=collapseStr;
		
		//Inserting the details of the expanded row into global variable of js
		expandedCA[expandUniqueID]=tgContent;
		expandedCA[expandUniqueID].populated=true;
		
		

	}
}

function collapse(uniqueID){
	
	var expandStr=null;
	if(navigator.userAgent.indexOf('MSIE')!=-1){
		expandStr="<img src='page/images/expand.jpg'  onclick='javascript:expand(\""+uniqueID+"\");' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:10px;padding-right:9px;position: static;'><span id='imgDiv_"+uniqueID+"'></span>";
	}else{
		expandStr="<img src='page/images/expand.jpg'  onclick='javascript:expand(\""+uniqueID+"\");' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:8px;padding-right:9px;position: static;'><span id='imgDiv_"+uniqueID+"'></span>";
	}
	document.getElementById("expandImageDiv_"+uniqueID).innerHTML=expandStr;
	
	document.getElementById("child_"+uniqueID).style.display="none";
}