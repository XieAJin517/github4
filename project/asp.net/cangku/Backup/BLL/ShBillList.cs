using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
   public class ShBillList
    {
       AcomLb.SqlDAL.ShBillList dal;

       public ShBillList()
       {
           dal = new AcomLb.SqlDAL.ShBillList();
       }

       /// <summary>
       /// 保存数据
       /// </summary>
       /// <param name="ds">数据集</param>
       /// <returns></returns>
       public bool Save(ShBillListData ds)
       {
           if (ds.Tables[0].Rows.Count != 1)
               return false;
           DataRow dr = ds.Tables[0].Rows[0];
           ds.AcceptChanges();
           if (dr[ShBillListData.ID_FIELD] == DBNull.Value)
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

       public bool DeleteById(int Id)
       {
           return dal.DeleteData(Id);
       }

       public ShBillListData GetDataByID(int Id)
       {
           return dal.GetDataByID(Id);
       }

        /// <summary>
        /// 单据明细
        /// </summary>
        /// <param name="BillId"></param>
        /// <returns></returns>
       public DataSet GetBillList(int BillId)
       {
           return dal.GetBillList(BillId);
       }

       /// <summary>
       /// 检查条形码是否存在
       /// </summary>
       /// <param name="ds"></param>
       /// <returns></returns>
       public string ChkBarCode(ShBillListData ds)
       {
           string result = string.Empty;
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               if (dal.ChkCodeIsExits(dr[ShBillListData.MAINBARCODE_FIELD].ToString(), (int)dr[ShBillListData.PROID_FIELD]))
               {
                   result = dr[ShBillListData.MAINBARCODE_FIELD].ToString();
                   continue;
               }
           }
           return result;
       }

       public bool SetWasById(int Id)
       {
           return dal.SetWasById(Id);
       }
    }
}
