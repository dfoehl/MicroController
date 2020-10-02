using CanClient.ViewModels;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using System.Threading.Tasks;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Core;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// Die Elementvorlage "Leere Seite" wird unter https://go.microsoft.com/fwlink/?LinkId=234238 dokumentiert.

namespace CanClient.Pages
{
    /// <summary>
    /// Eine leere Seite, die eigenständig verwendet oder zu der innerhalb eines Rahmens navigiert werden kann.
    /// </summary>
    public sealed partial class MessagePage : Page
    {
        private Task refreshTask;

        public MessagePage()
        {
            this.InitializeComponent();
            DataContext = ViewModelSelector.MessageViewModel;

            refreshTask = Task.Run(RefreshMessages);
        }

        private void RefreshMessages()
        {
            while(true)
            {
                RestClient.Instance.ReadCanFramesAsync().Wait();
                Task.Delay(250);
            }
        }

        private void SendClicked(object sender, RoutedEventArgs e)
        {

        }
    }
}
