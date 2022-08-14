using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
    public class ShProduct
    {
        AcomLb.SqlDAL.ShProduct dal;

        public ShProduct()
        {
            dal = new AcomLb.SqlDAL.ShProduct();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShProductData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShProductData.ID_FIELD] == DBNull.Value)
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

        public ShProductData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }

        /// <summary>
        /// 获取产品信息
        /// </summary>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetProductInfo(string strSearch, string OrderBy)
        {
            return dal.GetProductInfo(strSearch, OrderBy);
        }

        public bool SetWasById(int Id)
        {
            return dal.SetWasById(Id);
        }
    }
}
