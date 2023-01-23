/* Data Retrival */
 function AddInvestmentAjax1()
{	
 let searchMemberCode= document.getElementById("searchMemberCode").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'searchAddInvestment',
     data:{SearchMemberCode: searchMemberCode},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 document.getElementById("policyDate").value=data[i].policyDate;
			 document.getElementById("searchMemberCode").value=data[i].searchMemberCode;
			 document.getElementById("memberName").value=data[i].memberName;
			 document.getElementById("dob").value=data[i].dob;
			 document.getElementById("age").value=data[i].age;
			 document.getElementById("relativeName").value=data[i].relativeName;
			 document.getElementById("phoneno").value=data[i].phoneno;
			 document.getElementById("nomineeName").value=data[i].nomineeName;
			 document.getElementById("nomineeAge").value=data[i].nomineeAge;
			 document.getElementById("nomineeRelation").value=data[i].nomineeRelation;
			 document.getElementById("address").value=data[i].address;
			 document.getElementById("district").value=data[i].district;
			 document.getElementById("state").value=data[i].state;
			 document.getElementById("pin").value=data[i].pin;
			 document.getElementById("CSPName").value=data[i].CSPName;
			 document.getElementById("modeOfOp").value=data[i].modeOfOp;
			 document.getElementById("jointCode").value=data[i].jointCode;
			 document.getElementById("jointName").value=data[i].jointName;
			 document.getElementById("mDate").value=data[i].mDate;
			 document.getElementById("schemeType").value=data[i].schemeType;
			 document.getElementById("schemeName").value=data[i].schemeName;
			 document.getElementById("term").value=data[i].term;
			 document.getElementById("mode").value=data[i].mode;
			 document.getElementById("misMode").value=data[i].misMode;
			 document.getElementById("policyAmount").value=data[i].policyAmount;
			 document.getElementById("totalDeposit").value=data[i].totalDeposit;
			 document.getElementById("maturityAmount").value=data[i].maturityAmount;
			 document.getElementById("mISInterest").value=data[i].mISInterest;
			 document.getElementById("paymode").value=data[i].paymode;
			 document.getElementById("remarks").value=data[i].remarks;
			 document.getElementById("advisorCode").value=data[i].advisorCode;
			 document.getElementById("advisorName").value=data[i].advisorName;
			
			 
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }

/* Update */
function AddInvestmentAjax2(){
	const obj ={
		policyDate: document.getElementById("policyDate").value,
		searchMemberCode: document.getElementById("searchMemberCode").value,
		nomineeName: document.getElementById("nomineeName").value,
		nomineeAge: document.getElementById("nomineeAge").value,
		nomineeRelation: document.getElementById("nomineeRelation").value,
		CSPName: document.getElementById("CSPName").value,
		modeOfOp: document.getElementById("modeOfOp").value,
		jointCode: document.getElementById("jointCode").value,
		schemeType: document.getElementById("schemeType").value,
		schemeName: document.getElementById("schemeName").value,
		mode: document.getElementById("mode").value,
		policyAmount: document.getElementById("policyAmount").value,
		paymode: document.getElementById("paymode").value,
		remarks: document.getElementById("remarks").value,
		advisorCode: document.getElementById("advisorCode").value,
	};
	const myJSon = JSON.stringify(obj);
	
	$.ajax({
		type:"post",
		contentType: "application/json",
     	url: 'updateAddInvestment',
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