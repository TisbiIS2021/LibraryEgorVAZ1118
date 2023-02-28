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
    /// <summary>
    /// Логика взаимодействия для App.xaml
    /// </summary>
    public partial class App : Application
    {
        public static SuperBibliaDBEntities1 DB = new SuperBibliaDBEntities1();
        public static User LoggedUser;
        public static Colleague LoggedCollegue;
    }
}
