using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using HidSharp;
using HidSharp.Utility;

namespace ControlMotors
{
    public partial class Form1 : Form
    {
        
        static DeviceList list = DeviceList.Local;
        static HidDevice[] hidDeviceList = list.GetHidDevices().ToArray();
        static HidDevice hidDevice;
        
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            HidSharpDiagnostics.EnableTracing = true;
            HidSharpDiagnostics.PerformStrictChecks = true;

            checkIfConnected();
            list.Changed += list_Changed;

        }

        private void checkIfConnected()
        {
            if (hidDeviceList.Length > 0)
            {
                //Console.WriteLine(hidDeviceList.Length);
                foreach (HidDevice dev in hidDeviceList)
                {
                    //Console.WriteLine(dev.GetFriendlyName());
                    try
                    {
                        if (dev.GetProductName() == "StepperControlAdmin" && dev.GetManufacturer() == "StepperAdmin")
                        {
                            hidStatus.Text = "Connected";
                            hidDevice = dev;
                            button1.Enabled = true;

                            break;
                        }
                        hidStatus.Text = "Disconnected";
                        hidDevice = null;
                        button1.Enabled = false;
                        btn_M1.Enabled = false;
                        btn_M2.Enabled = false;
                        richTextBox1.Enabled = false;
                        richTextBox2.Enabled = false;
                        richTextBox3.Enabled = false;
                        richTextBox4.Enabled = false;
                        Direction.Enabled = false;
                        Direction2.Enabled = false;

                        Pid.Text = "No connected Devices";

                        Vid.Text = "No connected Devices";


                    }
                    catch (Exception e) { }

                    
                }
            }
            else
            {
                hidStatus.Text = "Disconnected";
                hidDevice = null;
            }
            
           

        }

        //Event Handler for handling if usb device is connected

        private void list_Changed(object sender,EventArgs e)
        {
            hidDeviceList = list.GetHidDevices().ToArray();
            checkIfConnected();
        }
       
        

        private void btn_M1_Click(object sender, EventArgs e)
        {
            byte multiplier;
            byte direction = (byte)((Direction.SelectedItem.ToString() == "Clockwise") ? 1 : 2) ;


            
            double degree = double.Parse(richTextBox1.Text);
            byte steps = byte.Parse(richTextBox2.Text);

            if (degree % 7.5 == 0 && degree < 360)
            {
                multiplier = (byte)(degree / 7.5);

                byte[] buff = { 0, multiplier, steps,direction };

                HidStream stream = hidDevice.Open();
                stream.Write(buff);


            }
            else MessageBox.Show("Please Enter a multiplier of 7.5");

            /*format: first byte stepper identifier
             * second byte :angle
             * third byte: no steps
             */
            //for (int i = 0; i < deg.Length; i++)
            //{
            //    if (degree == deg[i])
            //    {

            //        break;
            //    }
            //    else MessageBox.Show("Please Enter a degree of 7.5 multipliers until 150 degree");
            //}
        }

        private void btn_M2_Click(object sender, EventArgs e)
        {
            byte multiplier;

            double degree = double.Parse(richTextBox3.Text);
            byte steps = byte.Parse(richTextBox4.Text);

            byte direction = (byte)((Direction2.SelectedItem.ToString() == "Clockwise") ? 1 : 2);

            if (degree % 7.5 == 0 && degree < 360)
            {
                multiplier = (byte)(degree / 7.5);
                byte[] buff = {0, 0,0,0, multiplier, steps ,direction};
                HidStream stream = hidDevice.Open();
                stream.Write(buff);


            }
            else MessageBox.Show("Please Enter a multiplier of 7.5");
        }

        private void btn_M_Click(object sender, EventArgs e)
        {

            byte multiplierM1, multiplierM2;

            double degreeM1 = double.Parse(richTextBox1.Text);
            byte stepsM1 = byte.Parse(richTextBox2.Text);
            double degreeM2 = double.Parse(richTextBox3.Text);
            byte stepsM2 = byte.Parse(richTextBox4.Text);

            byte directionM1 = (byte)((Direction.SelectedItem.ToString() == "Clockwise") ? 1 : 2);
            byte directionM2 = (byte)((Direction2.SelectedItem.ToString() == "Clockwise") ? 1 : 2);

            if (degreeM1 % 7.5 == 0 && degreeM1 < 360 && degreeM2 % 7.5 == 0 && degreeM2 < 360)
            {
                multiplierM1 = (byte)(degreeM1 / 7.5);
                multiplierM2 = (byte)(degreeM2 / 7.5);
                byte[] buff = { 0, multiplierM1, stepsM1, directionM1, multiplierM2, stepsM2, directionM2 };
                HidStream stream = hidDevice.Open();
                stream.Write(buff);


            }
            else MessageBox.Show("Please Enter a multiplier of 7.5");

        }


        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                Pid.Text = hidDevice.GetProductName();

                Vid.Text = hidDevice.GetManufacturer();
                btn_M1.Enabled = true;
                btn_M2.Enabled = true;
                btn_M.Enabled = true;
                richTextBox1.Enabled = true;
                richTextBox2.Enabled = true;
                richTextBox3.Enabled = true;
                richTextBox4.Enabled = true;
                Direction.Enabled = true;
                Direction2.Enabled = true;




            }
            catch (NullReferenceException ex) { MessageBox.Show("Make sure device is connected"); }

        }

        private void timer1_Tick(object sender, EventArgs e)
        {

        }


        private void Pid_Click(object sender, EventArgs e)
        {

        }

        private void richTextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        
        private void hidStatus_Click(object sender, EventArgs e)
        {

        }

        private void Direction_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void Direction2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        
    }
}
