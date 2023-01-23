/* Data Retrival */
 function FlexiDepositeAjax1()
{	
 let id= document.getElementById("searchbyPolicyNo").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'searchByPolicyNo',
     data:{Id: id},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 document.getElementById("tDate").value=data[i].tDate;
			 document.getElementById("CSPName").value=data[i].CSPName;
			 document.getElementById("searchbyPolicyNo").value=data[i].searchbyPolicyNo;
			 document.getElementById("empCode").value=data[i].empCode;
			 document.getElementById("searchMemberCode").value=data[i].searchMemberCode;
			 document.getElementById("memberName").value=data[i].memberName;
			 document.getElementById("phoneno").value=data[i].phoneno;
			 document.getElementById("planCode").value=data[i].planCode;
			 document.getElementById("balance").value=data[i].balance;
			 document.getElementById("transactionFor").value=data[i].transactionFor;
			 document.getElementById("remarks").value=data[i].remarks;
			 document.getElementById("transactionType").value=data[i].transactionType;
			 document.getElementById("txtAmount").value=data[i].txtAmount;
			 document.getElementById("paymode").value=data[i].paymode;
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }

/* Update */
function FlexiDepositeAjax2(){
	const obj ={
		tDate: document.getElementById("tDate").value,
		CSPName: document.getElementById("CSPName").value,
		transactionFor: document.getElementById("transactionFor").value,
		remarks: document.getElementById("remarks").value,
		transactionType: document.getElementById("transactionType").value,
		txtAmount: document.getElementById("txtAmount").value,
		paymode: document.getElementById("paymode").value,
		id: document.getElementById("id").value,
	};
	const myJSon = JSON.stringify(obj);
	
	$.ajax({
		type:"post",
		contentType: "application/json",
     	url: 'upadateFlexi',
     	dataType:"json",
     	data: myJSon,
     	asynch: false,
     	success: function(data){
			   swal("Data Updated...!!!","","success");
		},
		error: function(){
			alert("Data Not Saved");
		}
	});
}