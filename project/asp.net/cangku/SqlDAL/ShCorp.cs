//该源码下载自www.51aspx.com(５１ａｓｐｘ．ｃｏｍ)

//////////////////////////////////////////////////////////////////
//文件名		 ShCorp.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:44:08
// 描述:
//		数据库表访问:ShCorp
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
    /// dbo.ShCorp的说明: 数据表说明
    /// </summary>
    public class ShCorp : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShCorp()
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
            dsCommand.TableMappings.Add("Table", ShCorpData.SHCORP_TABLE);
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
        /// <returns>ShCorpData</returns>
        private ShCorpData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShCorpData data = new ShCorpData();
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
        /// 返回往来单位列表
        /// </summary>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetList(string strSearch,string OrderBy)
        {
            if (OrderBy == string.Empty)
                OrderBy = " Order By A.Id Desc";
            string strSql = @"Select A.*,
                                    (Select WordName From ShDict Where IntValue=A.corpkind And Kind=1) As KindNm,
                                    (Select WordName From ShDict Where IntValue=A.creditlevel And Kind=2) As LevelNm,
                                    (Select WordName From ShDict Where IntValue=A.corparea And Kind=3) As AreaNm 
                                    From ShCorp A 
                                    Where A.IsWas=0  " + strSearch + OrderBy;
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            return db.ExecuteDataSet(cmd);
        }

        public bool SetWasById(int Id)
        {
            string strSql = "Update ShCorp Set IsWas=1 Where Id=@ID";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShCorpData.ID_FIELD, DbType.Int32, Id);
            return db.ExecuteNonQuery(cmd) > 0;
        }

        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShCorpData对象</returns>
        public ShCorpData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,CorpName,Linkman,Telephone,PostCode,Fax,Handset,Email,Business,Web,NumCode,PyCode,CorpAdd,Dspt,CorpKind,CreditLevel,CorpArea,IsWas,AddTime,StoreKind   
							FROM ShCorp";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShCorpData对象</returns>
        public ShCorpData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,CorpName,Linkman,Telephone,PostCode,Fax,Handset,Email,Business,Web,NumCode,PyCode,CorpAdd,Dspt,CorpKind,CreditLevel,CorpArea,IsWas,AddTime,StoreKind   
							FROM ShCorp 
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
                string sql = @"INSERT INTO ShCorp (CorpName,Linkman,Telephone,PostCode,Fax,Handset,Email,Business,Web,NumCode,PyCode,CorpAdd,Dspt,CorpKind,CreditLevel,CorpArea,IsWas,AddTime,StoreKind) 
					VALUES (@CorpName,@Linkman,@Telephone,@PostCode,@Fax,@Handset,@Email,@Business,@Web,@NumCode,@PyCode,@CorpAdd,@Dspt,@CorpKind,@CreditLevel,@CorpArea,@IsWas,@AddTime,@StoreKind)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShCorpData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpName", SqlDbType.NVarChar, 100, ShCorpData.CORPNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@Linkman", SqlDbType.NVarChar, 50, ShCorpData.LINKMAN_FIELD));
                sqlParameters.Add(new SqlParameter("@Telephone", SqlDbType.NVarChar, 100, ShCorpData.TELEPHONE_FIELD));
                sqlParameters.Add(new SqlParameter("@PostCode", SqlDbType.NVarChar, 50, ShCorpData.POSTCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@Fax", SqlDbType.NVarChar, 50, ShCorpData.FAX_FIELD));
                sqlParameters.Add(new SqlParameter("@Handset", SqlDbType.NVarChar, 100, ShCorpData.HANDSET_FIELD));
                sqlParameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar, 100, ShCorpData.EMAIL_FIELD));
                sqlParameters.Add(new SqlParameter("@Business", SqlDbType.NVarChar, 100, ShCorpData.BUSINESS_FIELD));
                sqlParameters.Add(new SqlParameter("@Web", SqlDbType.NVarChar, 100, ShCorpData.WEB_FIELD));
                sqlParameters.Add(new SqlParameter("@NumCode", SqlDbType.NVarChar, 50, ShCorpData.NUMCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@PyCode", SqlDbType.NVarChar, 50, ShCorpData.PYCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpAdd", SqlDbType.NVarChar, 300, ShCorpData.CORPADD_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 2000, ShCorpData.DSPT_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpKind", SqlDbType.Int, 0, ShCorpData.CORPKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@CreditLevel", SqlDbType.Int, 0, ShCorpData.CREDITLEVEL_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpArea", SqlDbType.Int, 0, ShCorpData.CORPAREA_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShCorpData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShCorpData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShCorpData.STOREKIND_FIELD));
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
                string sql = @"UPDATE ShCorp SET 
					CorpName=@CorpName,Linkman=@Linkman,Telephone=@Telephone,PostCode=@PostCode,Fax=@Fax,Handset=@Handset,Email=@Email,Business=@Business,Web=@Web,NumCode=@NumCode,PyCode=@PyCode,CorpAdd=@CorpAdd,Dspt=@Dspt,CorpKind=@CorpKind,CreditLevel=@CreditLevel,CorpArea=@CorpArea,IsWas=@IsWas,AddTime=@AddTime,StoreKind=@StoreKind 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShCorpData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpName", SqlDbType.NVarChar, 100, ShCorpData.CORPNAME_FIELD));
                sqlParameters.Add(new SqlParameter("@Linkman", SqlDbType.NVarChar, 50, ShCorpData.LINKMAN_FIELD));
                sqlParameters.Add(new SqlParameter("@Telephone", SqlDbType.NVarChar, 100, ShCorpData.TELEPHONE_FIELD));
                sqlParameters.Add(new SqlParameter("@PostCode", SqlDbType.NVarChar, 50, ShCorpData.POSTCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@Fax", SqlDbType.NVarChar, 50, ShCorpData.FAX_FIELD));
                sqlParameters.Add(new SqlParameter("@Handset", SqlDbType.NVarChar, 100, ShCorpData.HANDSET_FIELD));
                sqlParameters.Add(new SqlParameter("@Email", SqlDbType.NVarChar, 100, ShCorpData.EMAIL_FIELD));
                sqlParameters.Add(new SqlParameter("@Business", SqlDbType.NVarChar, 100, ShCorpData.BUSINESS_FIELD));
                sqlParameters.Add(new SqlParameter("@Web", SqlDbType.NVarChar, 100, ShCorpData.WEB_FIELD));
                sqlParameters.Add(new SqlParameter("@NumCode", SqlDbType.NVarChar, 50, ShCorpData.NUMCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@PyCode", SqlDbType.NVarChar, 50, ShCorpData.PYCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpAdd", SqlDbType.NVarChar, 300, ShCorpData.CORPADD_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 2000, ShCorpData.DSPT_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpKind", SqlDbType.Int, 0, ShCorpData.CORPKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@CreditLevel", SqlDbType.Int, 0, ShCorpData.CREDITLEVEL_FIELD));
                sqlParameters.Add(new SqlParameter("@CorpArea", SqlDbType.Int, 0, ShCorpData.CORPAREA_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShCorpData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShCorpData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShCorpData.STOREKIND_FIELD));
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
        public bool InsertData(ShCorpData shcorp)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shcorp, ShCorpData.SHCORP_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shcorp.HasErrors)
            {
                shcorp.Tables[ShCorpData.SHCORP_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shcorp.AcceptChanges();
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
        public bool UpdateData(ShCorpData shcorp)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shcorp, ShCorpData.SHCORP_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shcorp.HasErrors)
            {
                shcorp.Tables[ShCorpData.SHCORP_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shcorp.AcceptChanges();
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
            string strSQL = @"DELETE ShCorp 
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
