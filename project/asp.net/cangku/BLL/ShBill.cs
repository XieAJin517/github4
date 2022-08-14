using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

using AcomLb.Model;
using AcomLb.Enumerations;

namespace AcomLb.BLL
{
    public class ShBill
    {
        AcomLb.SqlDAL.ShBill dal;

        public ShBill()
        {
            dal = new AcomLb.SqlDAL.ShBill();
        }

        /// <summary>
        /// ��������
        /// </summary>
        /// <param name="ds">���ݼ�</param>
        /// <returns></returns>
        public bool Save(ShBillData ds)
        {
            if (ds.Tables[0].Rows.Count != 1)
                return false;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShBillData.ID_FIELD] == DBNull.Value)
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

        /// <summary>
        /// ��������
        /// </summary>
        /// <param name="ds">���ݼ�</param>
        /// <returns></returns>
        public int Save(ShBillData ds,ShBillListData listDs)
        {
            int billId;
            bool result;
            if (ds.Tables[0].Rows.Count != 1)
                return -1;
            DataRow dr = ds.Tables[0].Rows[0];
            ds.AcceptChanges();
            if (dr[ShBillData.ID_FIELD] == DBNull.Value)
            {
                dr.SetAdded();
                billId = dal.AddData(ds);
            }
            else
            {
                dr.SetModified();
                billId = (int)dr[ShBillData.ID_FIELD];
                result = dal.UpdateData(ds);
            }

            foreach (DataRow listDr in listDs.Tables[0].Rows)
            {
                listDr[ShBillListData.BILLID_FIELD] = billId;
            }
            listDs.AcceptChanges();
            foreach (DataRow listDr in listDs.Tables[0].Rows)
            {
                listDr.SetAdded();
            }
            result = new AcomLb.SqlDAL.ShBillList().InsertData(listDs);
            if (result)
                return billId;
            else
                return -1;
        }

        public bool DeleteById(int Id)
        {
            return dal.DeleteData(Id);
        }

        public ShBillData GetDataByID(int Id)
        {
            return dal.GetDataByID(Id);
        }

         /// <summary>
        /// ���ص�����Ϣ
        /// </summary>
        /// <param name="BillId"></param>
        /// <returns></returns>
        public DataSet GetBillById(int BillId)
        {
            return dal.GetBillById(BillId);
        }

         /// <summary>
        /// ���ݻ���
        /// </summary>
        /// <param name="billType"></param>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetBillList(EnBillType billType, string strSearch)
        {
            return dal.GetBillList(billType, strSearch);
        }

        /// <summary>
        /// �����б�
        /// </summary>
        /// <param name="billType">��������,EnBillTypeö��</param>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetBillList(EnBillType billType, string strSearch, string OrderBy)
        {
            return dal.GetBillList(billType, strSearch,OrderBy);
        }

        
        /// <summary>
        /// ��˵���
        /// </summary>
        /// <param name="StfId"></param>
        /// <param name="BillId"></param>
        /// <returns></returns>
        public bool CheckBill(int StfId, int BillId)
        {
            return dal.CheckBill(StfId, BillId);
        }
    }
}
