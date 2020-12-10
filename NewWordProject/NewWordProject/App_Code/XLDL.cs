﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace NewWordProject.App_Code
{
    public class XLDL
    {
        static string StrCnn = ConfigurationManager.ConnectionStrings["connn"].ConnectionString.ToString();

        public static DataTable Docbang(string LenhSQL)
        {
            using (SqlConnection cnn = new SqlConnection(StrCnn))
            {
                SqlDataAdapter bodocghi = new SqlDataAdapter(LenhSQL, cnn);
                DataTable bang = new DataTable();
                bodocghi.Fill(bang);
                return bang;
            }
        }
        public static void Thuchienlenh(string LenhSQL)
        {
            using (SqlConnection cnn = new SqlConnection(StrCnn))
            {
                cnn.Open();
                SqlCommand bolenh = new SqlCommand(LenhSQL, cnn);
                bolenh.ExecuteNonQuery();
                cnn.Close();
            }
        }
        public static String Getdata(String LenhSQL)
        {
            using (SqlConnection cnn = new SqlConnection(StrCnn))
            {
                cnn.Open();
                SqlCommand cmd = cnn.CreateCommand();
                cmd.CommandText = LenhSQL;
                string result = "" + cmd.ExecuteScalar().ToString();
                cnn.Close();
                return result;
            }
        }
    }
}