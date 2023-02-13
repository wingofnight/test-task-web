using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Forms;
using Button = System.Web.UI.WebControls.Button;
using Image = System.Web.UI.WebControls.Image;
using Label = System.Web.UI.WebControls.Label;

namespace TestQuestWeb
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_app1_ArrGenerate_Click(object sender, EventArgs e)
        {
           txtbx_app1_arrGenerate.Text = GeneratorNumbers.ShowLinkedList();
        }

        protected void btn_app1_Calculate_Click(object sender, EventArgs e)
        {
            float[] array = Separator.SeparatorArray(txtbx_app1_arrGenerate.Text);
            //проверяем, были ли ошибки при вводе массива
            if (array != null) lbl_app1_result.Text = Convert.ToString(FirstApp.AdditionModule(array));
            else lbl_app1_result.Text = "Проверьте правильнность ввода";
        
        }

        protected void btn_app2_generateList0_Click(object sender, EventArgs e)
        {
            txtbx_generateList0.Text = GeneratorNumbers.ShowLinkedList(GeneratorNumbers.GenerateLinkedList(3, 10, 1, 10));
        }

        protected void btn_app2_generateList1_Click(object sender, EventArgs e)
        {
            txtbx_generateList1.Text = GeneratorNumbers.ShowLinkedList(GeneratorNumbers.GenerateLinkedList(3, 10, 1, 10));
        }

        protected void btn_app2_calculate_Click(object sender, EventArgs e)
        {
            LinkedList<int> firstList = Converter.ConvertFloatToInt(Separator.SeparatorLinkedList(txtbx_generateList0.Text));
            LinkedList<int> secondList = Converter.ConvertFloatToInt(Separator.SeparatorLinkedList(txtbx_generateList1.Text));
            //проверка на правильность списков
            if (firstList != null && secondList != null)
            {   //проверка на то, что в списке цифры, а не числа
                if (Checker.CheckSingleFigure(firstList) && Checker.CheckSingleFigure(secondList))
                {
                    lbl_app2_result.Text = Convert.ToString(GeneratorNumbers.ShowLinkedList(SecondApp.SumTwoLists(firstList, secondList)));
                }
                else
                {
                    lbl_app2_result.Text = "Проверьте правильнность ввода";
                }
            }
            else
            {
                lbl_app2_result.Text = "Проверьте правильнность ввода";
            }
        }

        protected void btn_app3_result_Click(object sender, EventArgs e)
        {
            if (ThirdApp.Chek_Palindrome(txtbx_app3_polindrom.Text)) lbl_app3_result.Text = "Палиндром";
            else lbl_app3_result.Text = "Не палиндром";
        }
    }
    }

   


