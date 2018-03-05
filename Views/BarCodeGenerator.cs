using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Zen.Barcode;

namespace Barcode
{
    public partial class BarCodeGenerator : Form
    {
        public BarCodeGenerator()
        {
            InitializeComponent();
        }

        private void btnGenerate_Click(object sender, EventArgs e)
        {
            string[] data = txtCode.Text.Split(',');
            generateBarCode obj = new generateBarCode
            {
                labNo = data[0],
                mrNo = data[1],
                patientName = data[2],
                userName = data[3]
            };
            GenerateBarCode(obj.labNo);
            txtCode.Text = "";
            MessageBox.Show("BarCode Successfully Generated.", "Information", MessageBoxButtons.OK, MessageBoxIcon.Information);
            obj.barCode = $"{Application.StartupPath}\\Barcode\\{obj.labNo}.png";
            reportViewer1.LocalReport.EnableExternalImages = true;
            reportViewer1.LocalReport.SetParameters(new Microsoft.Reporting.WinForms.ReportParameter("barCode", "file:" + obj.barCode));
            generateBarCodeBindingSource.DataSource = obj;
            this.reportViewer1.RefreshReport();
        }
        private void GenerateBarCode(string labNo)
        {
            Code128BarcodeDraw zbc = BarcodeDrawFactory.Code128WithChecksum;
            System.Drawing.Image img2 = zbc.Draw(labNo, 20, 1);
            System.IO.MemoryStream ms2 = new System.IO.MemoryStream();
            img2.Save(ms2, System.Drawing.Imaging.ImageFormat.Png);
            System.Windows.Forms.PictureBox pb = new PictureBox();
            pb.Image = img2;
            pb.Image.Save(Application.StartupPath + "\\Barcode\\" + labNo.Replace("/", "").Replace("\\", "") + ".png");
        }

        private void BarCodeGenerator_Load(object sender, EventArgs e)
        {

            this.reportViewer1.RefreshReport();
        }
    }
    public class generateBarCode
    {
        public String labNo { get; set; } = "";
        public String mrNo { get; set; } = "";
        public String patientName { get; set; } = "";
        public String userName { get; set; } = "";
        public String barCode { get; set; } = "";
    }
}
