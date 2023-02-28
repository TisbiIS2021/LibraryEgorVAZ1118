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
using LibApp.Pages;

namespace LibApp.Pages
{
    
    public partial class AuthPage : Page
    {
        public AuthPage()
        {
            InitializeComponent();
        }

        private void LogBtn_Click(object sender, RoutedEventArgs e)
        {
            var phone = PhoneTB.Text;

            var stuff = App.DB.Colleague.FirstOrDefault(s => s.Phone == phone);
            var user = App.DB.User.FirstOrDefault(u => u.Phone == phone);
            
            if(stuff == null)
            {
                MessageBox.Show("Не тот телефон");
                return;
            }
            if(user == null)
            {
                MessageBox.Show("Не тот телефон");
                return;
            }
        }
    }
}
