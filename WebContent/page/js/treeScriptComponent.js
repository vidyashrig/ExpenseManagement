
 TreeGridContent = function (jsonData,_parentDIV,isTop,label){
	 
	 var id ;
	
	// Parent DIV Component
	this.parentDIV = _parentDIV ;
	
	// RowCount
	var rowCount=0;
	
	// Variable to hold data. Assuming we are getting data in JSON Object format.
	this.data = jsonData ;
	
	//Top row indicator
	this.isTop=isTop;
	//Label of row (1 for top )
	this.label=label;
	
	
	
	// Array to hold list of TreeGridRow
	var listTGRow = new Array();
	rowCount = 0;
	
	var divID ;
	
	/*var uniqueID="1";
	var firstColumnValue="1";
	var secondColumnValue="venkat";
	var accType="M";
	var greyRowIndicator="header white";
	var label="1";
	var styleClass="style='background-color: #FFFFFF;'";*/
	
	// Populate/Initialize Rows.
	this.initialize = function () {
		
		this.id = 'content_uniqueID_'+this.data.uniqueID ;
		
		parentInnerHTML = _parentDIV.innerHTML ;
		
		if(this.isTop==true){
			parentInnerHTML = parentInnerHTML + "<div id='"+this.id+"'class='table_inner_content' ></div>" ;
		}else{
			parentInnerHTML = parentInnerHTML + "<div id='"+this.id+"'  ></div>" ;
		}
		_parentDIV.innerHTML = parentInnerHTML ;
		
		divID = document.getElementById(this.id);
		divID.style.display = "none" ;
		
		var isRoot = _parentDIV.getAttribute('parentClassName') == undefined ;
		var headerClass = null ;
		var styleClass=null;
		// Iterate over data and create TreeGridRow instance for each row present in data.
		
		
		for(var i=0;i<=this.data.parentTree.length-1;i++){
	
			
			
			var controlAcc=this.data.parentTree[i]; 
			   
			   var productName=controlAcc.data;
			     var productId=controlAcc.productId;
			     var hasChild=controlAcc.subChild;
			     var productDetail=controlAcc.dataName;
			     var grouplevelSpacing=controlAcc.groupLevel; 
			     grouplevelSpacing=++grouplevelSpacing;
			    
			     if(isRoot==false) {
			    	 // This block gets called if we are in child node.
			    	
			    	 headerClass = _parentDIV.getAttribute('parentClassName') ;
				    	 if(headerClass == "header white"){
				    		 styleClass="style='background-color: #FFFFFF;'";
				    	 }else{
				    		 styleClass="";
				    	 }
			    	 } else {
			    	 // This block gets called if we are in root node.
			    	greyRowIndicator=i%2;
			    	
				     if(greyRowIndicator==0){
				    	   
				    	    styleClass="style='background-color: #FFFFFF;'";
				        	headerClass = "header" ;
				        	
				        }else{
				        	 
				        	styleClass="";
				        	headerClass = "header" ;
				        }
			     }
			    
		//alert('headerClass 1--'+headerClass);
			this.addRow(productId+"_"+grouplevelSpacing,productName,productDetail,hasChild,headerClass,label,styleClass);
			
		}
	};
	
	// Function to Add Row.
	
	this.addRow = function (uniqueID, firstColumnValue,secondColumnValue,accType,headerClass,label,styleClass) {
		//alert('uniqueID --'+uniqueID);
		//alert('firstColumnValue --'+firstColumnValue);
		//alert('secondColumnValue --'+secondColumnValue);
		//alert('checkBoxValue --'+checkBoxValue);
		//alert('accType --'+accType);
		//alert('greyRowIndicator --'+headerClass);
		
		//alert('initailControlAccMap --'+initailControlAccMap);
		//alert('styleClass --'+styleClass);
		//alert("end");
		// Create TreeGridRow instance and adds in list.
		//alert('headerClass 2--'+headerClass);
		listTGRow[rowCount] = new TreeGridRow() ;
		listTGRow[rowCount].setRowContent(uniqueID, firstColumnValue,secondColumnValue,accType,headerClass,label,styleClass);
		innerHTML = divID.innerHTML + listTGRow[rowCount].getHTML() ;
		//alert('innerHTML --'+innerHTML);
		divID.innerHTML = innerHTML ;

		rowCount++ ;

	} ;
	
	
	// Function to Populate Child Content. Input is TreeGridContent
	this.populateChildContent = function (content) {
	
		
		
	} ;
	
	// Function to Expand
	this.expand = function() {
	
		
	} ;
	
	// Function to Collapse
	this.collapse = function (rowIndex) {
	
	} ;
	
	// Show this component.
	this.show = function() {
		
		document.getElementById(this.id).style.display = "block" ;
	} ;
	
	// Show child of  this component.
	this.showChild = function(identifier) {
		
		document.getElementById('child_'+identifier).style.display = "block" ;
	} ;
	
	// Hide this component.
	this.hide = function () {
		
		document.getElementById(this.id).style.display = "none" ;
	} ;
	// Remove the component.
	this.removeContent = function () {
		
		document.getElementById(this.id).innerHTML="";
	} ;
	// Refresh the component.
	this.refreshData = function () {
		
		document.getElementById(this.id).focus();
	} ;
	
	
	
};












