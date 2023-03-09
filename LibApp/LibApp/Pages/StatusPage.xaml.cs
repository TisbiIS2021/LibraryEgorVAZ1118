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
    
    public partial class StatusPage : Page
    {
        IssuanceBook issuanceBook;
        public StatusPage()
        {
            InitializeComponent();
        }

        private void GBBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refresh();
        }
        private void Refresh()
        {
            LVStatus.ItemsSource = App.DB.IssuanceBook.ToList();
            
        }

        private void SdalBtn_Click(object sender, RoutedEventArgs e)
        {
            issuanceBook = (sender as Button).DataContext as IssuanceBook;
            issuanceBook.idStatus = 2;
            App.DB.SaveChanges();
            Refresh();
        }
    }
}
