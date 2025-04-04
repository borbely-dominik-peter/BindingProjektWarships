using System.Collections.ObjectModel;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;

namespace BindingProjektWarships;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    public ObservableCollection<Warship> Warships { get; set; } = new ObservableCollection<Warship>();
    public ObservableCollection<Warship> FilteredWarships { get; set; } = new ObservableCollection<Warship>();

    public void FileReader()
    {
        foreach (var data in File.ReadAllLines("warships.csv").Skip(1))
        {
            Warships.Add(new Warship(data));
            FilteredWarships.Add(new Warship(data));
        }
    }

    public MainWindow()
    {
        this.DataContext = this;
        InitializeComponent();
        FileReader();
    }
}