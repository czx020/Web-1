﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sample_2_2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //C#语法规则例程
    protected void Button1_Click(object sender, EventArgs e)
    {
         int a,b,c;  double C;   //定义三个变量:a,b,c为整形，C为双精度型
        
        //给3个变量赋值
        a = 11;        b = 12;        c = 13;
        
        //累加到c
        c = a + b + c;

        /*
         * 累加到C
         * 注意，这里是大写的C
         * 和c是2个不同的变量!!          */
        C = a + b + c;


        //将C的值输出到页面
        Response.Write(C);


    }


    //C#定义变量规范
    protected void Button2_Click(object sender, EventArgs e)
    {
        //定义3个变量：分别代表年龄，重量，身高
        int i_Age=23;
        double d_Weight, d_Height;      //或者可以写成：  double d_Wt,d_Ht;   
                                        //目的是一眼就能看出该变量的内容，作用，类型
        d_Weight = 65.3;
        d_Height = 176.8;
        

        //认识一下函数调用的格式（不用急于掌握）
        WriteContent(i_Age, d_Weight, d_Height);

    }
        


         //接收3个参数，并在子程序中进行操作，【了解内容】
        protected void WriteContent (int _age, double _weight, double  _height){
             string str_result;
            str_result = "年龄：" + _age.ToString() + "岁 <br />" +
                         "身高：" + _height.ToString() + "CM <br />" +
                         "体重: " + _weight.ToString() + "KG";
            
            //页面输出：
            Response.Write(str_result);


        }



        //C#变量类型
        protected void Button3_Click(object sender, EventArgs e)
        {
            /*  C#中最常用的变量类型：
             *  1. 字符串型变量 string
             *  2. 整形int 32位， 取值范围： -2,147,483,648 ~ 2,147,483,647 
             *     短整形short 16位，取值范围： -32,768~32,767 
             *  3. 双精度double， 取值：小数点后15-16位，
             *     单精度型       注意赋值加f
             *  4. 布尔型Boolen， 取值：True / False
             *  5. 日期时间型DateTime,  
             *  
             *  和数据库连接后，最常用到的就是这几种类型的数据
             */

            string str_Name = "小王";
            short s_Age=36;
            double d_Height = 176.5;
            float f_Weight = 67.5f;
            Boolean b_OutAgeLine;
            DateTime dt_Birthday;

            b_OutAgeLine = s_Age > 30;
            dt_Birthday = Convert.ToDateTime("1901-1-2");
            //dt_Birthday = DateTime.Now;

           

            string str_Result;
            str_Result = str_Name +  "今年" + s_Age.ToString() + "岁, <br />" +
                         "身高是:" + d_Height.ToString() + "cm, <br />" +
                         "体重是:" + f_Weight.ToString() + "KG, <br />" + 
                         "是否超过30岁：" + b_OutAgeLine;



            //输出结果
            Response.Write(str_Result);
 



        }


        //变量之间的转换
        protected void Button4_Click(object sender, EventArgs e)
        {
            //1. string -> int
            string str_a = "33",str_b="30";
            Response.Write("直接相加:"+ (str_a + str_b));

            Response.Write("<br />"); //换行
            
            int i_a, i_b;
            i_a = Convert.ToInt16(str_a);  //int16 即为短整形 short，  
            i_b = Convert.ToInt16(str_b);  //int -> short 会缩小取值范围,超出范围则报错，

            Response.Write("转换后相加:" + (i_a + i_b).ToString());   /* 此处，toString()可以不写，  理由：和字符串"+"运算操作的其他变量或常量会自动转换成字符串
                                                                       * 编译采取隐式转换，不会出错，
                                                                       * 但为了编程规范化，请写上 */


            Response.Write("<br />"); //换行

            
            //2. char < - > int
            char chr_a;
            chr_a = Convert.ToChar(65);
            Response.Write(chr_a);

            int i_Start = 65;
            for (int i=0; i < 6; i++) {
                chr_a = Convert.ToChar(i_Start);
                Response.Write(chr_a + "<br/>");
                i_Start++;
            }
            

            


            
                
        }




        //数组的定义与应用
        protected void Button5_Click(object sender, EventArgs e)
        {
            /* 数组的定义与应用：
             * 1. 特别注意数组定义的写法,    声明 —> 创建           */

           //声明一个int型的一维数组，
           int[] a;
            //创建为5个元素的数组
           a = new int[5];

                    //或者写成一行：  
                    // int[] a = new int[5];


            //可通过下标，设置和访问数组中的数据 
            //*注意下标方括号[]
            //*注意下标起始为 0: 即 a[0] ~ a[4]
            a[1] = 4;           a[2] =5;
           Response.Write("a[1]:" + a[1].ToString()); //输出a[1]的值
           Response.Write("<br />");
           Response.Write("a[3]:" + a[3].ToString()); //输出没有赋值的a[3]
           Response.Write("<br />");
           
            // * 2. 在定义的时候直接赋值
            //赋值的同时，也定下了数组的长度为7.
            //int[] b = new int[] { 1, 2, 3, 4, 5, 6, 7 }; 

                                                                       


            
            // 3. 特定类型数组的默认值
             
            
                //3.1  字符串型数组的默认值为：null 而不是""!!!
           /* 
            //定义一个长度为3的字符串型数组
            string[] strA_1 = new string[3]  ;
                //输出第二个成员的值是否为"" TRUE OR FALSE
            Response.Write("未赋值的strA_1[1]是否为空字符串？");
            Response.Write(strA_1[1]=="");
            Response.Write("<br/>");

                //输出第二个成员的值是否为null: TRUE OR FALSE
            Response.Write("未赋值的strA_1[1]是否为null？");
            Response.Write(strA_1[1] == null );
            Response.Write("<br/>");

                //赋空字符串后，输出第1个成员的长度
            strA_1[0] = "";
            Response.Write("赋值空字符串的strA_1[0]的长度为：");
            Response.Write(strA_1[0].Length);
            Response.Write("<br/>");

           */ 


           /*     //3.2 字符型数组默认值为 空字符，对应ACSII值=0 ，不是null
                        
            char[] ca = new char[3];
            ca[0] = 'B';  //ca[0]赋值；
            Response.Write("ca[0]=B对应的ASCII码："); 
            Response.Write(Convert.ToInt32(ca[0])); 
            Response.Write("<br/>"); //输出ca[0]的值；

            Response.Write("未赋值的ca[1]对应的ASCII码："); 
            Response.Write(Convert.ToInt16(ca[1])); 
            Response.Write("<br/>"); //输出未赋值的ca[1]的ACSII码值

            Response.Write("未赋值的ca[2]是否为null?："); 
            Response.Write(ca[2] == null); 
            Response.Write("<br/>"); //输出ca[2]是否为null

           */ 


            /*
                //3.3 数值型的数组，默认值为0
            double[] dA = new double[3];
            Response.Write("未赋值的dA[0]的值为："); Response.Write(dA[0]); Response.Write("<br/>");


             */

            /*
                //3.4 布尔型的数组，默认值为FALSH
            Boolean[] bA = new Boolean[3];
            Response.Write("未赋值的bA[0]的值为："); Response.Write(bA[0]); Response.Write("<br/>");

            */

           /* 
                //3.5 日期时间型，默认值为 公元1年1月1日 0点0分0秒
            DateTime[] dtA = new DateTime[3];
            Response.Write("未赋值的dtA[0]的值为："); 
            Response.Write(dtA[0]); 
            Response.Write("<br/>"); 
            
            */
            



            /*

           // 4. 字符型数组 与 字符串
            char[] char_a;
            char_a = "hello world".ToCharArray();

            Response.Write(char_a.Length);
            Response.Write("<br/>");

            char_a[1] =Convert.ToChar(Convert.ToInt16 (char_a[1]) + 4);
            Response.Write(char_a[1]);

            
            */


        }


}