
//////////////////////////////////////////////////////////////////
//文件名		 ShDict.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:45:06
// 描述:
//		数据库表访问:ShDict
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
using AcomLb.Enumerations;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;

namespace AcomLb.SqlDAL
{

    /// <summary>
    /// dbo.ShDict的说明: 数据表说明
    /// </summary>
    public class ShDict : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShDict()
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
            dsCommand.TableMappings.Add("Table", ShDictData.SHDICT_TABLE);
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
        /// <returns>ShDictData</returns>
        private ShDictData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShDictData data = new ShDictData();
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
        /// 返回字典类别对应的列表
        /// </summary>
        /// <param name="kind">类别,EnDictKind枚举</param>
        /// <returns></returns>
        public ShDictData GetDataByKind(EnDictKind kind)
        {
            string strSql = "Select Id,Kind,WordName,IntValue,StrValue,IsWas From ShDict Where IsWas=0 And Kind=@Kind";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShDictData.KIND_FIELD, DbType.Int32, (int)kind);
            ShDictData ds = new ShDictData();
            db.LoadDataSet(cmd, ds, ShDictData.SHDICT_TABLE);
            return ds;
        }
        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShDictData对象</returns>
        public ShDictData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,Kind,WordName,IntValue,StrValue,IsWas   
							FROM ShDict";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShDictData对象</returns>
        public ShDictData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,Kind,WordName,IntValue,StrValue,IsWas   
							FROM ShDict 
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
                string sql = @"INSERT INTO ShDict (Kind,WordName,IntValue,StrValue,IsWas) 
					VALUES (@Kind,@WordName,@IntValue,@StrValue,@IsWas)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShDictData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShDictData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@WordName", SqlDbType.NVarChar, 200, ShDictData.WORDNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@IntValue", SqlDbType.Int, 0, ShDictData.INTVALUE_FIELD));
                sqlParameters.Add(new SqlParameter("@StrValue", SqlDbType.NVarChar, 200, ShDictData.STRVALUE_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShDictData.ISWAS_FIELD));
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
                string sql = @"UPDATE ShDict SET 
					Kind=@Kind,WordName=@WordName,IntValue=@IntValue,StrValue=@StrValue,IsWas=@IsWas 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShDictData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShDictData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@WordName", SqlDbType.NVarChar, 200, ShDictData.WORDNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@IntValue", SqlDbType.Int, 0, ShDictData.INTVALUE_FIELD));
                sqlParameters.Add(new SqlParameter("@StrValue", SqlDbType.NVarChar, 200, ShDictData.STRVALUE_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShDictData.ISWAS_FIELD));
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
        public bool InsertData(ShDictData shdict)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shdict, ShDictData.SHDICT_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shdict.HasErrors)
            {
                shdict.Tables[ShDictData.SHDICT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdict.AcceptChanges();
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
        public bool UpdateData(ShDictData shdict)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shdict, ShDictData.SHDICT_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shdict.HasErrors)
            {
                shdict.Tables[ShDictData.SHDICT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shdict.AcceptChanges();
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
            string strSQL = @"DELETE ShDict 
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
