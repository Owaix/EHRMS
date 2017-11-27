namespace EHRMS.ViewModel
{
    internal class FormAuthenticationUserData
    {
        public string MasterPassword { get; set; }
        public string EmailAddress { get; set; }
        public string CompanyId { get; set; }
        public string BusinessCode { get; set; }
        public string CompanyName { get; set; }
        public string LoginId { get; set; }
        public int StaffId { get; set; }
        public int[] UserRoleId { get; set; }
        public bool IsSystemRole { get; set; }
        public bool IsSuperAdmin { get; set; }
        public string UserId { get; set; }
    }
}