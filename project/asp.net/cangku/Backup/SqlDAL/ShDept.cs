
//////////////////////////////////////////////////////////////////
//�ļ���		 ShDept.cs
//������		 Pconcool
//��������		2007-10-20 17:44:42
// ����:
//		���ݿ������:ShDept
//�޸���־:		
//	
//��Ȩ����		http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////

using System;
using System.ComponentModel;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Reflection;
using System.Text;

using AcomLb.Model;
using AcomLb.DBUtility;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;

namespace AcomLb.SqlDAL
{

    /// <summary>
    /// dbo.ShDept��˵��: ���ݱ�˵��
    /// </summary>
    public class ShDept : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;

        #region ��ʼ��
        public ShDept()
        {
            dsCommand = new SqlDataAdapter();
            try
            {
                Acn = new SqlHelper().GetConn();;
                //Acn = new SqlConnection(AcomLb.Common.ZHLConfiguration.GetConnectionString());
                Acn.Open();
            }
            catch (SqlException e)
            {
                throw e;
            }
            dsCommand.TableMappings.Add("Table", ShDeptData.SHDEPT_TABLE);
        }

        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(true);
        }

        protected virtual void Dispose(bool disposing)
        {
            if (!disposing)
                return;
            if (dsCommand != null)
            {
                if (dsCommand.SelectCommand != null)
                {
                    if (dsCommand.SelectCommand.Connection != null)
                        dsCommand.SelectCommand.Connection.Dispose();
                    dsCommand.SelectCommand.Dispose();
                }

                if (dsCommand.InsertCommand != null)
                {
                    if (dsCommand.InsertCommand.Connection != null)
                        dsCommand.InsertCommand.Connection.Dispose();
                    dsCommand.InsertCommand.Dispose();
                }

                if (dsCommand.UpdateCommand != null)
                {
                    if (dsCommand.UpdateCommand.Connection != null)
                        dsCommand.UpdateCommand.Connection.Dispose();
                    dsCommand.UpdateCommand.Dispose();
                }

                if (dsCommand.DeleteCommand != null)
                {
                    if (dsCommand.DeleteCommand.Connection != null)
                        dsCommand.DeleteCommand.Connection.Dispose();
                    dsCommand.DeleteCommand.Dispose();
                }
                dsCommand.Dispose();
                dsCommand = null;
            }
        }
        #endregion

        #region  ִ�в�ѯ���(�ڲ�ʹ��)

        /// <summary>
        /// ִ�в�ѯ���
        /// </summary>
        /// <param name="commandText">������SQL</param>
        /// <returns>ShDeptData</returns>
        private ShDeptData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShDeptData data = new ShDeptData();
            try
            {
                SqlCommand command = new SqlCommand(commandText, Acn);
                dsCommand.SelectCommand = command;
                dsCommand.Fill(data);
            }
            catch (Exception e)
            {
                throw e;
            }
            return data;
        }

        /// <summary>
        /// ִ�в�ѯ���
        /// </summary>
        /// <param name="commandText">������SQL</param>
        /// <returns>DataSet</returns>
        private DataSet GetReportData(string StrSql)
        {
            if ((dsCommand == null))
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }
            if ((loadCommand == null))
            {
                loadCommand = new SqlCommand(StrSql, Acn);
                loadCommand.CommandType = CommandType.Text;
            }
            DataSet data = new DataSet();
            dsCommand.SelectCommand = loadCommand;
            dsCommand.Fill(data);
            data.AcceptChanges();
            return data;
        }

        #endregion

        /// <summary>
        /// �õ�������Ϣ
        /// </summary>
        /// <returns>ShDeptData����</returns>
        public ShDeptData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,DeptName,IsWas   
							FROM ShDept";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// �õ�ָ����Ϣ(���ؼ���)
        /// </summary>
        /// <returns>ShDeptData����</returns>
        public ShDeptData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,DeptName,IsWas   
							FROM ShDept 
							WHERE Id = " + id.ToString() + ""
                            + " ORDER BY Id";
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// ȡ����������
        /// </summary>
        /// <returns>������������</returns>
        private SqlCommand GetInsertCommand()
        {
            if (dsCommand.InsertCommand == null)
            {
                string sql = @"INSERT INTO ShDept (DeptName,IsWas) 
					VALUES (@DeptName,@IsWas)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region ���Ӳ���
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShDeptData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@DeptName", SqlDbType.NVarChar, 50, ShDeptData.DEPTNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShDeptData.ISWAS_FIELD));
                #endregion
            }

            return insertCommand;
        }

        /// <summary>
        /// ȡ�ø�������
        /// </summary>
        /// <returns>���ظ�������</returns>
        private SqlCommand GetUpdateCommand()
        {
            if (dsCommand.UpdateCommand == null)
            {
                string sql = @"UPDATE ShDept SET 
					DeptName=@DeptName,IsWas=@IsWas 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region ���Ӳ���
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShDeptData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@DeptName", SqlDbType.NVarChar, 50, ShDeptData.DEPTNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShDeptData.ISWAS_FIELD));
                #endregion
            }

            return updateCommand;
        }

        /// <summary>
        /// �����¼
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        #region�����Ӽ�¼
        public bool InsertData(ShDeptData shdept)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shdept, ShDeptData.SHDEPT_TABLE);
            }
            //���������쳣
            catch (Exception e)
            {
                throw e;
            }
            if (shdept.HasErrors)
            {
                shdept.Tables[ShDeptData.SHDEPT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdept.AcceptChanges();
                return true;
            }
        }
        #endregion

        /// <summary>
        /// �޸ļ�¼
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        #region �޸�����
        public bool UpdateData(ShDeptData shdept)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shdept, ShDeptData.SHDEPT_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shdept.HasErrors)
            {
                shdept.Tables[ShDeptData.SHDEPT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdept.AcceptChanges();
                return true;
            }
        }
        #endregion

        /// <summary>
        /// ɾ��һ����¼
        /// </summary>
        /// <param></param>
        /// <returns>�Ƿ�ɾ���ɹ�</returns>
        #region ɾ������
        public bool DeleteData(int id)
        {
            string strSQL = @"DELETE ShDept 
				WHERE Id = " + id.ToString() + "";

            deleteCommand = new SqlCommand(strSQL, Acn);
            dsCommand.DeleteCommand = deleteCommand;

            try
            {
                if (dsCommand.DeleteCommand.ExecuteNonQuery() != 1)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch (Exception e)
            {
                throw e;
            }
        }
        #endregion
    }
}