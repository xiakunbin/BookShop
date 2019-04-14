<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <link href="<%=Url.Content("~/CSS/Index.css") %>" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!--middle content-->
    <div id="content">
        <div id="magic">
            <img src="<%=Url.Content("~/images/a_b_02.jpg") %>" alt="幻灯图片" width="480" height="200" />
        </div>
        <div id="a_b_02">
            <a href="#">电子词典专柜上线</a>
            <a href="#">Lucy陪你说真人口语英语对译软件</a>
            <a href="#" class="red">哇~这东西真便宜，大家快来抢啊！</a>
        </div>
        <!--comment books start-->
        <div id="comment_book">
            <ul>
                <li>
                    <a href="<%=Url.Content("~/Books/Detail/4946") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787302140160.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/4946") %>">框架设计（第2版）</a><br />
                    <s>￥68</s><span>￥58</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5337") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787115159755.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5337") %>">Essential ASP.NET 2.0中文版</a>
                    <br />
                    <s>￥39</s> <span>￥28</span> 
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5426") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787508442853.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5426") %>">ASP.NET程序员成长攻略</a><br />
                    <s>￥65</s> <span>￥50</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5426") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787111210696.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5425") %>">Java EE 和.NET互操作性</a><br />
                    <s>￥49</s> <span>￥35</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5690") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787111213826.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5690") %>">Java编程思想（第4版）</a><br />
                    <s>￥108</s> <span>￥88</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5693") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787115143150.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5693") %>">Spring in Action中文版</a><br />
                    <s>￥39</s> <span>￥29</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5291") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787121035753.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5291") %>">
                        Programming ASP.NET<br /> 
                        中文版
                    </a><br />
                    <s>￥99</s> <span>￥68</span>
                </li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/5297") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/9787115149299.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/5297") %>">
                        NET设计规范:<br />
                        .NET约定、惯用法与模式
                    </a><br />
                    <s>￥49</s> <span>￥40</span></li>

                <li>
                    <a href="<%=Url.Content("~/Books/Detail/4943") %>">
                        <img src="<%=Url.Content("~/Images/BookCovers/978711515888.jpg") %>" alt="" />
                    </a>
                    <a href="<%=Url.Content("~/Books/Detail/4943") %>">
                        Effective C# 中文版<br />
                        改善C#程序的50种方法
                    </a><br />
                    <s>￥49</s> <span>￥38</span>
                </li>
            </ul>
        </div>
        <!--comment books end-->
    </div>

    <!--sidebar content-->
    <div id="sidebar">
        <ul id="notice">
            <li><a href="#">国庆期间货物延期配送公告</a></li>
            <li><a href="#">英语高级口语资格考试</a></li>
            <li><a href="#">英语高级口语资格考试</a></li>
            <li><a href="#">英语高级口语资格考试</a></li>
        </ul>
        <div id="order_find">
            <form action="" method="post" target="_blank">
                <label>订单号：</label><input type="text" id="Text1" class="order_key" />
                <input type="submit" id="Submit1" class="order_sub" value="查询状态" />
            </form>
        </div>
        <div class="service">
            <p>
                <a href="#">
                    <img src="<%=Url.Content("~/Images/QQ_01.gif") %>" /></a>
                <a href="#">
                    <img src="<%=Url.Content("~/Images/QQ_02.gif") %>" /></a>
                <a href="#">
                    <img src="<%=Url.Content("~/Images/QQ_02.gif") %>" /></a>
            </p>
            <p>
                <a href="#">
                    <img src="<%=Url.Content("~/Images/taobao_01.gif") %>" /></a>
                <a href="#">
                    <img src="<%=Url.Content("~/Images/taobao_02.gif") %>" /></a>
            </p>
        </div>
        <!--hot books start-->
        <div class="sidedt hots">
            <h1>热销排行</h1>
            <ul>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
            </ul>
        </div>
        <!--hot books end-->
        <!--laster books start-->
        <div class="sidedt laster">
            <h1>热销排行</h1>
            <ul>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
                <li><a href="#">英语高级口语资格考试</a></li>
            </ul>
        </div>
        <!--laster books end-->
    </div>

</asp:Content>
