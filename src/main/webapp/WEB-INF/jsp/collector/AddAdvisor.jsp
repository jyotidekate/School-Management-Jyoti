<%@page import="com.society.application.model.Member"%>
<%@page import="java.util.List"%>
<jsp:include page="../header.jsp"></jsp:include>
<!-- Sweet alert -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--     <form method="post" action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/AddAdvisor.aspx" onsubmit="javascript:return WebForm_OnSubmit();" id="form1"> -->
	

	<div style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
		
		 <!-- Header Start-->
            
            <jsp:include page="../menu.jsp" />  
           
           
           <!-- Header End -->
            <!-- Left side column. contains the logo and sidebar -->
            <!-- Aside Menu Start-->
            
            <jsp:include page="../asideMenu.jsp" />  
            
            <!-- Aside Menu end -->
            <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>

 <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper" style="min-height: 1105.75px;">
                

                 
    <section class="content-header">
        <h1 id="ContentPlaceHolder1_IdHeader">Add Advisor/Collector</h1>
        <ol class="breadcrumb">
            <li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
            <li><a href="#">Dashboard</a></li>
            <li class="active">Advisor/Collector</li>
        </ol>
    </section>
    <section class="content">
        

        


        <div class="row">
            <div class="col-md-10">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Advisor/Collector Details</h3>
                        <div class="box-tools pull-right">
                              <button type="button" name="BtnEdit" 
                              id="BtnEdit"
                              onclick="clearingTextFieldsAjax()">
                              <img src="dist/img/pen_paper_2-32.png"/>
                              </button>
                           </div>
                    </div>
<!--     <form action="saveAdvisor" method="get" modelAttribute="AdvisorCollectorDetails"> -->
                    <div class="box-body">
                        <div class="col-md-6">

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Joining Date <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>

                                        <input name="joiningDate" type="date" id="joiningDate" required="required" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />


                                    </div>
                                    <span id="joiningDatemsg" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Registration Date</span>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label  class="col-sm-4 control-label">Select Member  <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                	<select name="selectMember"
													id="selectMember"
													required="required"
													class="form-control select2" style="width: 100%;"
													onchange="AdvisorCollector1Ajax()">
													<option>Select Member</option>
													<option  value="BANK 1">BANK 1</option>
													<option  value="BANK 2">BANK 2</option>
													<option  value="BANK 3">BANK 3</option>
													<option  value="BANK 4">BANK 4</option>
													<option  value="BANK 5">BANK 5</option>
													<option  value="BANK 6">BANK 6</option>
													<option  value="BANK 7">BANK 7</option>
													<option  value="BANK 8">BANK 8</option>
													<option  value="BANK 9">BANK 9</option>
													<option  value="BANK 10">BANK 10</option>
												</select>		
                                     <span id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select Member Code</span>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtRelativeName" class="col-sm-4 control-label">Member Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="memberName" type="text" required="required" disabled="disabled" id="memberName" class="form-control" Placeholder="Enter Member Name" />
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtDOB" class="col-sm-4 control-label">DOB <strong style="color: Red">*</strong></label>
                                <div class="col-sm-5">
                                    <div class="input-group date">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>

                                        <input name="dob" type="date" disabled="disabled" id="dob" required="required" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <input name="age" id="age" type="text" disabled="disabled"  maxlength="2" id="ContentPlaceHolder1_txtAge" class="form-control" Placeholder="Enter Age" onkeypress="return isNumberOnlyKey(this, event);" autocomplete="off" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator12" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Age</span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Relative Name</label>
                                <div class="col-sm-8">
                                    <input name="relativeName" type="text" disabled="disabled" id="relativeName" class="form-control" Placeholder="Enter Relative Name" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="drpRelativeRelation" class="col-sm-4 control-label">Relative Relation</label>
                                <div class="col-sm-8">

                                    <input name="relativeRelation" type="text" disabled="disabled" id="relativeRelation" class="form-control" Placeholder="Enter Relative Relation" />
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="txtPhoneno" class="col-sm-4 control-label">Mobile No <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="mobileNo" type="text" required="required" maxlength="10" disabled="disabled" id="mobileNo" class="form-control" Placeholder="Enter Mobile No" autocomplete="off" onkeypress="return isNumberOnlyKey(this, event);" />
                                    <span id="ContentPlaceHolder1_RequiredFieldValidator8" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Phone No</span>
                                </div>
                            </div>


                            <div class="form-group row">
                                <label for="txtNomineeName" class="col-sm-4 control-label">Nominee Name</label>
                                <div class="col-sm-8">
                                    <input name="nomineeName" type="text" id="nomineeName" class="form-control" Placeholder="Enter Nominee Name"/>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="drpNomineeRelation" class="col-sm-4 control-label">Relation</label>
                                <div class="col-sm-8">

                                    <select name="relation" id="relation" class="form-control" style="width: 100%;">
	<option >Select Relation</option>
	<option value="Brother">Brother</option>
	<option value="Daughter">Daughter</option>
	<option value="Father">Father</option>
	<option value="Friend">Friend</option>
	<option value="Husband">Husband</option>
	<option value="Mother">Mother</option>
	<option value="Sister">Sister</option>
	<option value="Son">Son</option>
	<option value="Wife">Wife</option>
	<option value="Daughter in Law">Daughter in Law</option>
	<option value="Brother in Law">Brother in Law</option>
	<option value="Grand Daughter">Grand Daughter</option>
	<option value="Grand Son">Grand Son</option>
	<option value="Other">Other</option>

