
//////////////////////////////////////////////////////////////////
//文件名		 ShBillList.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:43:08
// 描述:
//		数据库表访问:ShBillList
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
    /// dbo.ShBillList的说明: 数据表说明
    /// </summary>
    public class ShBillList : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShBillList()
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
            dsCommand.TableMappings.Add("Table", ShBillListData.SHBILLLIST_TABLE);
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
        /// <returns>ShBillListData</returns>
        private ShBillListData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShBillListData data = new ShBillListData();
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

        public bool SetWasById(int Id)
        {
            string strSql = "Update ShBillList Set IsWas=1 Where Id=@Id";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillListData.ID_FIELD, DbType.Int32, Id);
            return db.ExecuteNonQuery(cmd) > 0;
        }

        /// <summary>
        /// 检查入库单是否已录了该条形码,如果存在则返回真,否则假
        /// </summary>
        /// <param name="barCode"></param>
        /// <param name="ProId"></param>
        /// <returns></returns>
        public bool ChkCodeIsExits(string barCode, int ProId)
        {
            string strSql = "Select Count(*) From ShBillList Where Kind=@Kind And mainbarcode=@mainbarcode And IsWas=0 And ProId=@ProId";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillListData.KIND_FIELD, DbType.Int32, (int)EnBillType.StoreIn);
            db.AddInParameter(cmd, ShBillListData.MAINBARCODE_FIELD, DbType.String, barCode);
            db.AddInParameter(cmd, ShBillListData.PROID_FIELD, DbType.Int32, ProId);
            int count=Convert.ToInt32(db.ExecuteScalar(cmd));
            return count > 0;
        }

        /// <summary>
        /// 单据明细
        /// </summary>
        /// <param name="BillId"></param>
        /// <returns></returns>
        public DataSet GetBillList(int BillId)
        {
            string strSql = "Select A.*,B.ProName From ShBillList A,ShProduct B Where A.ProId=B.Id And BillId=@BillId And A.IsWas=0 Order By A.AddTime Desc";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillListData.BILLID_FIELD, DbType.Int32, BillId);
            return db.ExecuteDataSet(cmd);
        }

        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShBillListData对象</returns>
        public ShBillListData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,BillId,ProId,ProPrice,InNums,MainBarCode,SubBarCode,AddTime,Kind,IsWas,Flag,Dspt   
							FROM ShBillList";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShBillListData对象</returns>
        public ShBillListData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,BillId,ProId,ProPrice,InNums,MainBarCode,SubBarCode,AddTime,Kind,IsWas,Flag,Dspt   
							FROM ShBillList 
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
                string sql = @"INSERT INTO ShBillList (BillId,ProId,ProPrice,InNums,MainBarCode,SubBarCode,AddTime,Kind,IsWas,Flag,Dspt) 
					VALUES (@BillId,@ProId,@ProPrice,@InNums,@MainBarCode,@SubBarCode,@AddTime,@Kind,@IsWas,@Flag,@Dspt)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShBillListData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@BillId", SqlDbType.Int, 0, ShBillListData.BILLID_FIELD));
                sqlParameters.Add(new SqlParameter("@ProId", SqlDbType.Int, 0, ShBillListData.PROID_FIELD));
                sqlParameters.Add(new SqlParameter("@ProPrice", SqlDbType.Money, 0, ShBillListData.PROPRICE_FIELD));
                sqlParameters.Add(new SqlParameter("@InNums", SqlDbType.Int, 0, ShBillListData.INNUMS_FIELD));
                sqlParameters.Add(new SqlParameter("@MainBarCode", SqlDbType.NVarChar, 100, ShBillListData.MAINBARCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@SubBarCode", SqlDbType.NVarChar, 100, ShBillListData.SUBBARCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShBillListData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShBillListData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShBillListData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@Flag", SqlDbType.Int, 0, ShBillListData.FLAG_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 1000, ShBillListData.DSPT_FIELD));
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
                string sql = @"UPDATE ShBillList SET 
					BillId=@BillId,ProId=@ProId,ProPrice=@ProPrice,InNums=@InNums,MainBarCode=@MainBarCode,SubBarCode=@SubBarCode,AddTime=@AddTime,Kind=@Kind,IsWas=@IsWas,Flag=@Flag,Dspt=@Dspt 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShBillListData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@BillId", SqlDbType.Int, 0, ShBillListData.BILLID_FIELD));
                sqlParameters.Add(new SqlParameter("@ProId", SqlDbType.Int, 0, ShBillListData.PROID_FIELD));
                sqlParameters.Add(new SqlParameter("@ProPrice", SqlDbType.Money, 0, ShBillListData.PROPRICE_FIELD));
                sqlParameters.Add(new SqlParameter("@InNums", SqlDbType.Int, 0, ShBillListData.INNUMS_FIELD));
                sqlParameters.Add(new SqlParameter("@MainBarCode", SqlDbType.NVarChar, 100, ShBillListData.MAINBARCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@SubBarCode", SqlDbType.NVarChar, 100, ShBillListData.SUBBARCODE_FIELD));
                sqlParameters.Add(new SqlParameter("@AddTime", SqlDbType.DateTime, 0, ShBillListData.ADDTIME_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShBillListData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShBillListData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@Flag", SqlDbType.Int, 0, ShBillListData.FLAG_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 1000, ShBillListData.DSPT_FIELD));
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
        public bool InsertData(ShBillListData shbilllist)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shbilllist, ShBillListData.SHBILLLIST_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shbilllist.HasErrors)
            {
                shbilllist.Tables[ShBillListData.SHBILLLIST_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shbilllist.AcceptChanges();
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
        public bool UpdateData(ShBillListData shbilllist)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shbilllist, ShBillListData.SHBILLLIST_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shbilllist.HasErrors)
            {
                shbilllist.Tables[ShBillListData.SHBILLLIST_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shbilllist.AcceptChanges();
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
            string strSQL = @"DELETE ShBillList 
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
