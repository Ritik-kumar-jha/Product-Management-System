function makeActive(linkid)
{
	//var an=document.getElementById("home");
	//var st=an.style;
	//st.backgroundColor="red";
	document.getElementById(linkid).style.backgroundColor="red";
}
function validateInput()
{
	var st=true;
	if(document.getElementById("pid").value=="")
		{
		document.getElementById("spid").innerHTML="Product id is required";
		st= false;
		}
	else{
		document.getElementById("spid").innerHTML="";
	}
	if(document.getElementById("name").value=="")
	{
	document.getElementById("sname").innerHTML="Product name is required";
	   st=false;
	}
	else{
		document.getElementById("sname").innerHTML="";
	}
	if(document.getElementById("quantity").value=="")
	{
	document.getElementById("squantity").innerHTML="Product quantity is required";
	   st=false;
	}
	else{
		document.getElementById("squantity").innerHTML="";
	}
	
	if(document.getElementById("price").value=="")
	{
	document.getElementById("sprice").innerHTML="Product price is required";
	st= false;
	}
	else{
		document.getElementById("sprice").innerHTML="";
	}
	return st;
	
	
}
/*
function checkValue(tb){
	if(tb.value==""){
		document.getElementById("spid").innerHTML="Product id is required";
	}
	else{
		document.getElementById("spid").innerHTML="";
	}
	if(tb.value==""){
		document.getElementById("sname").innerHTML="Product name is required";
	}
	else{
		document.getElementById("sname").innerHTML="";
	}
}
*/
