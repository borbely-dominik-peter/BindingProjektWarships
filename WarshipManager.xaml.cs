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
using System.Windows.Shapes;

namespace BindingProjektWarships
{
    /// <summary>
    /// Interaction logic for WarshipManager.xaml
    /// </summary>
    public partial class WarshipManager : Window
    {
        public Warship ManagedWarship { get; set; }
        public WarshipManager(Warship SelWarship)
        {
            InitializeComponent();
            this.DataContext = this;
            this.ManagedWarship = SelWarship;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            this.DialogResult = true;
        }
    }
}
