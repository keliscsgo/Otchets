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

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            ClassADO.entObj = new olimpEntities2();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            svyaz svyazObj = new svyaz()
            {
                FIO = FullName.Text,
                datazapisi = Convert.ToDateTime(BirthDate.Text),
                pol = Gender.Text,
                messagetrevogi = Zhaloby.Text,
                telephone = Phone.Text,
            };

            ClassADO.entObj.svyaz.Add(svyazObj);
            ClassADO.entObj.SaveChanges();

            MessageBox.Show("Успешно!");
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}

