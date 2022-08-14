using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
    public class ShDept
    {
        AcomLb.SqlDAL.ShDept dal;

        public ShDept()
        {
            dal = new AcomLb.SqlDAL.ShDept();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShDeptData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShDeptData.ID_FIELD] == DBNull.Value)
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

        public DataSet GetAllData()
        {
            return dal.GetAllData(true);
        }

        public ShDeptData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }
    }
}
