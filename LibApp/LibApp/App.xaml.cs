using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using LibApp.Models;

namespace LibApp
{
    
    public partial class App : Application
    {
        public static SuperBibliaDBEntities2 DB = new SuperBibliaDBEntities2();
        public static User LoggedUser;
        public static Colleague LoggedCollegue;
    }
}
