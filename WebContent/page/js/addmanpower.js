	var counter = 1;
	function addRow(){	
		var parent = document.getElementById("manpowerId");
		
		var trElement = document.createElement("tr");
						
		var tdElement1 = document.createElement("td");
		var input4 = document.createElement("input");
		input4.setAttribute("name","name"+counter);
		input4.setAttribute("id","name"+counter);
		input4.setAttribute("type","text");
		tdElement1.appendChild(input4);
		trElement.appendChild(tdElement1);
		
		var tdElement3 = document.createElement("td");
		var input3 = document.createElement("input");
		input3.setAttribute("name","designation"+counter);
		input3.setAttribute("id","designation"+counter);
		input3.setAttribute("type","text");
		tdElement3.appendChild(input3);
		trElement.appendChild(tdElement3);
		
		var tdElement5 = document.createElement("td");
		
		var a = document.createElement('a');
		var linkText = document.createTextNode("Expense M/H");
		a.appendChild(linkText);
		a.title = "my title text";
		a.href = "manpower1";
		tdElement5.appendChild(a);
		trElement.appendChild(tdElement5);
		
		
		var tdElement8 = document.createElement("td");
		var input8 = document.createElement("input");
		input8.setAttribute("name","Add");
		input8.setAttribute("id","add");
		input8.setAttribute("onClick","addRow()");
		input8.setAttribute("value","Add");
		input8.setAttribute("type","button");
		tdElement8.appendChild(input8);
		trElement.appendChild(tdElement8);

		
		var tdElement9 = document.createElement("td");
		var input9 = document.createElement("input");
		input9.setAttribute("name","Remove");
		input9.setAttribute("value","Remove");
		input9.setAttribute("onclick","removeRow('"+counter+"')");
		input9.setAttribute("type","button");
		tdElement9.appendChild(input9);
		trElement.appendChild(tdElement9);
		parent.appendChild(trElement);
		counter++;
	
	}