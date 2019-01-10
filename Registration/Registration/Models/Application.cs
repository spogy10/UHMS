using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Registration.Models
{
    public class Application
    {

        public int id { get; set; }
        public int idnumber { get; set; }
        public String status { get; set; }
         public String  characteristics { get; set; }
        public String dorm { get; set; }
        public String school { get; set; }
        public String dateOfBirth { get; set; }
        public String nationality { get; set; }
        public String faculty { get; set; }
    }
}