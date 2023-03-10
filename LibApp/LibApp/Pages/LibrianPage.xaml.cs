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
    
    public partial class LibrianPage : Page
    {
        public LibrianPage()
        {
            InitializeComponent();
        }

        private void ConBtn_Click(object sender, RoutedEventArgs e)
        {
            IssuanceBook contextIssuance = (sender as Button).DataContext as IssuanceBook;
            contextIssuance.Colleague = App.LoggedCollegue;
            contextIssuance.idStatus = 1;
            App.DB.SaveChanges();
            Refresh();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refresh();
        }
        private void Refresh()
        {
            LVLibrian.ItemsSource = App.DB.IssuanceBook.Where(i => i.Colleague == null).ToList();
        }

        private void AddReadBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddReader(new User()));
        }

        private void ListBookBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new LibraryPage());
        }

        private void ShowReadBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new ReaderPage());
        }

        private void StatusPage_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new StatusPage());
        }

        private void NetBtn_Click(object sender, RoutedEventArgs e)
        {
            IssuanceBook contextIssuance = (sender as Button).DataContext as IssuanceBook;
            App.DB.IssuanceBook.Remove(contextIssuance);
            App.DB.SaveChanges();
            Refresh();
        }
    }
}
