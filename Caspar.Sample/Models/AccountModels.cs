using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Globalization;
using System.Web.Security;

namespace Caspar.Sample.Models
{
    public class UsersContext : DbContext
    {
        public UsersContext()
            : base("DefaultConnection")
        {
        }

        public DbSet<UserProfile> UserProfiles { get; set; }
    }

    [Table("UserProfile")]
    public class UserProfile
    {
        [Key]
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int UserId { get; set; }
        public string UserName { get; set; }
    }

    public class RegisterExternalLoginModel
    {
        [Required]
        [Display(Name = "User name")]
        public string UserName { get; set; }

        public string ExternalLoginData { get; set; }
    }

    public class LocalPasswordModel
    {
        [Required]
        [DataType(DataType.Password)]
        [Display(Name = "Current password")]
        public string OldPassword { get; set; }

        [Required]
        [StringLength(100, ErrorMessage = "The {0} must be at least {2} characters long.", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "New password")]
        public string NewPassword { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Confirm new password")]
        [Compare("NewPassword", ErrorMessage = "The new password and confirmation password do not match.")]
        public string ConfirmPassword { get; set; }
    }

    public class LoginModel
    {
        [Required(ErrorMessage = "Model_AccountModels_LoginModel_UserName_Required")]
        [Display(Name = "Model_AccountModels_LoginModel_UserName_Display")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Model_AccountModels_LoginModel_Password_Required")]
        [DataType(DataType.Password)]
        [Display(Name = "Model_AccountModels_LoginModel_Password_Display")]
        public string Password { get; set; }

        [Display(Name = "Model_AccountModels_LoginModel_RememberMe_Display")]
        public bool RememberMe { get; set; }
    }

    public class RegisterModel
    {
        [Required(ErrorMessage="Model_AccountModels_LoginModel_UserName_Required")]
        [Display(Name = "Model_AccountModels_LoginModel_UserName_Display")]
        public string UserName { get; set; }

        [Required(ErrorMessage = "Model_AccountModels_LoginModel_Password_Required")]
        [StringLength(100, ErrorMessage = "Model_AccountModels_RegisterModel_Password_StringLength", MinimumLength = 6)]
        [DataType(DataType.Password)]
        [Display(Name = "Model_AccountModels_LoginModel_Password_Display")]
        public string Password { get; set; }

        [DataType(DataType.Password)]
        [Display(Name = "Model_AccountModels_RegisterModel_ConfirmPassword_Display")]
        [Compare("Password", ErrorMessage = "Model_AccountModels_RegisterModel_ConfirmPassword_Compare")]
        public string ConfirmPassword { get; set; }
    }

    public class ExternalLogin
    {
        public string Provider { get; set; }
        public string ProviderDisplayName { get; set; }
        public string ProviderUserId { get; set; }
    }
}
