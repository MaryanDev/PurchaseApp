using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace PTT.WebUI.Models
{
    public class RegisterModel
    {
        [Required(ErrorMessage = "Enter your name please")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Enter your email address")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }

        [Required(ErrorMessage = "Enter your password")]
        [DataType(DataType.Password)]
        public string Password { get; set; }

        [Required(ErrorMessage = "Confirm your password")]
        [Compare("Password", ErrorMessage = "Passwords does not match")]
        public string ConfirmPassword { get; set; }
    }
}