</select>
                                </div>
                            </div>
                            
                           
                           
                        </div>
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label class="col-sm-4 control-label">Branch Name <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="branchName" id="branchName" required="required" class="form-control select2" style="width: 100%;">
	<option>Select Branch Name</option>
	<option value="Main Office - 001">Main Office - 001</option>
	<option value="Main Office - 002">Main Office - 002</option>
	<option value="Main Office - 003">Main Office - 003</option>
</select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtNomineeName" class="col-sm-4 control-label">Nominee Age</label>
                                <div class="col-sm-8">
                                    <input name="nomineeAge" type="text" maxlength="2" id="nomineeAge" class="form-control" placeholder="Enter Nominee Age" />
                                </div>
                            </div>
                            
                             <div class="form-group row">
                                    <label for="txtAddress" class="col-sm-4 control-label">Address <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <textarea name="address" rows="2" cols="20" disabled="disabled" required="required" id="address" class="form-control" Placeholder="Enter Addess">
</textarea>
                                        <span id="ContentPlaceHolder1_RequiredFieldValidator3" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Address</span>
                                    </div>
                                </div>

                            <div class="form-group row">
                                    <label for="txtDistrict" class="col-sm-4 control-label">District <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="district" type="text" disabled="disabled" id="district" required="required" class="form-control" Placeholder="Enter District" />
                                        <span id="ContentPlaceHolder1_RequiredFieldValidator1" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter District</span>
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="drpState" class="col-sm-4 control-label">State <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                       
                                         <input name="state" type="text" disabled="disabled" required="required" id="state" class="form-control" placeholder="Enter State" />
                                         <span id="ContentPlaceHolder1_RequiredFieldValidator11" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Select State</span>
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtPin" class="col-sm-4 control-label">Pin Code <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="pinCode" type="text" maxlength="6" disabled="disabled" required="required" id="pinCode" class="form-control" Placeholder="Enter Pincode" />
                                         <span id="ContentPlaceHolder1_RequiredFieldValidator4" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter PIN</span>
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtOccupation" class="col-sm-4 control-label">Occupation</label>
                                    <div class="col-sm-8">
                                        <input name="occupation" type="text" disabled="disabled" id="occupation" class="form-control" Placeholder="Enter Occupation" />
                                    </div>
                                </div>
                            <div class="form-group row">
                                    <label for="txtEducation" class="col-sm-4 control-label">Education</label>
                                    <div class="col-sm-8">
                                        <input name="education" type="text" disabled="disabled" id="education" class="form-control" Placeholder="Enter Education" />
                                    </div>
                                </div>
                            
                        </div>
                    </div>

                </div>
            </div>

            <div class="col-md-2">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Photo </h3>

                    </div>

                    <div class="box-body">

                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="text-center">
                                    <img id="ContentPlaceHolder1_ImageApplicant" class="profile-user-img" src="dist/img/photo.jpg" style="width:110px;" />
                                </div>
                            </div>
                        </div>


                    </div>

                </div>


                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Signature </h3>

                    </div>

                    <div class="box-body">

                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="text-center">
                                    <img id="ContentPlaceHolder1_ImageSignature" class="profile-user-img" src="dist/img/sign.jpg" style="height:70px;width:115px;" />
                                </div>
                            </div>
                        </div>




                    </div>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-10">
                <div class="box box-success">
                    <div class="box-header with-border">
                        <h3 class="box-title">Introducer Details</h3>
                    </div>

                    <div class="box-body">
                        <div class="col-md-6">
                            <div class="form-group row">
                                <label  class="col-sm-4 control-label">Select Position <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <select name="selectPosition" id="selectPosition" required="required" class="form-control select2" style="width: 100%;">
	<option>Select Position</option>
	<option value="1 - Advisor">1 - Advisor</option>
	<option value="2 - Sales Officer">2 - Sales Officer</option>
	<option value="3 - Development Officer">3 - Development Officer</option>
	<option value="4 - Sr. Development Officer">4 - Sr. Development Officer</option>
	<option value="5 - BSM">5 - BSM</option>
	<option value="6 - ASM">6 - ASM</option>
	<option value="7 - RSM">7 - RSM</option>
	<option value="8 - STATE HEAD">8 - STATE HEAD</option>
	<option value="9 - ZONAL HEAD">9 - ZONAL HEAD</option>
	<option value="10 - DIRECTOR SALES">10 - DIRECTOR SALES</option>

