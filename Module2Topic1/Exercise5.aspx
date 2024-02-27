<%@ Page Language="C#" CodeBehind="~/Exercise5.aspx.cs" Inherits="Module1Exercise1.Exercise4" MasterPageFile="~/Site1.Master"%>

<%-- Exercise 5: Creating reusable layouts using master pages--%>
<%-- TODO 5.1 Create a master page that contains a navigation bar, a main content, and a footer. --%>
<%-- The navigation bar should contain links to the other exercises --%>
<%-- The main content must include the content that the other pages will implement --%>
<%-- The footer should contain the copyright information of the page. I.e. it should display "Copyright <your name> 2024" --%>
<%-- Hint: https://www.c-sharpcorner.com/article/how-to-create-master-page-in-asp-net/ --%>

<%-- TODO 5.2 Make this page use the master page that you have created --%>
<%-- In the main content of this page, write your reflection about the following: --%>
<%-- * How would you compare plain HTML to ASP.NET WebForms --%>
<%-- * The code behind (C#) and JavaScript seem to share many use cases. When should you implement logic in the code behind and when should you implement logic in JavaScript? Provide examples. --%>
<%-- * Explain what post backs are. --%>

<asp:Content ID="Content" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h3>Reflection</h3>
        <p>
            1. I would say its a bit more complex but it wasn't that difficult to adjust to once I was
            able to understand asp tags and a little bit more improvements from looking up sources online.
        </p>
        <p>
            2. From my understanding, code behind should be implemented when it requires a users to send data to servers so as to keep tabs on what
            the user has done or getting validations on a website or application. As for javascript, It should be implemented when the developers
            wish to improve the UI or add functionality to their website to make them more interactive or eye catching by dynamically changing the 
            environment of their app when an event happens
        </p>
        <p>
            3. A post back is when the client side is a type of request that is sent to the server to report what the users did.
        </p>
    </main>
</asp:Content>