<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="TestQuestWeb.WebForm2" MaintainScrollPositionOnPostback ="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>QuestTest</title>
     <link rel="shortcut icon" href="images/wico.ico" type="image/x-icon"/>
    <link rel="stylesheet" type="text/css" href="style.css"/>
   
    <style>
        background{
          opacity: 0.7;  
        }
        tr{
            background-color:gray;
           
            vertical-align:top;
        }
        td{
            padding: 10px;
        }

       
       
        .auto-style1 {
            height: 69px;
        }
       
        .auto-style2 {
            height: 69px;
            width: 350px;
        }
        .auto-style3 {
            width: 350px;
            height: 75px;
        }
       
        .auto-style4 {
            height: 75px;
        }
       
        .auto-style5 {
            height: 71px;
        }
        .auto-style6 {
            height: 62px;
        }
       
        .auto-style7 {
            height: 56px;
            text-align: center;
        }
       
        .auto-style8 {
            height: 41px;
            text-align: left;
           
        }
        .auto-style9 {
            text-align: center;
        }
       
        .auto-style10 {
            height: 240px;
        }
        .auto-style11 {
            height: 67px;
        }
       
        </style>

    
</head>
  
<body style="background-image: url(images/bg.jpg);">
    
    <form id="form1" runat="server">
    
    <table style="width:100%; " >
        <tr style=" height: 125px;" >
            <td style="background-color: rgb(46,45,48)";>
               <asp:Image ID="Image1" runat="server" ImageUrl="images/label.png" Height="40px" Width="535px" style="margin-left: 5px; margin-top: 10px; margin-bottom: 0px;" />
            </td>
        </tr>
        <tr >
            <td>
                <h1>Информация</h1>
             </td>
        </tr>
        <tr>
            <td><h1>Приложение 1</h1>
                <h2>
                    <asp:Label ID="Label1" runat="server" Text="Это приложение, предоставляет функционал сложения каждого второго нечетного числа из массива чисел тела запроса и вернёт их сумму по модулю."></asp:Label>
                </h2>

                 <!-- 1 массив --> 
                <table>
                    <tr>
                        <td class="auto-style2">
               <asp:Button ID="btn_app1_ArrGenerate" runat="server" Text="Сгенерировать массив" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app1_ArrGenerate_Click" /> 
                       </td>
                        <td class="auto-style1">
                            <asp:TextBox ID="txtbx_app1_arrGenerate" runat="server" Height="37px" Width="1208px"></asp:TextBox>
                        </td>
                    </tr>
                    
                    <tr>
                        <td class="auto-style3">
                     <asp:Button ID="btn_app1_Calculate" runat="server" Text="Рассчитать" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app1_Calculate_Click" />
                            </td>
                        <td class="auto-style4">
                            <h2>
                                <asp:Label ID="lbl_app1_result" runat="server" Text="Результат"></asp:Label></h2>
                        </td>
                    </tr>
                    </table>

            </td>
            
        </tr>
        <tr>
            <td><h1>Приложение 2</h1>
                <h2>Это приложение складывает два связных списка, представляющих два положительных целых числа.  Цифры хранятся в обратном порядке, какждый из услов содержит одну цифру.
                </h2>

                 <!-- 2 массива --> 
                <table>
                    <tr>
                        <td class="auto-style5">
                             <asp:Button ID="btn_app2_generateList0" runat="server" Text="Сгенерировать массив" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app2_generateList0_Click" />
                        </td>
                        <td class="auto-style5">
                             <asp:TextBox ID="txtbx_generateList0" runat="server" Height="37px" Width="1208px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style6">
                             <asp:Button ID="btn_app2_generateList1" runat="server" Text="Сгенерировать массив" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app2_generateList1_Click" />
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtbx_generateList1" runat="server" Height="37px" Width="1208px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style1">
                             <asp:Button ID="btn_app2_calculate" runat="server" Text="Рассчитать" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app2_calculate_Click" />
                        </td>
                        <td class="auto-style1" >
                            <h2 class="auto-style8"  ><asp:Label ID="lbl_app2_result" runat="server" Text="Результат" ></asp:Label></h2>
                        </td>
                    </tr>

                </table>

            </td>
        </tr>
        <tr>
            <td class="auto-style10"><h1>Приложение 3</h1>
                <h2>Это приложение проверяет, является ли введянная строка полиндромом</h2>

            <!-- Полиандромы -->    
                <table>
                    <tr><td class="auto-style6">
                <asp:TextBox ID="txtbx_app3_polindrom" runat="server" Height="37px" Width="1208px"></asp:TextBox>
            </td></tr>
                    <tr ><td class="auto-style7" >
                        <asp:Button ID="btn_app3_result" runat="server" Text="Проверить" Height="45px" Width="165px" BackColor="Silver" BorderColor="Gray" OnClick="btn_app3_result_Click"  />
                        </td></tr>

                    <tr><td class="auto-style11">
                         <h2 class="auto-style9" ><asp:Label ID="lbl_app3_result" runat="server" Text="Результат" ></asp:Label></h2>
                        </td></tr>
                </table>

            </td>
            
        </tr>


        <tr style="height: 200px;">
            <td style="background-color: rgb(46,45,48); padding:25px" align="right" valign="bottom">
                
                &nbsp;<img alt="" src="images/label2.png" style="height: 18px;  margin-bottom: 5px" /><br />
                
                <img alt="" src="images/label.png" style="height: 56px; width: 598px;"/>

                <a class="github" href="https://github.com/wingofnight" target="_blank" style="top: 1210px; left: 32px; width: 205px; height: 175px;" > </a>
                <a class="wing" href="https://vk.link/katkagames" style="left: 259px; top: 1267px; position: absolute; "></a>

            </td>

            
        </tr>
       
           

       
        
    </table>
    
   </form>
</body>
</html>
