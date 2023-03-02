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
    
    public partial class AddStuffPage : Page
    {
        Colleague contextStuff;
        public AddStuffPage(Colleague stuff)
        {
            InitializeComponent();
            contextStuff = stuff;
            DataContext = contextStuff;
            CBPost.ItemsSource = App.DB.Post.ToList();
        }

        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            var selectedPost = CBPost.SelectedItem as Post;

            if(contextStuff.idPost == 0)
            {
                App.DB.Colleague.Add(contextStuff);
            }
            App.DB.SaveChanges();
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            Refresh();
        }

        private void Refresh()
        {

        }
    }
}
