using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;
using AcomLb.Enumerations;

namespace AcomLb.BLL
{
    public class ShDict
    {
        AcomLb.SqlDAL.ShDict dal;

        public ShDict()
        {
            dal = new AcomLb.SqlDAL.ShDict();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShDictData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShDictData.ID_FIELD] == DBNull.Value)
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

        public ShDictData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }
        
        /// <summary>
        /// 返回字典类别对应的列表
        /// </summary>
        /// <param name="kind">类别,EnDictKind枚举</param>
        /// <returns></returns>
        public ShDictData GetDataByKind(EnDictKind kind)
        {
            return dal.GetDataByKind(kind);
        }
    }
}
