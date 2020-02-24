
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ClearButton_Click(sender As Object, e As EventArgs) Handles ClearButton.Click
        tbPrincipalAmount.Text = ""
        tbLoanTerm.Text = ""
        tbYearPerinterestRate.Text = ""
        MonthlyPaymentsCalc.Text = ""
        TotalIntrestCalc.Text = ""
        SumAllPaymentsCalc.Text = ""


    End Sub
    Protected Sub CalculateButton_Click(sender As Object, e As EventArgs) Handles CalculateButton.Click

        'R = P * r / (1-(1 / (1 + r)^n)) 
        'R = monthly payment 
        'P = principal loan amount 
        'r = monthly interest rate (yearly rate divided by 12) 
        'n = Number Of months

        Dim LoanTerm As Double = tbLoanTerm.Text
        Dim monthlyInterestRate As Double = tbYearPerinterestRate.Text / 12
        Dim MonthlyPayment As Double = tbPrincipalAmount.Text * monthlyInterestRate / (1 - (1 / (1 + monthlyInterestRate) ^ LoanTerm))


        MonthlyPaymentsCalc.Text = MonthlyPayment.ToString("c")

        Dim SumAllPayments As Double = MonthlyPayment * LoanTerm

        SumAllPaymentsCalc.Text = SumAllPayments.ToString("c")

        Dim TotalInterestPaid As Double = SumAllPayments - tbPrincipalAmount.Text

        TotalIntrestCalc.Text = TotalInterestPaid.ToString("c")

    End Sub
End Class


