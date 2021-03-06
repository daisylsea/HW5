﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title>Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css" />


</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Xi's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        &nbsp;&nbsp;(Enter numbers only)&nbsp;&nbsp;
        <span class="errorMessage">
        <asp:RequiredFieldValidator ID="rfv_loan" runat="server" 
            ControlToValidate="tbLoanAmt"
            ErrorMessage="**Please enter the loan amount.**">
        </asp:RequiredFieldValidator>
        

            </span>
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;&nbsp;&nbsp;
        <span class="errorMessage">
        <asp:RequiredFieldValidator ID="rfv_int" runat="server" 
            ControlToValidate="tbAnnualInterest"
            ErrorMessage="**Please enter the annual interest.**">
        </asp:RequiredFieldValidator>
        <br />
        
        <asp:RegularExpressionValidator ID="rev_int" runat="server" 
            ControlToValidate="tbAnnualInterest"
            ErrorMessage="*Please enter numbers only, enter 10 for 10%*"
            ValidationExpression="^[0-9 ]*$">
        </asp:RegularExpressionValidator>
        </span>
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="errorMessage">
        <asp:RequiredFieldValidator ID="rfv_term" runat="server" 
            ControlToValidate="tbLoanTerm"
            ErrorMessage="**Please enter the loan term in year.**">
        </asp:RequiredFieldValidator>
        <br />
        
        <asp:RegularExpressionValidator ID="rev_term" runat="server" 
            ControlToValidate="tbLoanTerm"
            ErrorMessage="*Please enter numbers only.*"
            ValidationExpression="^[0-9 ]*$">
        </asp:RegularExpressionValidator>
        </span>
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnClear" runat="server" Text="Clear" />
        
        <br /><br />


       <%If Not IsPostBack Then%>
        <!-- This is the first time the page is loaded. There is nothing to display.-->
        <p>Welcome to my mortagege calculator. Please complete the fields above to have your    
            monthly payment and loan repayment schedule calculated for you.
        </p>
        <%Else%>         
        <!-- Then the page is in postback so show the monthly payment and payment schedule. -->
            <br />

        Monthly Payment: &nbsp; <span class="bold"><asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label></span>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview">
            <AlternatingRowStyle CssClass="alt" />
        </asp:GridView>
        <%End If%>

      

        </div>
    </form>
</body>
</html>
