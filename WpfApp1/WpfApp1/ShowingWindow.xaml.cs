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

namespace WpfApp1
{
    /// <summary>
    /// Логика взаимодействия для ShowingWindow.xaml
    /// </summary>
    public partial class ShowingWindow : Window
    {
        public ShowingWindow(string timer, string leftFighterName, string rightFighterName,
            string leftFighterCounter, string rightFighterCounter,
            Brush fill, string oboydki)
        {
            InitializeComponent();
            Timer.Text = timer;
            LeftFighter.Text = leftFighterName;
            RightFighter.Text = rightFighterName;
            LeftFighterCounter.Text = leftFighterCounter;
            RightFighterCounter.Text = rightFighterCounter;
            Rectangle.Fill = fill;
            OboydkiCounter.Text = oboydki;
        }

        #region ScaleValue Depdency Property
        public static readonly DependencyProperty ScaleValueProperty = DependencyProperty.Register("ScaleValue", typeof(double), typeof(ShowingWindow), new UIPropertyMetadata(1.0, new PropertyChangedCallback(OnScaleValueChanged), new CoerceValueCallback(OnCoerceScaleValue)));
        private static object OnCoerceScaleValue(DependencyObject o, object value)
        {
            ShowingWindow? showingWindow = o as ShowingWindow;
            if (showingWindow != null)
                return showingWindow.OnCoerceScaleValue((double)value);
            else return value;
        }
        private static void OnScaleValueChanged(DependencyObject o, DependencyPropertyChangedEventArgs e)
        {
            ShowingWindow? showingWindow = o as ShowingWindow;
            if (showingWindow != null)
                showingWindow.OnScaleValueChanged((double)e.OldValue, (double)e.NewValue);
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
            ScaleValue = (double)OnCoerceScaleValue(myShowingWindow, value);
        }
        #endregion
    }
}
