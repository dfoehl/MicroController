using CanClient.Pages;
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

// Die Elementvorlage "Leere Seite" wird unter https://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x407 dokumentiert.

namespace CanClient
{
    /// <summary>
    /// Eine leere Seite, die eigenständig verwendet oder zu der innerhalb eines Rahmens navigiert werden kann.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        public MainPage()
        {
            this.InitializeComponent();
            ContentFrame.Navigate(typeof(MessagePage));
        }

        private void NavigationView_ItemInvoked(NavigationView sender, NavigationViewItemInvokedEventArgs args)
        {
            switch(args.InvokedItemContainer.Tag.ToString())
            {
                case "messages":
                    ContentFrame.Navigate(typeof(MessagePage), null, args.RecommendedNavigationTransitionInfo);
                    break;
                case "i2c":
                    ContentFrame.Navigate(typeof(I2cPage), null, args.RecommendedNavigationTransitionInfo);
                    break;
                case "can":
                    ContentFrame.Navigate(typeof(CanPage), null, args.RecommendedNavigationTransitionInfo);
                    break;
            }
        }
    }
}
