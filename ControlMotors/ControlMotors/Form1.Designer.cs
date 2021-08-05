namespace ControlMotors
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.btn_M1 = new System.Windows.Forms.Button();
            this.btn_M2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.Pid = new System.Windows.Forms.Label();
            this.Vid = new System.Windows.Forms.Label();
            this.lbl_step1 = new System.Windows.Forms.Label();
            this.lbl_deg1 = new System.Windows.Forms.Label();
            this.lbl_deg2 = new System.Windows.Forms.Label();
            this.lbl_step2 = new System.Windows.Forms.Label();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.richTextBox2 = new System.Windows.Forms.RichTextBox();
            this.richTextBox3 = new System.Windows.Forms.RichTextBox();
            this.richTextBox4 = new System.Windows.Forms.RichTextBox();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.hidStatus = new System.Windows.Forms.ToolStripStatusLabel();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.Direction = new System.Windows.Forms.ComboBox();
            this.Direction2 = new System.Windows.Forms.ComboBox();
            this.btn_M = new System.Windows.Forms.Button();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_M1
            // 
            this.btn_M1.Enabled = false;
            this.btn_M1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_M1.Location = new System.Drawing.Point(12, 264);
            this.btn_M1.Name = "btn_M1";
            this.btn_M1.Size = new System.Drawing.Size(124, 57);
            this.btn_M1.TabIndex = 0;
            this.btn_M1.Text = "Run Motor1";
            this.btn_M1.UseVisualStyleBackColor = true;
            this.btn_M1.Click += new System.EventHandler(this.btn_M1_Click);
            // 
            // btn_M2
            // 
            this.btn_M2.Enabled = false;
            this.btn_M2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_M2.Location = new System.Drawing.Point(356, 264);
            this.btn_M2.Name = "btn_M2";
            this.btn_M2.Size = new System.Drawing.Size(124, 57);
            this.btn_M2.TabIndex = 1;
            this.btn_M2.Text = "Run Motor2";
            this.btn_M2.UseVisualStyleBackColor = true;
            this.btn_M2.Click += new System.EventHandler(this.btn_M2_Click);
            // 
            // button1
            // 
            this.button1.Enabled = false;
            this.button1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(12, 12);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(124, 43);
            this.button1.TabIndex = 2;
            this.button1.Text = "Start Interface";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // Pid
            // 
            this.Pid.AutoSize = true;
            this.Pid.BackColor = System.Drawing.Color.Black;
            this.Pid.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Pid.ForeColor = System.Drawing.Color.White;
            this.Pid.Location = new System.Drawing.Point(255, 9);
            this.Pid.Name = "Pid";
            this.Pid.Size = new System.Drawing.Size(35, 19);
            this.Pid.TabIndex = 3;
            this.Pid.Text = "Pid";
            this.Pid.Click += new System.EventHandler(this.Pid_Click);
            // 
            // Vid
            // 
            this.Vid.AutoSize = true;
            this.Vid.BackColor = System.Drawing.Color.Black;
            this.Vid.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Vid.ForeColor = System.Drawing.Color.White;
            this.Vid.Location = new System.Drawing.Point(293, 42);
            this.Vid.Name = "Vid";
            this.Vid.Size = new System.Drawing.Size(35, 19);
            this.Vid.TabIndex = 4;
            this.Vid.Text = "Vid";
            // 
            // lbl_step1
            // 
            this.lbl_step1.AutoSize = true;
            this.lbl_step1.BackColor = System.Drawing.Color.Black;
            this.lbl_step1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_step1.ForeColor = System.Drawing.Color.White;
            this.lbl_step1.Location = new System.Drawing.Point(12, 190);
            this.lbl_step1.Name = "lbl_step1";
            this.lbl_step1.Size = new System.Drawing.Size(44, 14);
            this.lbl_step1.TabIndex = 6;
            this.lbl_step1.Text = "Step: ";
            // 
            // lbl_deg1
            // 
            this.lbl_deg1.AutoSize = true;
            this.lbl_deg1.BackColor = System.Drawing.Color.Black;
            this.lbl_deg1.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_deg1.ForeColor = System.Drawing.Color.White;
            this.lbl_deg1.Location = new System.Drawing.Point(12, 125);
            this.lbl_deg1.Name = "lbl_deg1";
            this.lbl_deg1.Size = new System.Drawing.Size(58, 14);
            this.lbl_deg1.TabIndex = 7;
            this.lbl_deg1.Text = "Degree: ";
            // 
            // lbl_deg2
            // 
            this.lbl_deg2.AutoSize = true;
            this.lbl_deg2.BackColor = System.Drawing.Color.Black;
            this.lbl_deg2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_deg2.ForeColor = System.Drawing.Color.White;
            this.lbl_deg2.Location = new System.Drawing.Point(353, 125);
            this.lbl_deg2.Name = "lbl_deg2";
            this.lbl_deg2.Size = new System.Drawing.Size(58, 14);
            this.lbl_deg2.TabIndex = 8;
            this.lbl_deg2.Text = "Degree: ";
            // 
            // lbl_step2
            // 
            this.lbl_step2.AutoSize = true;
            this.lbl_step2.BackColor = System.Drawing.Color.Black;
            this.lbl_step2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_step2.ForeColor = System.Drawing.Color.White;
            this.lbl_step2.Location = new System.Drawing.Point(353, 187);
            this.lbl_step2.Name = "lbl_step2";
            this.lbl_step2.Size = new System.Drawing.Size(44, 14);
            this.lbl_step2.TabIndex = 9;
            this.lbl_step2.Text = "Step: ";
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(83, 113);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(53, 37);
            this.richTextBox1.TabIndex = 10;
            this.richTextBox1.Text = "";
            this.richTextBox1.TextChanged += new System.EventHandler(this.richTextBox1_TextChanged);
            // 
            // richTextBox2
            // 
            this.richTextBox2.Location = new System.Drawing.Point(83, 175);
            this.richTextBox2.Name = "richTextBox2";
            this.richTextBox2.Size = new System.Drawing.Size(53, 37);
            this.richTextBox2.TabIndex = 11;
            this.richTextBox2.Text = "";
            // 
            // richTextBox3
            // 
            this.richTextBox3.Location = new System.Drawing.Point(427, 113);
            this.richTextBox3.Name = "richTextBox3";
            this.richTextBox3.Size = new System.Drawing.Size(53, 37);
            this.richTextBox3.TabIndex = 12;
            this.richTextBox3.Text = "";
            // 
            // richTextBox4
            // 
            this.richTextBox4.Location = new System.Drawing.Point(427, 175);
            this.richTextBox4.Name = "richTextBox4";
            this.richTextBox4.Size = new System.Drawing.Size(53, 37);
            this.richTextBox4.TabIndex = 13;
            this.richTextBox4.Text = "";
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.hidStatus});
            this.statusStrip1.Location = new System.Drawing.Point(0, 335);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(507, 22);
            this.statusStrip1.TabIndex = 14;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // hidStatus
            // 
            this.hidStatus.Name = "hidStatus";
            this.hidStatus.Size = new System.Drawing.Size(79, 17);
            this.hidStatus.Text = "Disconnected";
            this.hidStatus.Click += new System.EventHandler(this.hidStatus_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // Direction
            // 
            this.Direction.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Direction.FormattingEnabled = true;
            this.Direction.Items.AddRange(new object[] {
            "Clockwise",
            "Counter clockwise"});
            this.Direction.Location = new System.Drawing.Point(12, 218);
            this.Direction.Name = "Direction";
            this.Direction.Size = new System.Drawing.Size(121, 22);
            this.Direction.TabIndex = 15;
            this.Direction.Text = "Direction";
            this.Direction.SelectedIndexChanged += new System.EventHandler(this.Direction_SelectedIndexChanged);
            // 
            // Direction2
            // 
            this.Direction2.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Direction2.FormattingEnabled = true;
            this.Direction2.Items.AddRange(new object[] {
            "Clockwise",
            "Counter clockwise"});
            this.Direction2.Location = new System.Drawing.Point(359, 218);
            this.Direction2.Name = "Direction2";
            this.Direction2.Size = new System.Drawing.Size(121, 22);
            this.Direction2.TabIndex = 16;
            this.Direction2.Text = "Direction";
            this.Direction2.SelectedIndexChanged += new System.EventHandler(this.Direction2_SelectedIndexChanged);
            // 
            // btn_M
            // 
            this.btn_M.Enabled = false;
            this.btn_M.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_M.Location = new System.Drawing.Point(183, 264);
            this.btn_M.Name = "btn_M";
            this.btn_M.Size = new System.Drawing.Size(124, 57);
            this.btn_M.TabIndex = 17;
            this.btn_M.Text = "Run Motors";
            this.btn_M.UseVisualStyleBackColor = true;
            this.btn_M.Click += new System.EventHandler(this.btn_M_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.WindowFrame;
            this.BackgroundImage = global::ControlMotors.Properties.Resources.x0ftq9;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(507, 357);
            this.Controls.Add(this.btn_M);
            this.Controls.Add(this.Direction2);
            this.Controls.Add(this.Direction);
            this.Controls.Add(this.statusStrip1);
            this.Controls.Add(this.richTextBox4);
            this.Controls.Add(this.richTextBox3);
            this.Controls.Add(this.richTextBox2);
            this.Controls.Add(this.richTextBox1);
            this.Controls.Add(this.lbl_step2);
            this.Controls.Add(this.lbl_deg2);
            this.Controls.Add(this.lbl_deg1);
            this.Controls.Add(this.lbl_step1);
            this.Controls.Add(this.Vid);
            this.Controls.Add(this.Pid);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btn_M2);
            this.Controls.Add(this.btn_M1);
            this.Cursor = System.Windows.Forms.Cursors.No;
            this.Name = "Form1";
            this.Text = "Control Unit";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_M1;
        private System.Windows.Forms.Button btn_M2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label Pid;
        private System.Windows.Forms.Label Vid;
        private System.Windows.Forms.Label lbl_step1;
        private System.Windows.Forms.Label lbl_deg1;
        private System.Windows.Forms.Label lbl_deg2;
        private System.Windows.Forms.Label lbl_step2;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.RichTextBox richTextBox2;
        private System.Windows.Forms.RichTextBox richTextBox3;
        private System.Windows.Forms.RichTextBox richTextBox4;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel hidStatus;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.ComboBox Direction;
        private System.Windows.Forms.ComboBox Direction2;
        private System.Windows.Forms.Button btn_M;
    }
}

