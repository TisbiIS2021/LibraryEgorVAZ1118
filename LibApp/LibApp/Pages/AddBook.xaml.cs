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
    public partial class AddBook : Page
    {
        Book contextBook;
        public AddBook(Book book)
        {
            InitializeComponent();
            contextBook = book;
            DataContext = contextBook;
            CBGenre.ItemsSource = App.DB.Genre.ToList();
            CBPub.ItemsSource = App.DB.Publisher.ToList();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedPub = CBPub.SelectedItem as Publisher;
            var selectedGenre = CBGenre.SelectedItem as Genre;
            var error = "";
            if(string.IsNullOrWhiteSpace(contextBook.BookName) == true)
                error += "Введите имя\n";
            if (selectedPub == null)
                error += "Укажите издательство\n";
            if (contextBook.NumberOfCopies == 0)
                error += "Укажите число копий\n";
            if (contextBook.YearPublication == 0)
                error += "Укажите год публикации";
            if (selectedGenre == null)
                error += "Укажите жанр";
            if(string.IsNullOrWhiteSpace(error) == false)
            {
                MessageBox.Show(error);
                return;
            }
            if(contextBook.id == 0)
            {
                App.DB.Book.Add(contextBook);
            }
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }

        
    }
}
