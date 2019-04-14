using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookShop.Models
{
    public class User
    {
        public string LoginId { get; set; }//用户名
        public string LoginPwd { get; set; }//密码
        public string Name { get; set; }//姓名
    }
}