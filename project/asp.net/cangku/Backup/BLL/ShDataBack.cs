using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;
namespace AcomLb.BLL
{
   public class ShDataBack
    {
       AcomLb.SqlDAL.ShDataBack dal;

       public ShDataBack()
       {
           dal = new AcomLb.SqlDAL.ShDataBack();
       }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
       public bool Save(ShDataBackData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShDataBackData.ID_FIELD] == DBNull.Value)
            {
                dr.SetAdded();
                return dal.InsertData(ds);
            }
            else
            {
                dr.SetModified();
                return dal.UpdateData(ds);
            }
        }

       public ShDataBackData GetAllData()
       {
           return dal.GetAllData(true);
       }

       public bool DeleteById(int id)
       {
           return dal.DeleteData(id);
       }

       public ShDataBackData GetDataById(int id)
       {
           return dal.GetDataByID(id);
       }

       // <summary>
        /// 备份数据库
        /// </summary>
        /// <param name="PathDataName">数库库的完整路径和文件名</param>
        /// <returns></returns>
       public bool SetDataBack(string PathDataName, string FileName)
       {
           return dal.SetDataBack(PathDataName, FileName);
       }
    }
}
