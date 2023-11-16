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
        private TimeSpan timerValue;
        private TimeSpan timerStandart = new(0,1,30);
        private bool timerOn;
        private bool redOnLeft;

        private readonly DispatcherTimer timer;
        public MainWindow()
        {
            InitializeComponent();
            timerValue = timerStandart;
            timer = new DispatcherTimer
            {
                Interval = new TimeSpan(0, 0, 1)
            };
            timer.Tick += Timer_Tick;
            redOnLeft = true;
            timerOn = false;
        }

        private void Timer_Tick(object sender, EventArgs e)
        {
            timerValue -= new TimeSpan(0, 0, 1);
            if (timerValue == new TimeSpan(0, 0, 0))
            {
                timer.Stop();
            }
            UpdateTimer();
        }

        #region ScaleValue Depdency Property
        public static readonly DependencyProperty ScaleValueProperty = DependencyProperty.Register("ScaleValue", typeof(double), typeof(MainWindow), new UIPropertyMetadata(1.0, new PropertyChangedCallback(OnScaleValueChanged), new CoerceValueCallback(OnCoerceScaleValue)));
        private static object OnCoerceScaleValue(DependencyObject o, object value)
        {
            MainWindow? mainWindow = o as MainWindow;
            if (mainWindow != null)
                return mainWindow.OnCoerceScaleValue((double)value);
            else return value;
        }
        private static void OnScaleValueChanged(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            MainWindow? mainWindow = o as MainWindow;
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

        #region предупреждения
        private void RemoveAlertRight_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsBlue.Text, out int alertsValue);
            AlertsBlue.Text = (alertsValue - 1).ToString();
        }

        private void AddAlertRight_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsBlue.Text, out int alertsValue);
            AlertsBlue.Text = (alertsValue + 1).ToString();
        }

        private void AddAlertLeft_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsRed.Text, out int alertsValue);
            AlertsRed.Text = (alertsValue + 1).ToString();
        }

        private void RemoveAlertLeft_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(AlertsRed.Text, out int alertsValue);
            AlertsRed.Text = (alertsValue - 1).ToString();
        }
        #endregion

        #region счётчик правого
        private void RemovePointFromRight_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(RightFighterPointsCounter.Text, out int pointsValue);
            RightFighterPointsCounter.Text = (pointsValue - 1).ToString();
            UpdateRightPoints();
        }

        private void NullerRight_Click(object sender, RoutedEventArgs e)
        {

            RightFighterPointsCounter.Text = "0";
            UpdateRightPoints();
        }

        private void AddPointToRight_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(RightFighterPointsCounter.Text, out int pointsValue);
            RightFighterPointsCounter.Text = (pointsValue + 1).ToString();
            UpdateRightPoints();
        }
        #endregion

        #region счётчик левого
        private void RemovePointFromLeft_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(LeftFighterPointsCounter.Text, out int pointsValue);
            LeftFighterPointsCounter.Text = (pointsValue - 1).ToString();
            UpdateLeftPoints();
        }

        private void NullerLeft_Click(object sender, RoutedEventArgs e)
        {
            LeftFighterPointsCounter.Text = "0";
            UpdateLeftPoints();
        }

        private void AddPointToLeft_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(LeftFighterPointsCounter.Text, out int pointsValue);
            LeftFighterPointsCounter.Text = (pointsValue + 1).ToString();
            UpdateLeftPoints();
        }
        #endregion

        #region все временные манипуляции        
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

        private void SubstractTime_Click(object sender, RoutedEventArgs e)
        {
            timerValue -= new TimeSpan(0, 0, 1);
            UpdateTimer();
        }

        private void AddTime_Click(object sender, RoutedEventArgs e)
        {
            timerValue += new TimeSpan(0, 0, 1);
            UpdateTimer();
        }

        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            timerValue = timerStandart;
            UpdateTimer();
            timer.Stop();
            TimerSwitch.Content = "▶️";
            timerOn = false;
        }

        /// <summary>
        /// выставляет новое стандартное время и выводит на экран
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Timer_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                if (Timer.Text.Length == 4)
                {
                    timerStandart = new TimeSpan(0, int.Parse(Timer.Text[..2]), int.Parse(Timer.Text[2..]));
                    timerValue = timerStandart;
                    UpdateTimer();
                }
            }
            catch { }

        }
        #endregion

        #region обоюдки
        private void AddOboydki_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(OboydkiCounter.Text, out int value);
            OboydkiCounter.Text = (value + 1).ToString();
            UpdateOboydki();
        }

        private void RemoveOboydki_Click(object sender, RoutedEventArgs e)
        {
            _ = int.TryParse(OboydkiCounter.Text, out int value);
            OboydkiCounter.Text = (value - 1).ToString();
            UpdateOboydki();
        }
        #endregion

        #region смена местами
        private void SwitchButton_Click(object sender, RoutedEventArgs e)
        {
            LinearGradientBrush myVerticalGradient = new LinearGradientBrush
            {
                StartPoint = new Point(0, 0.5),
                EndPoint = new Point(1, 0.5)
            };
            if (redOnLeft)
            {
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Blue, 0.0));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Blue, 0.3));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Black, 0.5));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Red, 0.7));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Red, 1.0));
                redOnLeft = false;
            }
            else
            {
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Red, 0.0));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Red, 0.3));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Black, 0.5));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Blue, 0.7));
                myVerticalGradient.GradientStops.Add(new GradientStop(Colors.Blue, 1.0));
                redOnLeft = true;
            }
            Rectangle.Fill = myVerticalGradient;
            try
            {
                Rectangle? showingWindow = OwnedWindows[0].FindName("Rectangle") as Rectangle;
                showingWindow.Fill = myVerticalGradient;
            } catch { }
            
        }
        #endregion

        #region изменения имён бойцов
        private void LeftFighterName_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                TextBlock? showingWindow = OwnedWindows[0].FindName("LeftFighter") as TextBlock;
                showingWindow.Text = LeftFighterName.Text;
            }
            catch { }
        }

        private void RightFighterName_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                TextBlock? showingWindow = OwnedWindows[0].FindName("RightFighter") as TextBlock;
                showingWindow.Text = RightFighterName.Text;
            }
            catch { }
        }
        #endregion

        /// <summary>
        /// так как мне было впадлу делать адекватную привязку - я костылял.
        ///каждый раз, когда что-то меняется на админском экране - меняется вручную и на общем, через OwnedWindows
        /// </summary>
        #region updating methods

        private void UpdateTimer()
        {

            try
            {
                Timer.Text = timerValue.ToString(@"mm\:ss");
                TextBlock? showingWindow = OwnedWindows[0].FindName("Timer") as TextBlock;
                showingWindow.Text = Timer.Text;
            }
            catch { }     
        }

        private void UpdateLeftPoints()
        {
            try
            {                
                TextBlock? showingWindow = OwnedWindows[0].FindName("LeftFighterCounter") as TextBlock;
                showingWindow.Text = LeftFighterPointsCounter.Text;
            }
            catch { }
        }

        private void UpdateRightPoints()
        {
            try
            {
                TextBlock? showingWindow = OwnedWindows[0].FindName("RightFighterCounter") as TextBlock;
                showingWindow.Text = RightFighterPointsCounter.Text;
            }
            catch { }
        }

        private void UpdateOboydki()
        {
            try
            {
                TextBlock? showingWindow = OwnedWindows[0].FindName("OboydkiCounter") as TextBlock;
                showingWindow.Text = OboydkiCounter.Text;
            }
            catch { }

        }
        #endregion

        private void SecondWindowButton_Click(object sender, RoutedEventArgs e)
        {
            ShowingWindow showingWindow = new ShowingWindow(Timer.Text, LeftFighterName.Text, RightFighterName.Text,
                LeftFighterPointsCounter.Text, RightFighterPointsCounter.Text,
                Rectangle.Fill, OboydkiCounter.Text);
            showingWindow.Owner = this;
            showingWindow.Show();
        }        
    }
}
