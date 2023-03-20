namespace AppDiscosMusicales
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
            this.TablaDiscos = new System.Windows.Forms.DataGridView();
            this.imagenTapa = new System.Windows.Forms.PictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.TablaDiscos)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imagenTapa)).BeginInit();
            this.SuspendLayout();
            // 
            // TablaDiscos
            // 
            this.TablaDiscos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.TablaDiscos.Location = new System.Drawing.Point(12, 12);
            this.TablaDiscos.Name = "TablaDiscos";
            this.TablaDiscos.RowHeadersWidth = 70;
            this.TablaDiscos.Size = new System.Drawing.Size(557, 296);
            this.TablaDiscos.TabIndex = 0;
            this.TablaDiscos.SelectionChanged += new System.EventHandler(this.TablaDiscos_SelectionChanged);
            // 
            // imagenTapa
            // 
            this.imagenTapa.Location = new System.Drawing.Point(598, 12);
            this.imagenTapa.Name = "imagenTapa";
            this.imagenTapa.Size = new System.Drawing.Size(190, 164);
            this.imagenTapa.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.imagenTapa.TabIndex = 1;
            this.imagenTapa.TabStop = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.RosyBrown;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.imagenTapa);
            this.Controls.Add(this.TablaDiscos);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Discos App";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.TablaDiscos)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imagenTapa)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView TablaDiscos;
        private System.Windows.Forms.PictureBox imagenTapa;
    }
}

