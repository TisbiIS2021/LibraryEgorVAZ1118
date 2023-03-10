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
    
    public partial class ReaderPage : Page
    {
        public ReaderPage()
        {
            InitializeComponent();
        }

        private void TBSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            Refresh();
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
            var search = App.DB.User.ToList();
            if(string.IsNullOrWhiteSpace(TBSearch.Text) == false)
            {
                search = search.Where(u => u.FIO.ToLower().Contains(TBSearch.Text.ToLower())).ToList();
            }
            DGReader.ItemsSource = search.ToList();
        }
    }
}
