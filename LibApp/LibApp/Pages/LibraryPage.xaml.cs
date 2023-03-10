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
   
    public partial class LibraryPage : Page
    {
        List<IssuanceBook> issuanceBooks = new List<IssuanceBook>();
        public LibraryPage()
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
            var search = App.DB.Book.ToList();
            if (string.IsNullOrWhiteSpace(SerchTB.Text) == false)
            {
                search = search.Where(u => u.BookName.ToLower().Contains(SerchTB.Text.ToLower())).ToList();
            }
            LVBook.ItemsSource = search;
            DGBook.ItemsSource = issuanceBooks.ToList();
            if(App.LoggedUser == null)
            {
                SPOf.Visibility = Visibility.Collapsed;
                HisBtn.Visibility = Visibility.Collapsed;
            }
        }

        private void TakeBtn_Click(object sender, RoutedEventArgs e)
        {
            if(DP.SelectedDate == null)
            {
                MessageBox.Show("Выберите дату");
                return;
            }
            issuanceBooks.Add(new IssuanceBook
            {
                Book = (sender as Button).DataContext as Book,
                DateIssuance = DateTime.Now,
                DaterReturn = DP.SelectedDate,
                User = App.LoggedUser,
            });
            Refresh();
        }

        private void RentBtn_Click(object sender, RoutedEventArgs e)
        {
            if(issuanceBooks.Count == 0)
            {
                MessageBox.Show("Корзина пуста");
                return;
            }
            App.DB.IssuanceBook.AddRange(issuanceBooks);
            App.DB.SaveChanges();
        }

        private void SerchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            Refresh();
        }

        private void HisBtn_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new HistoryPage());
        }
    }
}
