<%@ Page Language="C#" CodeBehind="~/Exercise2.aspx.cs" Inherits="Module1Exercise1.Exercise2" MasterPageFile="~/Site1.Master"%>

<%-- Exercise 2: Exploring ASP.NET Form Controls --%>
<%-- Useful References: https://www.tutorialspoint.com/asp.net/index.htm --%>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h1>Malayan Music Festival Registration</h1>
        <%-- TODO 3.1 Create two text boxes for the first name and last name --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=Text%20Boxes%20and%20Labels --%>
        <asp:TextBox runat="server" ID="firstname" placeholder="Enter First Name" TextMode="SingleLine"/><br />
        <asp:TextBox runat="server" ID="lastname" placeholder="Énter Last Name" TextMode="SingleLine"/><br />

        <%-- Todo 3.2 Create a text box for inputting the age of the user. Make sure to set the TextMode to the proper value--%>
        <asp:TextBox runat="server" ID="userAge" placeholder="Enter your age" TextMode="Number"/><br />
        <br />

        <%-- TODO 3.3 Create a DropDownList for the ticket type. It must have the following options: Starter, General Admissions, Gold, VIP --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_basic_controls.htm#:~:text=DropDownList --%>
        <asp:Label Text="Choice Ticket:" runat="server" /><br />
        <asp:DropDownList runat="server" ID="Ticket">
            <asp:ListItem Text="Starter" />
            <asp:ListItem Text="General Admissions" />
            <asp:ListItem Text="Gold" />
            <asp:ListItem Text="VIP" />
        </asp:DropDownList><br />
        <br />

        <%-- TODO 3.4 Create a Radio Button List for selecing which days they are planning to attend. It must have following options: Day 1 Only, Day 2 Only, Both Day 1 and 2--%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.radiobuttonlist?view=netframework-4.8.1#:~:text=RadioButtonList%20id=%22RadioButtonList1%22 --%>
        <asp:Label Text="Select days to attent:" runat="server" />
        <asp:RadioButtonList runat="server" ID="attendingTimeslots">
            <asp:ListItem Text="Day 1 Only" />
            <asp:ListItem Text="Day 2 Only" />
            <asp:ListItem Text="Both Day 1 and 2" />
        </asp:RadioButtonList><br />

        <%-- TODO 3.5 Create a Checkbox List for the performances they are planning to attend. List down your favorite arists for the options. --%>
        <%-- It must look something like --%>
        <%-- Which performances are you planning to attend? --%>
        <%-- <Artist Name 1> - [ ] --%>
        <%-- <Artist Name 2> - [x] --%>
        <%-- <Artist Name 3> - [ ] --%>
        <%-- Hint: https://learn.microsoft.com/en-us/dotnet/api/system.web.ui.webcontrols.checkboxlist?view=netframework-4.8.1#:~:text=CheckBoxList%20id=%22checkboxlist1%22 --%>
        <asp:Label Text="Select Perfomances to watch:" runat="server" />
        <asp:CheckBoxList runat="server">
            <asp:ListItem Text="Keshi" />
            <asp:ListItem Text="Luke Chiang" />
            <asp:ListItem Text="slchld" />
            <asp:ListItem Text="HYBS" />
        </asp:CheckBoxList>

        <%-- TODO 3.6 Create a FileUpload for their proof of payment. It must only accept JPG and PNG files. --%>
        <%-- Hint: https://www.tutorialspoint.com/asp.net/asp.net_file_uploading.htm#:~:text=%3Ch3%3E%20File%20Upload:%3C/h3%3E --%>
        <div>
            <asp:FileUpload runat="server" ID="FileUpload" Accept=".jpg, .png"/><br />
            <asp:Button Text="Upload" runat="server" OnClick="UploadProof_Click"/><br />
            <asp:Label Text="" runat="server" ID="ResponseLabel"/>
        </div>
    </main>
</asp:Content>