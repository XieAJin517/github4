
//////////////////////////////////////////////////////////////////
//文件名		 ShClass.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:43:36
// 描述:
//		数据库表访问:ShClass
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
    /// dbo.ShClass的说明: 数据表说明
    /// </summary>
    public class ShClass : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShClass()
        {
            dsCommand = new SqlDataAdapter();
            try
            {
                db = DatabaseFactory.CreateDatabase();
                Acn = new SqlHelper().GetConn();;
                Acn.Open();
            }
            catch (SqlException e)
            {
                throw e;
            }
            dsCommand.TableMappings.Add("Table", ShClassData.SHCLASS_TABLE);
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
        /// <returns>ShClassData</returns>
        private ShClassData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShClassData data = new ShClassData();
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
        /// 获取ClassId的包含菜单列表
        /// </summary>
        /// <param name="ClassId"></param>
        /// <returns></returns>
        public DataSet GetClassListByClassId(string ClassId)
        {
            string strSql = @"Select ClassList,ClassTj From ShClass Where ClassID=@ClassId";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShClassData.CLASSID_FIELD, DbType.String, ClassId);
            return db.ExecuteDataSet(cmd);
        }

         /// <summary>
         /// 获取菜单列表
         /// </summary>
         /// <returns></returns>
        public DataSet GetClassList(int ClassKind)
        {
            string strSql = @"Select * from ShClass Where ClassKind=@ClassKind Order By ClassList Asc,ClassOrder Asc";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShClassData.CLASSKIND_FIELD, DbType.Int32, ClassKind);
            return db.ExecuteDataSet(cmd);
        }

        /// <summary>
        /// 上一级菜单
        /// </summary>
        /// <param name="ClassId"></param>
        /// <returns></returns>
        public string GetPreClassId(string ClassId)
        {
            string strSql = @"Select top 1 ClassPre From ShClass Where ClassId=@ClassId";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShClassData.CLASSID_FIELD, DbType.String, ClassId);
            return db.ExecuteScalar(cmd).ToString();
        }


        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShClassData对象</returns>
        public ShClassData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,ClassId,ClassName,ClassList,ClassPre,ClassTj,ClassOrder,ClassKind,StoreKind   
							FROM ShClass";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShClassData对象</returns>
        public ShClassData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,ClassId,ClassName,ClassList,ClassPre,ClassTj,ClassOrder,ClassKind,StoreKind   
							FROM ShClass 
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
                string sql = @"INSERT INTO ShClass (ClassId,ClassName,ClassList,ClassPre,ClassTj,ClassOrder,ClassKind,StoreKind) 
					VALUES (@ClassId,@ClassName,@ClassList,@ClassPre,@ClassTj,@ClassOrder,@ClassKind,@StoreKind)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShClassData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassId", SqlDbType.NVarChar, 50, ShClassData.CLASSID_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassName", SqlDbType.NVarChar, 100, ShClassData.CLASSNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassList", SqlDbType.NVarChar, 500, ShClassData.CLASSLIST_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassPre", SqlDbType.NVarChar, 50, ShClassData.CLASSPRE_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassTj", SqlDbType.Int, 0, ShClassData.CLASSTJ_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassOrder", SqlDbType.Int, 0, ShClassData.CLASSORDER_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassKind", SqlDbType.Int, 0, ShClassData.CLASSKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShClassData.STOREKIND_FIELD));
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
                string sql = @"UPDATE ShClass SET 
					ClassId=@ClassId,ClassName=@ClassName,ClassList=@ClassList,ClassPre=@ClassPre,ClassTj=@ClassTj,ClassOrder=@ClassOrder,ClassKind=@ClassKind,StoreKind=@StoreKind 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShClassData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassId", SqlDbType.NVarChar, 50, ShClassData.CLASSID_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassName", SqlDbType.NVarChar, 100, ShClassData.CLASSNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassList", SqlDbType.NVarChar, 500, ShClassData.CLASSLIST_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassPre", SqlDbType.NVarChar, 50, ShClassData.CLASSPRE_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassTj", SqlDbType.Int, 0, ShClassData.CLASSTJ_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassOrder", SqlDbType.Int, 0, ShClassData.CLASSORDER_FIELD));
                sqlParameters.Add(new SqlParameter("@ClassKind", SqlDbType.Int, 0, ShClassData.CLASSKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShClassData.STOREKIND_FIELD));
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
        public bool InsertData(ShClassData shclass)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shclass, ShClassData.SHCLASS_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shclass.HasErrors)
            {
                shclass.Tables[ShClassData.SHCLASS_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shclass.AcceptChanges();
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
        public bool UpdateData(ShClassData shclass)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shclass, ShClassData.SHCLASS_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shclass.HasErrors)
            {
                shclass.Tables[ShClassData.SHCLASS_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shclass.AcceptChanges();
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
            string strSQL = @"DELETE ShClass 
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
