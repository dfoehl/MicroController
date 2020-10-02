using CanClient.Models;
using CanClient.ViewModels;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
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
    public sealed partial class CanPage : Page
    {
        public CanPage()
        {
            this.InitializeComponent();
            DataContext = ViewModelSelector.CanViewModel;
        }

        private async void ScanClickedAsync(object sender, RoutedEventArgs e) => await RestClient.Instance.CanScanAsync();

        private async void ScanI2cClickedAsync(object sender, RoutedEventArgs e)
        {
            await RestClient.Instance.I2cScanAsync((CanDevice)((MenuFlyoutItem)sender).DataContext) ;
        }
    }
}
