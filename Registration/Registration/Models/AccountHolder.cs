using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registration.Models
{
    public class Payment

    {
        public String firstname { get; set; }
        public String lastname { get; set; }
        public String street { get; set; }
        public String city { get; set; }
        public String parish { get; set; }
        public String accountType { get; set; }
        public decimal deposit { get; set; }
        public String balance { get; set; }
        public decimal withdrawal { get; set; }
        public String accountNumber { get; set; }
        public String cardNumber { get; set; }
    }
}