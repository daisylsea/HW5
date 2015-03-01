<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<<<<<<< HEAD
    <title>Mortgage Calculator</title>
    <link rel="stylesheet" type="text/css" href="Stylesheet.css" />
=======
    <title></title>
>>>>>>> 89a3840121ea1984fac64affab037c4e767a9fd6

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    Mike's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />
        
<<<<<<< HEAD
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
=======
        <br /><br />
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>
        
        <br /><br />
        
        <asp:GridView ID="loanGridView" runat="server" />
            
>>>>>>> 89a3840121ea1984fac64affab037c4e767a9fd6
        </div>
    </form>
</body>
</html>
