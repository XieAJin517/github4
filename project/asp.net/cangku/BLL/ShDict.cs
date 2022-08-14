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
        /// ��������
        /// </summary>
        /// <param name="ds">���ݼ�</param>
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
        /// �����ֵ�����Ӧ���б�
        /// </summary>
        /// <param name="kind">���,EnDictKindö��</param>
        /// <returns></returns>
        public ShDictData GetDataByKind(EnDictKind kind)
        {
            return dal.GetDataByKind(kind);
        }
    }
}