</select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="txtRelativeName" class="col-sm-4 control-label">Introducer Code <strong style="color: Red">*</strong></label>
                                <div class="col-sm-8">
                                    <input name="introducerCode" id="introducerCode" required="required" type="text" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtIntroducerCode\&#39;,\&#39;\&#39;)&#39;, 0)" onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;" id="ContentPlaceHolder1_txtIntroducerCode" class="form-control" Placeholder="Enter Introducer Code" />
                                     <span id="ContentPlaceHolder1_RequiredFieldValidator6" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Introducer Code</span>
                                </div>
                            </div>
                            

                        </div>
                        <div class="col-md-6">
                          
                            <div class="form-group row">
                                    <label  class="col-sm-4 control-label">Introducer Name</label>
                                    <div class="col-sm-8">
                                        <input name="introducerName" type="text" disabled="disabled" id="introducerName" class="form-control" Placeholder="Enter Introducer Name" />
                                        <span id="ContentPlaceHolder1_RequiredFieldValidator10" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Introducer Name</span>
                                    </div>
                                </div>
                           
                            <div class="form-group row">
                                    <label class="col-sm-4 control-label">Position <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="position" type="text" required="required" disabled="disabled" id="position" class="form-control" placeholder="Enter Position" />
                                        <span id="ContentPlaceHolder1_RequiredFieldValidator2" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Introducer Position</span>
                                    </div>
                                </div>
                            
                        </div>
                    </div>

                </div>
            </div>

            
        </div>



        <div class="row">
            <div class="col-md-10">
                <div class="box box-info">
                    <div class="box-header with-border">
                        <h3 class="box-title">Payment Details </h3>
                    </div>
                    
                        <div class="box-body">
                            <div class="col-md-6">

                                <div class="form-group row">
                                    <label class="col-sm-4 control-label">Fees (if any) <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <input name="feesIfAny" type="text" id="feesIfAny" required="required" class="form-control" onkeypress="return isNumberOnlyKey(this, event);" placeholder="Enter Fees"/>
                                         <span id="ContentPlaceHolder1_RequiredFieldValidator7" style="color:Red;font-size:X-Small;font-weight:bold;display:none;">Enter Advisor Fees (if any)</span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="drpPaymentBy" class="col-sm-4 control-label">Payment By <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                         <select name="paymentBy" id="paymentBy" required="required" class="form-control" style="width:100%">
	<option>Select PaymentBy</option>
	<option value="Cash">Cash</option>
	<option value="Cheque">Cheque</option>
	<option value="Online">Online</option>
	<option value="NEFT">NEFT</option>

</select>
                                    </div>
                                </div>
                                
                               
                                
                               
                                <div class="form-group row">
                                    <label  class="col-sm-4 control-label">Remarks</label>
                                    <div class="col-sm-8">
                                        <textarea name="remarks" rows="2" cols="20" id="remarks" class="form-control" Placeholder="Enter Remarks if any">
</textarea>
                                    </div>
                                </div>
                                
                            </div>
                            <div class="col-md-6">
                                
                                <div class="form-group row">
                                    <label class="col-sm-4 control-label">Advisor Status <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <label class="switch">
                                       <input id="advisorStatus" type="checkbox" name=isActive required="required" checked="checked" />
                                        <span class="slider round"></span>
                                            </label>
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <label class="col-sm-4 control-label">SMS Send <strong style="color: Red">*</strong></label>
                                    <div class="col-sm-8">
                                        <label class="switch">
                                       <input id="smsSend" type="checkbox" name="isSms" required="required" checked="checked" />
                                        <span class="slider round"></span>
                                            </label>
                                    </div>
                                </div>
                                </div>
                           
                        </div>
                   
                     <div class="box-footer">
                                <div class="row col-md-12">
                                    
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnNew" value="New"  onclick="AdvisorCollector3Ajax(); return validateFormFields();" id="ContentPlaceHolder1_btnNew" class="btn btn-success pull-right margin-r-5" />
                                    <input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" value="Save" onclick="AdvisorCollector2Ajax();" id="ContentPlaceHolder1_btnSave" class="btn btn-success pull-right margin-r-5" />
                                </div>
                            </div>
                           
                </div>


                
            </div>
        </div>
        </div>
    </section>
    
      </div>
      
            <!-- /.content-wrapper -->

<jsp:include page="../footer.jsp" />  
<script src="dist/js/AdvisorCollector.js"></script>
    

<!--  </form> -->
 </body>


          