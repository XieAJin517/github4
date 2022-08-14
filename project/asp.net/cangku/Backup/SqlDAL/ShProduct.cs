
//////////////////////////////////////////////////////////////////
//文件名		 ShProduct.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:45:36
// 描述:
//		数据库表访问:ShProduct
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
    /// dbo.ShProduct的说明: 数据表说明
    /// </summary>
    public class ShProduct : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShProduct()
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
            dsCommand.TableMappings.Add("Table", ShProductData.SHPRODUCT_TABLE);
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
        /// <returns>ShProductData</returns>
        private ShProductData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShProductData data = new ShProductData();
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
        /// 获取产品信息
        /// </summary>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetProductInfo(string strSearch,string OrderBy)
        {
            if (OrderBy == string.Empty)
                OrderBy = " Order By A.Id Desc";
            string strSql = @"Select A.*,B.UseName as StfName,C.ClassName 
                            From ShProduct A,ShUser B,ShClass C
                            Where A.OpStf=B.Id And A.ProClass=C.Id And A.IsWas=0 " + strSearch + OrderBy;
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            return db.ExecuteDataSet(cmd);
        }

        public bool SetWasById(int Id)
        {
            string strSql = "Update ShProduct Set IsWas=1 Where Id=@ID";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShCorpData.ID_FIELD, DbType.Int32, Id);
            return db.ExecuteNonQuery(cmd) > 0;
        }

        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShProductData对象</returns>
        public ShProductData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,NumCode,PyCode,ProName,ProClass,ProPrice,Spes,Unit,ProDes,OpStf,AddTime,IsWas,StoreKind   
							FROM ShProduct";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShProductData对象</returns>
        public ShProductData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,NumCode,PyCode,ProName,ProClass,ProPrice,Spes,Unit,ProDes,OpStf,AddTime,IsWas,StoreKind   
							FROM ShProduct 
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
                string sql = @"INSERT INTO ShProduct (NumCode,PyCode,ProName,ProClass,ProPrice,Spes,Unit,ProDes,OpStf,AddTime,IsWas,StoreKind) 
					VALUES (@NumCode,@PyCode,@ProName,@ProClass,@ProPrice,@Spes,@Unit,@ProDes,@OpStf,@AddTime,@IsWas,@StoreKind)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShProductData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@NumCode", SqlDbType.NVarChar, 50, ShProductData.NUMCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@PyCode", SqlDbType.NVarChar, 50, ShProductData.PYCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@ProName", SqlDbType.NVarChar, 50, ShProductData.PRONAME_FIELD));
                sqlParameters.Add(new SqlParameter("@ProClass", SqlDbType.NVarChar, 50, ShProductData.PROCLASS_FIELD));
                sqlParameters.Add(new SqlParameter("@ProPrice", SqlDbType.Money, 0, ShProductData.PROPRICE_FIELD));
                sqlParameters.Add(new SqlParameter("@Spes", SqlDbType.NVarChar, 100, ShProductData.SPES_FIELD));
                sqlParameters.Add(new SqlParameter("@Unit", SqlDbType.NVarChar, 50, ShProductData.UNIT_FIELD));
                sqlParameters.Add(new SqlParameter("@ProDes", SqlDbType.NText, 1073741823, ShProductData.PRODES_FIELD));
                sqlParameters.Add(new SqlParameter("@OpStf", SqlDbType.Int, 0, ShProductData.OPSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShProductData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShProductData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShProductData.STOREKIND_FIELD));
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
                string sql = @"UPDATE ShProduct SET 
					NumCode=@NumCode,PyCode=@PyCode,ProName=@ProName,ProClass=@ProClass,ProPrice=@ProPrice,Spes=@Spes,Unit=@Unit,ProDes=@ProDes,OpStf=@OpStf,AddTime=@AddTime,IsWas=@IsWas,StoreKind=@StoreKind 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShProductData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@NumCode", SqlDbType.NVarChar, 50, ShProductData.NUMCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@PyCode", SqlDbType.NVarChar, 50, ShProductData.PYCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@ProName", SqlDbType.NVarChar, 50, ShProductData.PRONAME_FIELD));
                sqlParameters.Add(new SqlParameter("@ProClass", SqlDbType.NVarChar, 50, ShProductData.PROCLASS_FIELD));
                sqlParameters.Add(new SqlParameter("@ProPrice", SqlDbType.Money, 0, ShProductData.PROPRICE_FIELD));
                sqlParameters.Add(new SqlParameter("@Spes", SqlDbType.NVarChar, 100, ShProductData.SPES_FIELD));
                sqlParameters.Add(new SqlParameter("@Unit", SqlDbType.NVarChar, 50, ShProductData.UNIT_FIELD));
                sqlParameters.Add(new SqlParameter("@ProDes", SqlDbType.NText, 1073741823, ShProductData.PRODES_FIELD));
                sqlParameters.Add(new SqlParameter("@OpStf", SqlDbType.Int, 0, ShProductData.OPSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShProductData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShProductData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShProductData.STOREKIND_FIELD));
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
        public bool InsertData(ShProductData shproduct)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shproduct, ShProductData.SHPRODUCT_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shproduct.HasErrors)
            {
                shproduct.Tables[ShProductData.SHPRODUCT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shproduct.AcceptChanges();
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
        public bool UpdateData(ShProductData shproduct)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shproduct, ShProductData.SHPRODUCT_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shproduct.HasErrors)
            {
                shproduct.Tables[ShProductData.SHPRODUCT_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shproduct.AcceptChanges();
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
            string strSQL = @"DELETE ShProduct 
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
