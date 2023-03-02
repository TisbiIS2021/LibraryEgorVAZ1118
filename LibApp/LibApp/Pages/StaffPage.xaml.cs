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
    
    public partial class StaffPage : Page
    {
        public StaffPage()
        {
            InitializeComponent();
            DGStuff.ItemsSource = App.DB.Colleague.ToList();
        }

        private void AddBookBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void AddStuffBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddStuffPage(new Colleague(){ DateOfBirth = DateTime.Now}));
        }
    }
}
