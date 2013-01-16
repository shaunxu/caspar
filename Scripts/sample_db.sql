/****** Object:  Table [dbo].[Resource]    Script Date: 9/4/2012 3:47:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resource](
	[Key] [varchar](256) NOT NULL,
	[Culture] [varchar](8) NOT NULL,
	[Value] [nvarchar](4000) NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Culture] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF)
)

GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeAbout_Message', N'en-US', N'Your app description page.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeAbout_Message', N'zh-CN', N'你的关于页面。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeContact_Message', N'en-US', N'Your contact page.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeContact_Message', N'zh-CN', N'你的联系信息页面。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeIndex_Message', N'en-US', N'Modify this template to jump-start your ASP.NET MVC application.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Controller_HomeIndex_Message', N'zh-CN', N'修改次模板页，快速开始您的ASP.NET MVC应用程序。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_Password_Display', N'en-US', N'Password')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_Password_Display', N'zh-CN', N'密码')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_Password_Required', N'en-US', N'Please input {0}.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_Password_Required', N'zh-CN', N'请输入{0}。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_RememberMe_Display', N'en-US', N'Remember me?')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_RememberMe_Display', N'zh-CN', N'记住登录状态？')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_UserName_Display', N'en-US', N'User Name')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_UserName_Display', N'zh-CN', N'用户名')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_UserName_Required', N'en-US', N'Please input the {0}.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_LoginModel_UserName_Required', N'zh-CN', N'请输入{0}。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_ConfirmPassword_Compare', N'en-US', N'The password and confirmation password do not match.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_ConfirmPassword_Compare', N'zh-CN', N'两次输入的密码不一致。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_ConfirmPassword_Display', N'en-US', N'Confirm password')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_ConfirmPassword_Display', N'zh-CN', N'再次输入密码')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_Password_StringLength', N'en-US', N'The {0} must be at least {2} characters long.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'Model_AccountModels_RegisterModel_Password_StringLength', N'zh-CN', N'{0}长度不足。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_ExtenalAccount', N'en-US', N'Use another service to log in.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_ExtenalAccount', N'zh-CN', N'使用其他服务登录。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_LocalAccount', N'en-US', N'Use a local account to log in.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_LocalAccount', N'zh-CN', N'使用本地帐户登录。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_RegisterIfNoAccount', N'en-US', N'{0} if you don''t have an account.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountLogin_RegisterIfNoAccount', N'zh-CN', N'如果没有账户，请{0}。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountRegister_Message', N'en-US', N'Create a new account.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_AccountRegister_Message', N'zh-CN', N'创建一个新用户。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_ExternalLoginsListPartial_MessageInfo', N'en-US', N'There are no external authentication services configured. See <a href="http://go.microsoft.com/fwlink/?LinkId=252166">this article</a> for details on setting up this ASP.NET application to support logging in via external services.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_ExternalLoginsListPartial_MessageInfo', N'zh-CN', N'没有配置任何第三方认证服务。关于如何在ASP.NET应用程序中配置和使用第三方认证服务，请访问此<a href="http://go.microsoft.com/fwlink/?LinkId=252166">文章</a>。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_ExternalLoginsListPartial_SocialLoginList', N'en-US', N'Log in using another service')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_ExternalLoginsListPartial_SocialLoginList', N'zh-CN', N'用其它认证服务登录')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeAbout_Title', N'en-US', N'About')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeAbout_Title', N'zh-CN', N'关于')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeContact_Title', N'en-US', N'Contact')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeContact_Title', N'zh-CN', N'联系信息')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeIndex_Title', N'en-US', N'Home Page')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomeIndex_Title', N'zh-CN', N'首页')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Featured', N'en-US', N'To learn more about ASP.NET MVC visit <a href="http://asp.net/mvc" title="ASP.NET MVC Website">http://asp.net/mvc</a>. The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET MVC. If you have any questions about ASP.NET MVC visit <a href="http://forums.asp.net/1146.aspx/1?MVC" title="ASP.NET MVC Forum">our forums</a>.')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Featured', N'zh-CN', N'要了解更多关于ASP.NET MVC的信息请访问<a href="http://asp.net/mvc" title="ASP.NET MVC网站">http://asp.net/mvc</a>。该页面提供<mark>视频，教程和例子</mark>，以帮助你获得对全面的ASP.NET MVC资讯。如果您有任何关于ASP.NET MVC的问题，请访问我们的<a href="http://forums.asp.net/1146.aspx/1?MVC" title="ASP.NET MVC论坛">论坛</a>。')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest', N'en-US', N'We suggest the following:')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest', N'zh-CN', N'我们建议：')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_1_Title', N'en-US', N'Getting Started')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_1_Title', N'zh-CN', N'入门')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_1_Val', N'en-US', N'ASP.NET MVC gives you a powerful, patterns-based way to build dynamic websites that enables a clean separation of concerns and that gives you full control over markup for enjoyable, agile development. ASP.NET MVC includes many features that enable fast, TDD-friendly development for creating sophisticated applications that use the latest web standards. <a href="http://go.microsoft.com/fwlink/?LinkId=245151">Learn more...</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_1_Val', N'zh-CN', N'ASP.NET MVC为您提供了一个强大的、基于模式的方式来构建动态网站，使一个干净的关注点分离，让您愉快，敏捷开发的完全控制权的标记。 ASP.NET MVC包含了许多功能，使快速创建复杂的应用程序，使用最新的Web标准，TDD友好的开发。<a href="http://go.microsoft.com/fwlink/?LinkId=245151">了解更多…</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_2_Title', N'en-US', N'Add NuGet packages and jump-start your coding')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_2_Title', N'zh-CN', N'添加NuGet软件包，快速开始编码')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_2_Val', N'en-US', N'NuGet makes it easy to install and update free libraries and tools. <a href="http://go.microsoft.com/fwlink/?LinkId=245153">Learn more...</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_2_Val', N'zh-CN', N'NuGet让安装和更新免费的代码库和工具变得异常容易。<a href="http://go.microsoft.com/fwlink/?LinkId=245153">了解更多…</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_3_Title', N'en-US', N'Find Web Hosting')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_3_Title', N'zh-CN', N'寻找虚拟主机')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_3_Val', N'en-US', N'You can easily find a web hosting company that offers the right mix of features and price for your applications. <a href="http://go.microsoft.com/fwlink/?LinkId=245157">Learn more...</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_HomIndex_Suggest_3_Val', N'zh-CN', N'您可以很容易地找到一个Web托管公司，提供为您的应用程序的功能和价格的最佳组合。<a href="http://go.microsoft.com/fwlink/?LinkId=245157">了解更多…</a>')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_Layout_LogoHere', N'en-US', N'your logo here')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_Layout_LogoHere', N'zh-CN', N'在这儿放置图标')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_Layout_Title', N'en-US', N'My ASP.NET MVC Application')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_Layout_Title', N'zh-CN', N'我的ASP.NET MVC应用程序')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Login', N'en-US', N'Log in')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Login', N'zh-CN', N'登录')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Logoff', N'en-US', N'Log off')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Logoff', N'zh-CN', N'登出')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Register', N'en-US', N'Register')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_LoginPartial_Register', N'zh-CN', N'注册')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_About', N'en-US', N'About')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_About', N'zh-CN', N'关于')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_Contact', N'en-US', N'Contact')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_Contact', N'zh-CN', N'联系信息')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_Home', N'en-US', N'Home')
GO
INSERT [dbo].[Resource] ([Key], [Culture], [Value]) VALUES (N'View_PageName_Home', N'zh-CN', N'首页')
GO
