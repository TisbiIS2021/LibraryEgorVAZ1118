using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using LibApp.Models;

namespace LibApp.Pages
{
    
    public partial class AddReader : Page
    {
        User contextUser;
        public AddReader(User user)
        {
            InitializeComponent();
            contextUser = user;
            DataContext = contextUser;
        }

        private void OkBtn_Click(object sender, RoutedEventArgs e)
        {
            var error = "";

            if (string.IsNullOrWhiteSpace(contextUser.FIO) == true)
                error += "Введите ФИО\n";
            if (contextUser.DateOfBirth == null)
                error += "Укажите дату рождения\n";
            if (string.IsNullOrWhiteSpace(contextUser.Adress) == true)
                error += "Введите адрес\n";
            if (string.IsNullOrWhiteSpace(contextUser.Phone) == true)
                error += "Укажите номер телефона";
            if(string.IsNullOrWhiteSpace(error) == false)
            {
                MessageBox.Show(error);
            }
            App.DB.User.Add(contextUser);
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }
    }
}
