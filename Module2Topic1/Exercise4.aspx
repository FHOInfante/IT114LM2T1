<%@ Page Language="C#" CodeBehind="~/Exercise4.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/Site1.Master" %>

<%-- Exercise 4: Using validation controls --%>
<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h1>Mapua MCL WebDev Club Registration</h1>
        <asp:Label runat="server" Text="Full Name"></asp:Label><br />
        <asp:TextBox runat="server" ID="fullName" PlaceHolder="Enter Full Name"/>
        <asp:RequiredFieldValidator runat="server" ID="rfvFullName" ControlToValidate="fullName" Type="String"
            ErrorMessage="Please enter your Full Name" EnableClientScript="false" Display="Dynamic"/><br />
        <%-- Todo 4.1 Add a validator that makes sure the text box is not empty --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RequiredFieldValidator%20Control --%>

        <br />
        <asp:Label runat="server" Text="Age"></asp:Label><br />
        <asp:TextBox runat="server" ID="age" TextMode="Number" PlaceHolder="Enter Age"/>
        <asp:RangeValidator ErrorMessage="Enter a number (0 - 100)" ControlToValidate="age" runat="server" 
            MinimumValue="0" MaximumValue="100" ID="rvAge" Type="Integer" EnableClientScript="false" Display="Dynamic"/><br />
        <%-- Todo 4.2 Add a range validator that checks if the value inputted in the text box is within 0 and 100--%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=RangeValidator%20Control--%>
        
        <br />
        <asp:Label runat="server" Text="Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="email" PlaceHolder="Enter Email"/>
        <asp:RegularExpressionValidator runat="server" ID="regexEmail" ControlToValidate="email" Type="String" ErrorMessage="Please enter a valid email address!" 
            ValidationExpression="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" EnableClientScript="false" Display="Dynamic"/><br />
        <%-- Todo 4.3 Add a regex validator that checks if the inputted value is a valid email. The regex for validating email is /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=The%20RegularExpressionValidator%20allows --%>
        
        <br />
        <asp:Label runat="server" Text="Confirm Email"></asp:Label><br />
        <asp:TextBox runat="server" ID="confirmEmail" PlaceHolder="Confirm Email"/>
        <asp:CompareValidator ID="cvConfirmEmail" ErrorMessage="Emails do not match" ControlToValidate="confirmEmail" runat="server" 
            ControlToCompare="email" Operator="Equal" EnableClientScript="false" Display="Dynamic"/><br />
        <%-- Todo 4.4 Add a compare validator that checks if the confirmation email is the same as the original email --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_validators.htm#:~:text=CompareValidator%20Control --%>

        <br />
        <asp:Button Text="Submit" runat="server" OnClick="Submit_Click"/><br />
        <asp:Label ID="result" runat="server" />
        <%-- Todo 4.5 When the user submits the form and all validations pass, display all the inputted texts in the "result" label --%> 
    </main>
</asp:Content>