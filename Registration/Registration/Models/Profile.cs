using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registration.Models
{
    public class Profile
    {
        public int id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Image { get; set; }
        public string Middlename { get; set; }
        public int schoolid { get; set; }
        public String Email { get; set; }
        public string Street { get; set; }
        public string Town { get; set; }
        public string Parish { get; set; }
    }
}