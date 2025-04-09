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
using System.Media;

namespace BindingProjektWarships;

/// <summary>
/// Interaction logic for MainWindow.xaml
/// </summary>
public partial class MainWindow : Window
{
    public ObservableCollection<Warship> Warships { get; set; } = new ObservableCollection<Warship>();
    public ObservableCollection<Warship> FilteredWarships { get; set; } = new ObservableCollection<Warship>();

    public Warship SelectedWarship { get; set; }

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

    private void BtnAddNew_Click(object sender, RoutedEventArgs e)
    {
        WarshipManager WsManager = new WarshipManager(new Warship());
        if (WsManager.ShowDialog() == true)
        {
            Warships.Add(WsManager.ManagedWarship);
            FilteredWarships.Add(WsManager.ManagedWarship);
            WriteLineToFile(WsManager.ManagedWarship);
        }
    }

    public void WriteLineToFile(Warship Ws)
    {
        string WriterString = $"{Ws.Name},{Ws.Class},{Ws.Type},{Ws.Launched},{Ws.MainGunCaliber},{Ws.Country}";
        File.AppendAllText("warships.csv", WriterString);
        File.AppendAllText("../../../warships.csv", WriterString); // write to included csv file(3 directories up)
    }

    private void BtnModify_Click(object sender, RoutedEventArgs e)
    {
        if (this.SelectedWarship == null)
        {
            MessageBox.Show("No selected ship", "ERROR", MessageBoxButton.OK, MessageBoxImage.Error);
            return;
        }
        WarshipManager WsManager = new WarshipManager(this.SelectedWarship);
        int IndexOfTarget = -1;
        foreach (var WarShip in Warships)
        {
            if (WarShip == SelectedWarship)
            {
                IndexOfTarget = Warships.IndexOf(WarShip);
                break;
            }
        }
        if (WsManager.ShowDialog() == true)
        {
            Warships[IndexOfTarget] = WsManager.ManagedWarship;
            FilteredWarships[IndexOfTarget] = WsManager.ManagedWarship;
            FileOverWriter();
        }
    }

    public void FileOverWriter()
    {
        List<string> write = new List<string>();
        write.Add("name,class,type,launched,main_gun_caliber,country");
        foreach (var Ws in Warships)
        {
            write.Add($"{Ws.Name},{Ws.Class},{Ws.Type},{Ws.Launched},{Ws.MainGunCaliber},{Ws.Country}");
        }
        File.WriteAllLines("warships.csv", write);
        File.WriteAllLines("../../../warships.csv", write);
    }
}