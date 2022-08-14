using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
    public class ShCorp
    {
        AcomLb.SqlDAL.ShCorp dal;

        public ShCorp()
        {
            dal = new AcomLb.SqlDAL.ShCorp();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShCorpData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShCorpData.ID_FIELD] == DBNull.Value)
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

        public ShCorpData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }

          /// <summary>
        /// 返回往来单位列表
        /// </summary>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetList(string strSearch,string OrderBy)
        {
            return dal.GetList(strSearch, OrderBy);
        }

        public bool SetWasById(int Id)
        {
            return dal.SetWasById(Id);
        }
    }
}
