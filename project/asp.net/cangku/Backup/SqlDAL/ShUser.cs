
//////////////////////////////////////////////////////////////////
//文件名		 ShUser.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:45:59
// 描述:
//		数据库表访问:ShUser
//修改日志:		
//	
//版权所有		http://www.DotNets.cn(c)2007-2010
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
    /// dbo.ShUser的说明: 数据表说明
    /// </summary>
    public class ShUser : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShUser()
        {
            db = DatabaseFactory.CreateDatabase();
            dsCommand = new SqlDataAdapter();
            try
            {
                Acn = new SqlHelper().GetConn();;
                Acn.Open();
            }
            catch (SqlException e)
            {
                throw e;
            }
            dsCommand.TableMappings.Add("Table", ShUserData.SHUSER_TABLE);
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

        #region  执行查询语句(内部使用)

        /// <summary>
        /// 执行查询语句
        /// </summary>
        /// <param name="commandText">命令行SQL</param>
        /// <returns>ShUserData</returns>
        private ShUserData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShUserData data = new ShUserData();
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
        /// 执行查询语句
        /// </summary>
        /// <param name="commandText">命令行SQL</param>
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
        /// 获取用户信息
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="passWd"></param>
        /// <returns></returns>
        public ShUserData GetUserInfo(string userId)
        {
            string strSql = "Select A.*,B.DeptName From ShUser A,ShDept B Where A.dept=B.Id And  A.userId=@userId";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShUserData.USERID_FIELD, DbType.String, userId);
            ShUserData ds = new ShUserData();
            db.LoadDataSet(cmd, ds, ShUserData.SHUSER_TABLE);
            return ds;
        }
        
        /// <summary>
        /// 获取用户信息
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="passWd"></param>
        /// <returns></returns>
        public ShUserData GetUserInfo(string userId, string passWd)
        {
            string strSql = "Select A.*,B.DeptName From ShUser A,ShDept B Where A.dept=B.Id And A.userId=@userId And A.passWd=@passWd";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShUserData.USERID_FIELD, DbType.String, userId);
            db.AddInParameter(cmd, ShUserData.PASSWD_FIELD, DbType.String, passWd);
            ShUserData ds = new ShUserData();
            db.LoadDataSet(cmd, ds, ShUserData.SHUSER_TABLE);
            return ds;
        }

        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShUserData对象</returns>
        public ShUserData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,UserId,PassWd,UseName,Dept,Tel,IsWas   
							FROM ShUser";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShUserData对象</returns>
        public ShUserData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,UserId,PassWd,UseName,Dept,Tel,IsWas   
							FROM ShUser 
							WHERE Id = " + id.ToString() + ""
                            + " ORDER BY Id";
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 取得添加命令
        /// </summary>
        /// <returns>返回添加命令</returns>
        private SqlCommand GetInsertCommand()
        {
            if (dsCommand.InsertCommand == null)
            {
                string sql = @"INSERT INTO ShUser (UserId,PassWd,UseName,Dept,Tel,IsWas) 
					VALUES (@UserId,@PassWd,@UseName,@Dept,@Tel,@IsWas)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShUserData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@UserId", SqlDbType.NVarChar, 50, ShUserData.USERID_FIELD));
                sqlParameters.Add(new SqlParameter("@PassWd", SqlDbType.NVarChar, 50, ShUserData.PASSWD_FIELD));
                sqlParameters.Add(new SqlParameter("@UseName", SqlDbType.NVarChar, 50, ShUserData.USENAME_FIELD));
                sqlParameters.Add(new SqlParameter("@Dept", SqlDbType.Int, 0, ShUserData.DEPT_FIELD));
                sqlParameters.Add(new SqlParameter("@Tel", SqlDbType.NVarChar, 50, ShUserData.TEL_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShUserData.ISWAS_FIELD));
                #endregion
            }

            return insertCommand;
        }

        /// <summary>
        /// 取得更新命令
        /// </summary>
        /// <returns>返回更新命令</returns>
        private SqlCommand GetUpdateCommand()
        {
            if (dsCommand.UpdateCommand == null)
            {
                string sql = @"UPDATE ShUser SET 
					UserId=@UserId,PassWd=@PassWd,UseName=@UseName,Dept=@Dept,Tel=@Tel,IsWas=@IsWas 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShUserData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@UserId", SqlDbType.NVarChar, 50, ShUserData.USERID_FIELD));
                sqlParameters.Add(new SqlParameter("@PassWd", SqlDbType.NVarChar, 50, ShUserData.PASSWD_FIELD));
                sqlParameters.Add(new SqlParameter("@UseName", SqlDbType.NVarChar, 50, ShUserData.USENAME_FIELD));
                sqlParameters.Add(new SqlParameter("@Dept", SqlDbType.Int, 0, ShUserData.DEPT_FIELD));
                sqlParameters.Add(new SqlParameter("@Tel", SqlDbType.NVarChar, 50, ShUserData.TEL_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShUserData.ISWAS_FIELD));
                #endregion
            }

            return updateCommand;
        }

        /// <summary>
        /// 插入记录
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        #region　添加记录
        public bool InsertData(ShUserData shuser)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shuser, ShUserData.SHUSER_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shuser.HasErrors)
            {
                shuser.Tables[ShUserData.SHUSER_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shuser.AcceptChanges();
                return true;
            }
        }
        #endregion

        /// <summary>
        /// 修改记录
        /// </summary>
        /// <param></param>
        /// <returns></returns>
        #region 修改数据
        public bool UpdateData(ShUserData shuser)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shuser, ShUserData.SHUSER_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shuser.HasErrors)
            {
                shuser.Tables[ShUserData.SHUSER_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shuser.AcceptChanges();
                return true;
            }
        }
        #endregion

        /// <summary>
        /// 删除一条记录
        /// </summary>
        /// <param></param>
        /// <returns>是否删除成功</returns>
        #region 删除数据
        public bool DeleteData(int id)
        {
            string strSQL = @"DELETE ShUser 
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
