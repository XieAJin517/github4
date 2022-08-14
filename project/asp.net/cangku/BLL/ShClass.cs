using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
    public class ShClass
    {
        AcomLb.SqlDAL.ShClass dal;

        public ShClass()
        {
            dal = new AcomLb.SqlDAL.ShClass();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShClassData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShClassData.ID_FIELD] == DBNull.Value)
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

        public ShClassData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }

        /// <summary>
        /// 获取ClassId的包含菜单列表
        /// </summary>
        /// <param name="ClassId"></param>
        /// <returns></returns>
        public DataSet GetClassListByClassId(string ClassId)
        {
            return dal.GetClassListByClassId(ClassId);
        }

         /// <summary>
         /// 获取菜单列表
         /// </summary>
         /// <returns></returns>
        public DataSet GetClassList(int ClassKind)
        {
            return dal.GetClassList(ClassKind);
        }

        /// <summary>
        /// 上一级菜单
        /// </summary>
        /// <param name="ClassId"></param>
        /// <returns></returns>
        public string GetPreClassId(string ClassId)
        {
            return dal.GetPreClassId(ClassId);
        }
    }
}
