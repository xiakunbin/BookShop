using BookShop.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Web.Controllers
{
    public class AccountController : Controller
    {
        const string strErrorUser = "用户名或密码不正确，请重新填写!";
        //
        // GET: /Account/

        public ActionResult Index()
        {
            return View("Login");
        }

        public ActionResult LogIn()
        {
            string loginId = Request.Form["loginId"];//获取用户名
            string password = Request.Form["password"];//获取密码
            string returnUrl = Request.QueryString["returnUrl"];//获取returnUrl
            //错误验证（无提示）
            if (string.IsNullOrEmpty(loginId))
            {
                return View("Login");
            }
            if (string.IsNullOrEmpty(password))
            {
                return View("Login");
            }

            //调用访问数据库的方法，并判断登录是否成功
            if (LogIn(loginId, password))
            {
                //记住用户名和密码
                string recordMe = Request.Form["RecordMe"];
                if (!string.IsNullOrEmpty(recordMe))//记住用户名和密码
                {
                    HttpCookie nameCookie = new HttpCookie("loginId", loginId);
                    //设置Cookie 不过期
                    nameCookie.Expires = DateTime.MaxValue;
                    Response.Cookies.Add(nameCookie);

                    HttpCookie passwordCookie = new HttpCookie("password", password);
                    Response.Cookies.Add(passwordCookie);
                }
                else
                {
                    //让cookie 失效
                    Response.Cookies["loginId"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);
                }


                //保持用户状态
                Session["CurrentUser"] = new User { LoginId = loginId };

                if (string.IsNullOrEmpty(returnUrl))
                {
                    //重定向到首页
                    Response.Redirect("~/");
                }
                else
                {
                    //重定向到returnUrl
                    Response.Redirect(Server.UrlDecode(returnUrl));
                }
            }

            return View();


        }

        #region "数据访问"
        /// <summary>
        /// 登录验证
        /// </summary>
        /// <param name="loginId">登录名</param>
        /// <param name="loginPwd">登录密码</param>
        /// <returns>返回true表示成功</returns>
        bool LogIn(string loginId, string loginPwd)
        {
            bool userExists = false;
            using (SqlConnection conn = new SqlConnection(
                "Data Source=localhost;Initial Catalog=BookShopPlus;User ID=sa;password=bdqn"))
            {
                conn.Open();
                string sql = "select count(0) from Users where LoginId=@LoginId and LoginPwd=@LoginPwd";
                SqlParameter[] parameters = new SqlParameter[]
			   {
				new SqlParameter("@LoginId",loginId),  
				new SqlParameter("@LoginPwd",loginPwd)
			   };
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddRange(parameters);
                if (Convert.ToInt32(cmd.ExecuteScalar()) > 0)
                {
                    userExists = true;
                }
            }
            return userExists;
        }
        #endregion

    }
}
