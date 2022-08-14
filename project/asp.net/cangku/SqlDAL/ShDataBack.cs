
//////////////////////////////////////////////////////////////////
//�ļ���		 ShDataBack.cs
//������		 Pconcool
//��������		2007-10-25 17:53:39
// ����:
//		���ݿ�����:ShDataBack
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
using AcomLb.Enumerations;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;

namespace AcomLb.SqlDAL
{

    /// <summary>
    /// dbo.ShDataBack��˵��: ���ݱ�˵��
    /// </summary>
    public class ShDataBack : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region ��ʼ��
        public ShDataBack()
        {
            dsCommand = new SqlDataAdapter();
            try
            {
                db = DatabaseFactory.CreateDatabase();
                Acn = new SqlHelper().GetConn();
                Acn.Open();
            }
            catch (SqlException e)
            {
                throw e;
            }
            dsCommand.TableMappings.Add("Table", ShDataBackData.SHDATABACK_TABLE);
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
        /// <returns>ShDataBackData</returns>
        private ShDataBackData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShDataBackData data = new ShDataBackData();
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
        /// �������ݿ�
        /// </summary>
        /// <param name="PathDataName">����������·�����ļ���</param>
        /// <returns></returns>
        public bool SetDataBack(string PathDataName, string FileName)
        {
            string backName = PathDataName.Substring(PathDataName.LastIndexOf("/") + 1);
            DbCommand Backcmd = db.GetStoredProcCommand("AcomStoreDataBack");
            db.AddOutParameter(Backcmd, "flag", DbType.String, 100);
            db.AddInParameter(Backcmd, "backup_db_name", DbType.String, "AcomStore");
            db.AddInParameter(Backcmd, "filename", DbType.String, PathDataName);
            db.AddInParameter(Backcmd, "BackName", DbType.String, backName);
            return db.ExecuteNonQuery(Backcmd)>0;
            //if (i > 0)
            //{
            //    string AddSql = @"Insert Into ShDataBack (DataName) values (@DataName)";
            //    Database db2 = DatabaseFactory.CreateDatabase();
            //    DbCommand cmd = db2.GetSqlStringCommand(AddSql);
            //    cmd = db2.GetSqlStringCommand(AddSql);
            //    db2.AddInParameter(cmd, ShDataBackData.DATANAME_FIELD, DbType.String, FileName);
            //    return db2.ExecuteNonQuery(cmd) > 0;
            //}
            //else
            //    return false;
        }

        /// <summary>
        /// �õ�������Ϣ
        /// </summary>
        /// <returns>ShDataBackData����</returns>
        public ShDataBackData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT ID,DataName,BackTime   
							FROM ShDataBack";
            if (bOrderPK)
            {
                strSQL += " ORDER BY ID";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// �õ�ָ����Ϣ(���ؼ���)
        /// </summary>
        /// <returns>ShDataBackData����</returns>
        public ShDataBackData GetDataByID(int id)
        {
            string strSQL = @"SELECT ID,DataName,BackTime   
							FROM ShDataBack 
							WHERE ID = " + id.ToString() + ""
                            + " ORDER BY ID";
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// ȡ���������
        /// </summary>
        /// <returns>�����������</returns>
        private SqlCommand GetInsertCommand()
        {
            if (dsCommand.InsertCommand == null)
            {
                string sql = @"INSERT INTO ShDataBack (DataName,BackTime) 
					VALUES (@DataName,@BackTime)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region ��Ӳ���
                //sqlParameters.Add(new SqlParameter("@ID", SqlDbType.Int, 0, ShDataBackData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@DataName", SqlDbType.NVarChar, 50, ShDataBackData.DATANAME_FIELD));
                sqlParameters.Add(new SqlParameter("@BackTime", SqlDbType.DateTime, 0, ShDataBackData.BACKTIME_FIELD));
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
                string sql = @"UPDATE ShDataBack SET 
					DataName=@DataName,BackTime=@BackTime 
					WHERE ID=@ID";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region ��Ӳ���
                sqlParameters.Add(new SqlParameter("@ID", SqlDbType.Int, 0, ShDataBackData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@DataName", SqlDbType.NVarChar, 50, ShDataBackData.DATANAME_FIELD));
                sqlParameters.Add(new SqlParameter("@BackTime", SqlDbType.DateTime, 0, ShDataBackData.BACKTIME_FIELD));
                #endregion
            }

            return updateCommand;
        }

        /// <summary>
        /// �����¼
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        #region����Ӽ�¼
        public bool InsertData(ShDataBackData shdataback)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shdataback, ShDataBackData.SHDATABACK_TABLE);
            }
            //��������쳣
            catch (Exception e)
            {
                throw e;
            }
            if (shdataback.HasErrors)
            {
                shdataback.Tables[ShDataBackData.SHDATABACK_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdataback.AcceptChanges();
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
        public bool UpdateData(ShDataBackData shdataback)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shdataback, ShDataBackData.SHDATABACK_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shdataback.HasErrors)
            {
                shdataback.Tables[ShDataBackData.SHDATABACK_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdataback.AcceptChanges();
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
            string strSQL = @"DELETE ShDataBack 
				WHERE ID = " + id.ToString() + "";

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