TreeGridRow = function (){

var templateHTML = "<div class='row_block' > " +
						"<div class='table_row_grey' $applyStyle$> 	" +
							"<div class='$header$'> " +
								"<div id='expandImageDiv_$expandImg$' >$imageContent$</div>" +
								"<div class='colunm1'>$firstColumnValue$</div>" +
								"<div class='colunm2'>$secondColumnValue$</div>" +
							"</div>" +
							"<div id='child_$uniqueID$' parentClassName='$header$' style='padding:0 15px;' currentLabel='$currentLabel$'> " +
							"</div> " +
						"</div> " +
					"</div>" ; 

// Set Row Content
this.setRowContent = function(uniqueID, firstColumnValue,secondColumnValue,accType,headerClass,labelValue,styleClass){
	if(accType !="0"){
    	if(navigator.userAgent.indexOf('MSIE')!=-1){
    	
    		expandIcon="<img id='imageExpand_$imageDivUniqueId$' src='page/images/expand.jpg'  onclick='$imgUniqueFn$' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:10px;padding-right:9px;position: static;'><span id='imgDiv_$imageDiv$'  ></span>";
		}else{
			
			expandIcon="<img id='imageExpand_$imageDivUniqueId$' src='page/images/expand.jpg'  onclick='$imgUniqueFn$' style='background-repeat: no-repeat; height: 11px; width:11px; float: left; cursor: pointer; padding-top:8px;padding-right:9px;position: static;'><span id='imgDiv_$imageDiv$'  ></span>";
		}
	}else{
    	expandIcon="<div style='background-repeat: no-repeat; height: 11px; width:11px; float: left;margin: 7px 9px 0px 0px;padding-bottom: 2px;vertical-align: bottom;'/>";
    }
	//alert('headerClass 3--'+headerClass);
	templateHTML = templateHTML.replace('$header$', headerClass) ;
	templateHTML = templateHTML.replace('$header$', headerClass) ;
	templateHTML = templateHTML.replace('$uniqueID$', uniqueID) ;
	templateHTML = templateHTML.replace('$expandImg$', uniqueID) ;

    templateHTML = templateHTML.replace('$firstColumnValue$', firstColumnValue) ;
    templateHTML = templateHTML.replace('$secondColumnValue$', secondColumnValue);
    templateHTML = templateHTML.replace('$firstColumn$', firstColumnValue) ;
    templateHTML = templateHTML.replace('$secondColumn$', secondColumnValue);
    expandIcon = expandIcon.replace('$imgUniqueFn$', 'javascript:expand(\"'+uniqueID+'\");') ;
    expandIcon = expandIcon.replace('$imageDiv$', uniqueID) ;
    expandIcon = expandIcon.replace('$imageDivUniqueId$', uniqueID) ;
    templateHTML = templateHTML.replace('$imageContent$', expandIcon) ;
    templateHTML = templateHTML.replace('$presentLabel$', labelValue) ;
    templateHTML = templateHTML.replace('$currentLabel$', labelValue) ;
    templateHTML = templateHTML.replace('$uniqueIdentifier$', uniqueID) ;
    
    templateHTML=templateHTML.replace('$applyStyle$', styleClass);
 
   
};

this.getHTML = function () {
	return templateHTML ;
};
};