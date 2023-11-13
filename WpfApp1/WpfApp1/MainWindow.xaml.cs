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
using System.Windows.Threading;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private TimeSpan timeSpan;
        private bool timerOn = false;

        private DispatcherTimer timer;
        public MainWindow()
        {
            InitializeComponent();
            timeSpan = new TimeSpan(0, 1, 30);
            timer = new DispatcherTimer
            {
                Interval = new TimeSpan(0, 0, 1)
            };
            timer.Tick += Timer_Tick;            
        }

        private void StartTimer_Click(object sender, RoutedEventArgs e)
        {            
            if (timerOn) 
            {
                timer.Stop();
                TimerSwitch.Content = "▶️";
                timerOn = false;                
            }
            else
            {
                timerOn = true;
                TimerSwitch.Content = "⏸";
                timer.Start();
            }
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            timeSpan -= new TimeSpan(0, 0, 1);
            if (timeSpan == new TimeSpan(0, 0, 0))
            {
                timer.Stop();
            }
            Timer.Content = timeSpan.ToString(@"mm\:ss");
        }

        #region ScaleValue Depdency Property
        public static readonly DependencyProperty ScaleValueProperty = DependencyProperty.Register("ScaleValue", typeof(double), typeof(MainWindow), new UIPropertyMetadata(1.0, new PropertyChangedCallback(OnScaleValueChanged), new CoerceValueCallback(OnCoerceScaleValue)));
        private static object OnCoerceScaleValue(DependencyObject o, object value)
        {
            MainWindow mainWindow = o as MainWindow;
            if (mainWindow != null)
                return mainWindow.OnCoerceScaleValue((double)value);
            else return value;
        }
        private static void OnScaleValueChanged(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            MainWindow mainWindow = o as MainWindow;
            if (mainWindow != null)
                mainWindow.OnScaleValueChanged((double)e.OldValue, (double)e.NewValue);
        }
        protected virtual double OnCoerceScaleValue(double value)
        {
            if (double.IsNaN(value))
                return 1.0f;
            value = Math.Max(0.1, value);
            return value;
        }
        protected virtual void OnScaleValueChanged(double oldValue, double newValue) { }
        public double ScaleValue
        {
            get => (double)GetValue(ScaleValueProperty);
            set => SetValue(ScaleValueProperty, value);
        }
        
        private void MainGrid_SizeChanged(object sender, EventArgs e) => CalculateScale();
        private void CalculateScale()
        {
            double yScale = ActualHeight / 450f;
            double xScale = ActualWidth / 800f;
            double value = Math.Min(xScale, yScale);
            ScaleValue = (double)OnCoerceScaleValue(myMainWindow, value);
        }
        #endregion

        #region Buttons clicks
        private void RemoveAlertBlue_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsBlue.Text, out int alertsValue);
            AlertsBlue.Text = (alertsValue - 1).ToString();
        }

        private void AddAlertBlue_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsBlue.Text, out int alertsValue);
            AlertsBlue.Text = (alertsValue + 1).ToString();
        }

        private void AddAlertRed_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsRed.Text, out int alertsValue);
            AlertsRed.Text = (alertsValue + 1).ToString();
        }

        private void RemoveAlertRed_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsRed.Text, out int alertsValue);
            AlertsRed.Text = (alertsValue - 1).ToString();
        }

        private void RemovePointFromBlue_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(BlueFighterPointsCounter.Text, out int pointsValue);
            BlueFighterPointsCounter.Text = (pointsValue - 1).ToString();
        }

        private void NullerBlue_Click(object sender, RoutedEventArgs e)
        {

            BlueFighterPointsCounter.Text = "0";
        }

        private void AddPointToBlue_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(BlueFighterPointsCounter.Text, out int pointsValue);
            BlueFighterPointsCounter.Text = (pointsValue + 1).ToString();
        }

        private void RemovePointFromRed_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(RedFighterPointsCounter.Text, out int pointsValue);
            RedFighterPointsCounter.Text = (pointsValue - 1).ToString();
        }

        private void NullerRed_Click(object sender, RoutedEventArgs e)
        {
            RedFighterPointsCounter.Text = "0";
        }

        private void AddPointToRed_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(RedFighterPointsCounter.Text, out int pointsValue);
            RedFighterPointsCounter.Text = (pointsValue + 1).ToString();
        }
        #endregion        
    }
}
