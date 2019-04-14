<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <link href="<% =Url.Content("~/Css/member.css")%>" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div id="action_area" class="member_form">
        <h2 class="action_type">
            <img src="<% =Url.Content("~/Images/login_in.gif")%>" alt="会员登录" /></h2>
        <p class="state">
            欢迎光临第三波书店网站，本站为第三波旗下专业在线书店！<br />
            您可以使用第三波书店的用户名，直接登录。
        </p>
        <% string userName = Request.Cookies["loginId"] != null ? Request.Cookies["loginId"].Value : "";
           string password = Request.Cookies["password"] != null ? Request.Cookies["password"].Value : "";
        %>
        <form action="<% =Url.Content("~/Account/Login")%>" method="post">
            <p><%=Html.ValidationMessage("dataValidate") %></p>
            <p>
                <label>用户名</label><input name="loginId" type="text" value="<%=userName %>" class="opt_input" /><%=Html.ValidationMessage("loginId") %>
            </p>

            <p>
                <label>密&#160;&#160;&#160;&#160;码</label><input name="password" type="password" value="<%=password %>" class="opt_input" /><%=Html.ValidationMessage("password") %>
            </p>

            <p class="form_sub">
                <input type="checkbox" name="RecordMe" />
                在此计算机上保留我的用户名和密码
            </p>
            <p class="form_sub">
                <input type="submit" value="登入" class="opt_sub" /><a href="#">忘记密码？</a>
            </p>

        </form>
    </div>

</asp:Content>
