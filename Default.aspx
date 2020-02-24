<%@ Page Title="" Language="VB" MasterPageFile="~/MortgageMasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
        .auto-style2 {
            height: 50px;
        }
        .auto-style3 {
            height: 50px;
        }
        .auto-style4 {
            height: 50px;
        }
        .auto-style5 {
            height: 50px;
        }
        .auto-style6 {
            width: 508px;
            height: 351px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <h1 class="center"> Mortgage Calculator</h1>
    <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <table style="width: 100%;">
        <tr>
            <td class="auto-style4">Principal amount:</td>
       
            <td class="auto-style4">
                <asp:TextBox ID="tbPrincipalAmount" runat="server" Width="60%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="principalAmountRequiredField" runat="server" ErrorMessage="*Required Field" ControlToValidate="tbPrincipalAmount" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Yearly percentage interest rate:<br />
                (decimal)</td>
          
            <td class="auto-style3">
                <asp:TextBox ID="tbYearPerinterestRate" runat="server" Width="60%"></asp:TextBox>
                <asp:RequiredFieldValidator ID="YearPerinterestRateRequiredField" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbYearPerinterestRate"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Loan term in months:</td>
    
            <td class="auto-style2">
                <asp:TextBox ID="tbLoanTerm" runat="server" Width="60%"></asp:TextBox>
                <asp:RangeValidator ID="LoanTermRangeValidator" runat="server" ControlToValidate="tbLoanTerm" ForeColor="Red" ErrorMessage="* Out of Range" MaximumValue="360" MinimumValue="12"></asp:RangeValidator>
                 <asp:RequiredFieldValidator ID="LoanTermRequiredField" runat="server" ErrorMessage="*Required Field" ForeColor="Red" ControlToValidate="tbLoanTerm"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Monthly payments:</td>
    
            <td class="auto-style5">
                <asp:Label ID="MonthlyPaymentsCalc" runat="server" Text="[Monthly payments]"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">Sum of all payments:</td>
    
            <td class="auto-style1">
                <asp:Label ID="SumAllPaymentsCalc" runat="server" Text="[Sum of all payments]">


                </asp:Label></td>
        </tr>
        <tr>
            <td class="auto-style1">Total interest paid: </td>
    
            <td class="auto-style1"> <asp:Label ID="TotalIntrestCalc" runat="server" Text="[Total interest paid]">


                </asp:Label></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
    
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
    
            <td>
                <asp:Button ID="CalculateButton" runat="server" Text="Calculate" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="ClearButton" runat="server" Text="Clear" />
            </td>
        </tr>
    </table>






</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>A mortgage is a debt instrument, secured by the collateral of specified real estate property, that the borrower is obliged to pay back with a predetermined set of payments.</p>
    <p>&nbsp;</p>
    <p>Read more at <a href="https://www.investopedia.com/terms/m/mortgage.asp">Investopedia</a> </p>
    
    
    <img style="float:right" alt="money" class="auto-style6" src="images/money.png" />
    




</asp:Content>


