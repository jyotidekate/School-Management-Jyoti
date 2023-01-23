/* 1. Data Retrival */
 function AdvisorCollector1Ajax()
{	
 let selectMember= document.getElementById("selectMember").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'selectByMember',
     data:{SelectMember: selectMember},
     asynch: false,
     success: function(data) {  
	
	      for (let i = 0; i < data.length; i++)
	       {
			 document.getElementById("joiningDate").value=data[i].joiningDate;
			 document.getElementById("selectMember").value=data[i].selectMember;
			 document.getElementById("memberName").value=data[i].memberName;
			 document.getElementById("dob").value=data[i].dob;
			 document.getElementById("age").value=data[i].age;
			 document.getElementById("relativeName").value=data[i].relativeName;
			 document.getElementById("relativeRelation").value=data[i].relativeRelation;
			 document.getElementById("mobileNo").value=data[i].mobileNo;
			 document.getElementById("nomineeName").value=data[i].nomineeName;
			 document.getElementById("relation").value=data[i].relation;
			 document.getElementById("branchName").value=data[i].branchName;
			 document.getElementById("nomineeAge").value=data[i].nomineeAge;
			 document.getElementById("address").value=data[i].address;
			 document.getElementById("district").value=data[i].district;
			 document.getElementById("state").value=data[i].state;
			 document.getElementById("pinCode").value=data[i].pinCode;
			 document.getElementById("occupation").value=data[i].occupation;
			 document.getElementById("education").value=data[i].education;
			 document.getElementById("selectPosition").value=data[i].selectPosition;
			 document.getElementById("introducerCode").value=data[i].introducerCode;
			 document.getElementById("introducerName").value=data[i].introducerName;
			 document.getElementById("position").value=data[i].position;
			 document.getElementById("feesIfAny").value=data[i].feesIfAny;
			 document.getElementById("paymentBy").value=data[i].paymentBy;
			 document.getElementById("remarks").value=data[i].remarks;
			 document.getElementById("advisorStatus").value=data[i].advisorStatus;
			 document.getElementById("smsSend").value=data[i].smsSend;
			 
		} 
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
 
 
/* 2. Update Code */
 function AdvisorCollector2Ajax()
{	
 var joiningDate= document.getElementById("joiningDate").value;
 var selectMember= document.getElementById("selectMember").value;
 var nomineeName= document.getElementById("nomineeName").value;
 var relation= document.getElementById("relation").value;
 var branchName= document.getElementById("branchName").value;
 var nomineeAge= document.getElementById("nomineeAge").value;
 var selectPosition= document.getElementById("selectPosition").value;
 var introducerCode= document.getElementById("introducerCode").value;
 var feesIfAny= document.getElementById("feesIfAny").value;
 var paymentBy= document.getElementById("paymentBy").value;
 var remarks= document.getElementById("remarks").value;
 
 $.ajax({
	 type:"get",
     contentType: "application/json",
     url: 'updateAdvisor',
     data:{JoiningDate: joiningDate, SelectMember: selectMember, NomineeName: nomineeName, Relation: relation, 
     BranchName: branchName, NomineeAge: nomineeAge, SelectPosition: selectPosition, IntroducerCode: introducerCode,
     FeesIfAny: feesIfAny, PaymentBy: paymentBy, Remarks: remarks},
     asynch: false,
     success: function(data) {  
	
	     //alert("Updated THe Data");
	     swal("Data Saved Successfully..!!","","success");
	      
     } ,
	    error: function(){
	    	alert("Device control failed");
	    }
 });
 }
 
 
 /* 3. Clear & Enable fields */
 function clearingTextFieldsAjax(){	
	         document.getElementById("joiningDate").value="";
	         
	         document.getElementById("selectMember").value="";
	         
	         document.getElementById("memberName").disabled = false;
	         document.getElementById("memberName").value="";
	         
	         document.getElementById("dob").disabled = false;
	         document.getElementById("dob").value="";
	         
	         document.getElementById("age").disabled = false;
	         document.getElementById("age").value="";
	         
	         document.getElementById("relativeName").disabled = false;
	         document.getElementById("relativeName").value="";
	         
	         document.getElementById("relativeRelation").disabled = false;
	         document.getElementById("relativeRelation").value="";
	         
	         document.getElementById("mobileNo").disabled = false;
	         document.getElementById("mobileNo").value="";
	         
	         document.getElementById("address").disabled = false;
	         document.getElementById("address").value="";
	         
	         document.getElementById("district").disabled = false;
	         document.getElementById("district").value="";
	         
	         document.getElementById("state").disabled = false;
	         document.getElementById("state").value="";
	         
	         document.getElementById("pinCode").disabled = false;
	         document.getElementById("pinCode").value="";
	         
	         document.getElementById("occupation").disabled = false;
	         document.getElementById("occupation").value="";
	         
	         document.getElementById("education").disabled = false;
	         document.getElementById("education").value="";
	         
	         document.getElementById("introducerName").disabled = false;
	         document.getElementById("introducerName").value="";
	         
	         document.getElementById("position").disabled = false;
	         document.getElementById("position").value="";
	         
	         document.getElementById("feesIfAny").value="";
	       
	         document.getElementById("paymentBy").value="";
	      
	         document.getElementById("remarks").value="";
	     
	         document.getElementById("selectPosition").value="";
	       
 }
 
 
 /* 4. Save Operation */
 function AdvisorCollector3Ajax(){
	const obj ={
		joiningDate: document.getElementById("joiningDate").value,
		selectMember: document.getElementById("selectMember").value,
		memberName: document.getElementById("memberName").value,
		dob: document.getElementById("dob").value,
		age: document.getElementById("age").value,
		relativeName: document.getElementById("relativeName").value,
		relativeRelation: document.getElementById("relativeRelation").value,
		mobileNo: document.getElementById("mobileNo").value,
		nomineeName: document.getElementById("nomineeName").value,
		relation: document.getElementById("relation").value,
		branchName: document.getElementById("branchName").value,
		nomineeAge: document.getElementById("nomineeAge").value,
		address: document.getElementById("address").value,
		district: document.getElementById("district").value,
		state: document.getElementById("state").value,
		pinCode: document.getElementById("pinCode").value,
		occupation: document.getElementById("occupation").value,
		education: document.getElementById("education").value,
		selectPosition: document.getElementById("selectPosition").value,
		introducerCode: document.getElementById("introducerCode").value,
		introducerName: document.getElementById("introducerName").value,
		position: document.getElementById("position").value,
		feesIfAny: document.getElementById("feesIfAny").value,
		paymentBy: document.getElementById("paymentBy").value,
		remarks: document.getElementById("remarks").value,
	};
	const myJSon = JSON.stringify(obj);
	
	$.ajax({
		type:"POST",
     	url: 'saveAdviosrData',
     	dataType:"json",
     	data: myJSon,
     	contentType: "application/json",
     	success: function(data){
			if(data==''){
				return "validateFormFields()";
			}
			else
			   swal("New Record Saved..!!","","success");
			
		},
		error: function(){
			alert("Data Not Saved");
		}
	});
}
 
 
 /* 5. Validation Code */
 function validateFormFields()
{
	 const joiningDate  = document.getElementById("joiningDate");
	 const selectMember = document.getElementById("selectMember");
	 const memberName = document.getElementById("memberName");
	 const dob = document.getElementById("dob");
	 const mobileNo = document.getElementById("mobileNo");
	 const branchName = document.getElementById("branchName");
	 const address = document.getElementById("address");
	 const district = document.getElementById("district") 	;
     const state = document.getElementById("state");
	 const pinCode = document.getElementById("pinCode");
	 const selectPosition = document.getElementById("selectPosition");
	 const introducerCode = document.getElementById("introducerCode");
	 const position = document.getElementById("position");
	 const feesIfAny = document.getElementById("feesIfAny");
     const paymentBy = document.getElementById("paymentBy");
	 const remarks = document.getElementById("remarks");
	 const advisorStatus = document.getElementById("advisorStatus");
	 const smsSend = document.getElementById("smsSend");
     var status = true;
     
	if (joiningDate.value === '')
	{ 
    var span = document.getElementById("joiningDatemsg"); 
    span.textContent = "Enter Registration Date"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (selectMember.value === '')
	{ 
    var span = document.getElementById("selectMembermsg"); 
    span.textContent = "Select Member Code"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (memberName.value === '')
	{ 
    var span = document.getElementById("memberNamemsg"); 
    span.textContent = "Select Member Name"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (dob.value === '')
	{ 
    var span = document.getElementById("dobmsg"); 
    span.textContent = "Select DOB"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (mobileNo.value === '')
	{ 
    var span = document.getElementById("mobileNomsg"); 
    span.textContent = "Enter Phone No"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (branchName.value === '')
	{ 
    var span = document.getElementById("branchNamemsg"); 
    span.textContent = "Enter Branch Name"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (address.value === '')
	{ 
    var span = document.getElementById("addressmsg"); 
    span.textContent = "Enter Address"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (district.value === '')
	{ 
    var span = document.getElementById("districtmsg"); 
    span.textContent = "Enter District"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (state.value === '')
	{ 
    var span = document.getElementById("statemsg"); 
    span.textContent = "Select State"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (pinCode.value === '')
	{ 
    var span = document.getElementById("pinCodemsg"); 
    span.textContent = "Enter PIN"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (selectPosition.value === '')
	{ 
    var span = document.getElementById("selectPositionmsg"); 
    span.textContent = "Select Position"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (introducerCode.value === '')
	{ 
    var span = document.getElementById("introducerCodemsg"); 
    span.textContent = "Enter Introducer Code"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (position.value === '')
	{ 
    var span = document.getElementById("positionmsg"); 
    span.textContent = "Enter Introducer Position"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (feesIfAny.value === '')
	{ 
    var span = document.getElementById("feesIfAnymsg"); 
    span.textContent = "Enter Advisor Fees (if any)"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (paymentBy.value === '')
	{ 
    var span = document.getElementById("paymentBymsg"); 
    span.textContent = "Enter Payment By Msg"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (remarks.value === '')
	{ 
    var span = document.getElementById("remarksmsg"); 
    span.textContent = "Enter Address"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (advisorStatus.value === '')
	{ 
    var span = document.getElementById("advisorStatusmsg"); 
    span.textContent = "Enter Advisor Status"; 
    span.style.display = "block"; 
    status = false; 
    }
    if (smsSend.value === '')
	{ 
    var span = document.getElementById("smsSendmsg"); 
    span.textContent = "Send SMS"; 
    span.style.display = "block"; 
    status = false; 
    }
    else 
    { 
     return false; 
    } 
}
 