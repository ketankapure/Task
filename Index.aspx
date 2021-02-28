<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Task.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags-->
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content="Colorlib Templates"/>
    <meta name="author" content="Colorlib"/>
    <meta name="keywords" content="Colorlib Templates"/>

    <!-- Title Page-->
    <title>GST Verification</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all"/>
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet"/>

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all"/>
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all"/>


    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all"/>    
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div>
            <asp:HiddenField ID="SrNoID" runat="server"/>
            <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">GST Verification Form</h2>
                </div>
                <div class="card-body">
                        <div class="form-row m-b-55">
                            <div class="name" >Company Name</div>
                            <div class="value">
                                <div class="input-group">                                   
                                    <asp:textbox ID="companyname" runat="server" class="input--style-5" type="text" name="company" required=/>                                    
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">GSTIN</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:textbox ID="GSTIN" runat="server" class="input--style-5" type="text" pattern="\d{2}[A-Z]{5}\d{4}[A-Z]{1}[A-Z\d]{1}[Z]{1}[A-Z\d]{1}" 
                                        name="company" />
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Time Period</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <asp:textbox runat="server" type="date" ID="start" name="trip-start" value="2018-07-22" min="1990-01-01" max="2050-12-31" />                                       
                                            <label class="label--desc">Start date</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <asp:textbox runat="server" type="date" ID="end" name="trip-start" value="2018-07-22" min="1990-01-01" max="2050-12-31"/>     
                                            <label class="label--desc">End date</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <asp:textbox runat="server" ID="email" class="input--style-5" type="email" name="email" required="required"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                                <div class="name">Amount</div>
                                <div class="value">
                                    <div class="input-group">
                                        <asp:textbox runat="server" ID="amount" class="input--style-5" type="number" required="required"/>
                                    </div>
                                </div>
                            </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">      
                                    <div class="auto-style1">
                                        <div class="input-group-desc">
                                            <asp:textbox pattern="[0-9]{3}[0-9]{3}[0-9]{4}" runat="server" ID="phone" class="input--style-5" type="text" name="phone" required="required"/>
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <asp:button runat="server" class="btn btn--radius-2 btn--red" OnClick="onclick" Text="Submit"/>
                            <asp:button runat="server" class="btn btn--radius-2 btn--red" OnClick="onclick2" Text="DataBase" EnableClientScript="false" 
                            CausesValidation="False" UseSubmitBehavior="False" ValidateRequestMode="Disabled"/>
                        </div>                                                                     
                </div>
            </div>
        </div>

    </div>
           
    <!-- Jquery JS-->
   <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
        </div>
         

    </form>
    

        
</body>
</html>
