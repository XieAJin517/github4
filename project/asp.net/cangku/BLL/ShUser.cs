using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;

namespace AcomLb.BLL
{
    public class ShUser
    {
        AcomLb.SqlDAL.ShUser dal;

        public ShUser()
        {
            dal = new AcomLb.SqlDAL.ShUser();
        }

        /// <summary>
        /// 保存数据
        /// </summary>
        /// <param name="ds">数据集</param>
        /// <returns></returns>
        public bool Save(ShUserData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShUserData.ID_FIELD] == DBNull.Value)
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

        public ShUserData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }

          /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="passWd"></param>
        /// <returns></returns>
        public ShUserData GetUserInfo(string userId)
        {
            return dal.GetUserInfo(userId);
        }

         /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="passWd"></param>
        /// <returns></returns>
        public ShUserData GetUserInfo(string userId, string passWd)
        {
            return dal.GetUserInfo(userId, passWd);
        }
    }
}
