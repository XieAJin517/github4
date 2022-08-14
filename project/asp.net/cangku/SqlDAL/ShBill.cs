
//////////////////////////////////////////////////////////////////
//文件名		 ShBill.cs
//创建人		 Pconcool
//创建日期		2007-10-20 17:42:38
// 描述:
//		数据库表访问:ShBill
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
    /// dbo.ShBill的说明: 数据表说明
    /// </summary>
    public class ShBill : IDisposable
    {

        protected SqlDataAdapter dsCommand;
        protected SqlConnection Acn;
        private SqlCommand loadCommand;
        private SqlCommand insertCommand;
        private SqlCommand updateCommand;
        private SqlCommand deleteCommand;
        private Database db;

        #region 初始化
        public ShBill()
        {
            dsCommand = new SqlDataAdapter();
            try
            {
                db = DatabaseFactory.CreateDatabase();
                Acn =new SqlHelper().GetConn();
                Acn.Open();
            }
            catch (SqlException e)
            {
                throw e;
            }
            dsCommand.TableMappings.Add("Table", ShBillData.SHBILL_TABLE);
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
        /// <returns>ShBillData</returns>
        private ShBillData GetTableData(String commandText)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            ShBillData data = new ShBillData();
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
        /// 审核单据
        /// </summary>
        /// <param name="StfId"></param>
        /// <param name="BillId"></param>
        /// <returns></returns>
        public bool CheckBill(int StfId,int BillId)
        {
            string strSql = "Update ShBill Set IsCheck=abs(IsCheck-1),CheckStf=@CheckStf,CheckTm=getdate() Where Id=@Id";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillData.CHECKSTF_FIELD, DbType.Int32, StfId);
            db.AddInParameter(cmd, ShBillData.ID_FIELD, DbType.Int32, BillId);
            return db.ExecuteNonQuery(cmd) > 0;
        }

        /// <summary>
        /// 单据汇总
        /// </summary>
        /// <param name="billType"></param>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetBillList(EnBillType billType, string strSearch)
        {
            string strSql = @"Select A.InCorp,B.CorpName,count(*) as BillCount From ShBill A,ShCorp B
                                    Where A.InCorp=B.Id And A.Kind=@Kind {0}
                                    Group By A.InCorp,B.CorpName  ";
            strSql = string.Format(strSql, strSearch);
            DbCommand cmd=db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillData.KIND_FIELD, DbType.Int32, (int)billType);
            return db.ExecuteDataSet(cmd);
        }

        /// <summary>
        /// 单据列表
        /// </summary>
        /// <param name="billType">单据类型,EnBillType枚举</param>
        /// <param name="strSearch"></param>
        /// <returns></returns>
        public DataSet GetBillList(EnBillType billType,string strSearch,string OrderBy)
        {
            if (OrderBy == string.Empty)
                OrderBy = " Order By A.Id Desc";
            string strSql = @"Select A.*,B.CorpName,B.LinkMan,
                                    (Select UseName From ShUser Where Id=A.InStf) As InStfNm,
                                    (Select UseName From ShUser Where Id=A.SureStf) As SureStfNm,
                                    (Select UseName From ShUser Where Id=A.CheckStf) As CheckStfNm,
                                    (Select Count(*) From ShBillList Where BillId=A.Id) As BillListCount
                                    From ShBill A,ShCorp B
                                    Where A.InCorp=B.Id And A.Kind=@Kind " + strSearch + OrderBy;
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillData.KIND_FIELD, DbType.Int32, (int)billType);
            return db.ExecuteDataSet(cmd);
        }

        /// <summary>
        /// 返回单据信息
        /// </summary>
        /// <param name="BillId"></param>
        /// <returns></returns>
        public DataSet GetBillById(int BillId)
        {
            string strSql = "Select A.*,B.CorpName,B.Linkman,B.Telephone,B.Fax,B.Handset,B.CorpAdd From ShBill A,ShCorp B Where A.Id=@Id";
            DbCommand cmd = db.GetSqlStringCommand(strSql);
            db.AddInParameter(cmd, ShBillData.ID_FIELD, DbType.Int32, BillId);
            return db.ExecuteDataSet(cmd);
        }

        public int AddData(ShBillData Ds)
        {
            string sql = @"INSERT INTO ShBill (BillNo,InCorp,IsSure,IsCheck,InStf,SureStf,CheckStf,InTm,SureTm,CheckTm,Kind,IsWas,StoreKind,Dspt) 
					VALUES (@BillNo,@InCorp,@IsSure,@IsCheck,@InStf,@SureStf,@CheckStf,@InTm,@SureTm,@CheckTm,@Kind,@IsWas,@StoreKind,@Dspt);select @@IDENTITY";
            DataRow dr = Ds.Tables[0].Rows[0];
            SqlCommand comm = new SqlCommand(sql, Acn);
            comm.CommandType = CommandType.Text;
            #region
            comm.Parameters.Add("@BillNo", SqlDbType.NVarChar, 50);
            comm.Parameters["@BillNo"].Value = dr[ShBillData.BILLNO_FIELD];
            comm.Parameters.Add("@InCorp", SqlDbType.Int);
            comm.Parameters["@InCorp"].Value = dr[ShBillData.INCORP_FIELD];
            comm.Parameters.Add("@IsSure", SqlDbType.Int);
            comm.Parameters["@IsSure"].Value = dr[ShBillData.ISSURE_FIELD];
            comm.Parameters.Add("@IsCheck", SqlDbType.Int);
            comm.Parameters["@IsCheck"].Value = dr[ShBillData.ISCHECK_FIELD];
            comm.Parameters.Add("@InStf", SqlDbType.Int);
            comm.Parameters["@InStf"].Value = dr[ShBillData.INSTF_FIELD];
            comm.Parameters.Add("@SureStf", SqlDbType.Int);
            comm.Parameters["@SureStf"].Value = dr[ShBillData.SURESTF_FIELD];
            comm.Parameters.Add("@CheckStf", SqlDbType.Int);
            comm.Parameters["@CheckStf"].Value = dr[ShBillData.CHECKSTF_FIELD];
            comm.Parameters.Add("@InTm", SqlDbType.DateTime);
            comm.Parameters["@InTm"].Value = dr[ShBillData.INTM_FIELD];
            comm.Parameters.Add("@SureTm", SqlDbType.DateTime);
            comm.Parameters["@SureTm"].Value = dr[ShBillData.SURETM_FIELD];
            comm.Parameters.Add("@CheckTm", SqlDbType.DateTime);
            comm.Parameters["@CheckTm"].Value = dr[ShBillData.CHECKTM_FIELD];
            comm.Parameters.Add("@Kind", SqlDbType.Int);
            comm.Parameters["@Kind"].Value = dr[ShBillData.KIND_FIELD];
            comm.Parameters.Add("@IsWas", SqlDbType.Int);
            comm.Parameters["@IsWas"].Value = dr[ShBillData.ISWAS_FIELD];
            comm.Parameters.Add("@StoreKind", SqlDbType.Int);
            comm.Parameters["@StoreKind"].Value = dr[ShBillData.STOREKIND_FIELD];
            comm.Parameters.Add("@Dspt", SqlDbType.NVarChar, 2000);
            comm.Parameters["@Dspt"].Value = dr[ShBillData.DSPT_FIELD];
            #endregion
            int RowId = Convert.ToInt32(comm.ExecuteScalar());
            Acn.Close();
            return RowId; ;
        }

        /// <summary>
        /// 得到所有信息
        /// </summary>
        /// <returns>ShBillData对象</returns>
        public ShBillData GetAllData(bool bOrderPK)
        {
            string strSQL = @"SELECT Id,BillNo,InCorp,IsSure,IsCheck,InStf,SureStf,CheckStf,InTm,SureTm,CheckTm,Kind,IsWas,StoreKind,Dspt   
							FROM ShBill";
            if (bOrderPK)
            {
                strSQL += " ORDER BY Id";
            }
            return this.GetTableData(strSQL);
        }

        /// <summary>
        /// 得到指定信息(按关键字)
        /// </summary>
        /// <returns>ShBillData对象</returns>
        public ShBillData GetDataByID(int id)
        {
            string strSQL = @"SELECT Id,BillNo,InCorp,IsSure,IsCheck,InStf,SureStf,CheckStf,InTm,SureTm,CheckTm,Kind,IsWas,StoreKind,Dspt   
							FROM ShBill 
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
                string sql = @"INSERT INTO ShBill (BillNo,InCorp,IsSure,IsCheck,InStf,SureStf,CheckStf,InTm,SureTm,CheckTm,Kind,IsWas,StoreKind,Dspt) 
					VALUES (@BillNo,@InCorp,@IsSure,@IsCheck,@InStf,@SureStf,@CheckStf,@InTm,@SureTm,@CheckTm,@Kind,@IsWas,@StoreKind,@Dspt)";
                insertCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = insertCommand.Parameters;
                #region 添加参数
                //sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShBillData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@BillNo", SqlDbType.NVarChar, 50, ShBillData.BILLNO_FIELD));
                sqlParameters.Add(new SqlParameter("@InCorp", SqlDbType.Int, 0, ShBillData.INCORP_FIELD));
                sqlParameters.Add(new SqlParameter("@IsSure", SqlDbType.Int, 0, ShBillData.ISSURE_FIELD));
                sqlParameters.Add(new SqlParameter("@IsCheck", SqlDbType.Int, 0, ShBillData.ISCHECK_FIELD));
                sqlParameters.Add(new SqlParameter("@InStf", SqlDbType.Int, 0, ShBillData.INSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@SureStf", SqlDbType.Int, 0, ShBillData.SURESTF_FIELD));
                sqlParameters.Add(new SqlParameter("@CheckStf", SqlDbType.Int, 0, ShBillData.CHECKSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@InTm", SqlDbType.DateTime, 0, ShBillData.INTM_FIELD));
                sqlParameters.Add(new SqlParameter("@SureTm", SqlDbType.DateTime, 0, ShBillData.SURETM_FIELD));
                sqlParameters.Add(new SqlParameter("@CheckTm", SqlDbType.DateTime, 0, ShBillData.CHECKTM_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShBillData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShBillData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShBillData.STOREKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 2000, ShBillData.DSPT_FIELD));
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
                string sql = @"UPDATE ShBill SET 
					BillNo=@BillNo,InCorp=@InCorp,IsSure=@IsSure,IsCheck=@IsCheck,InStf=@InStf,SureStf=@SureStf,CheckStf=@CheckStf,InTm=@InTm,SureTm=@SureTm,CheckTm=@CheckTm,Kind=@Kind,IsWas=@IsWas,StoreKind=@StoreKind,Dspt=@Dspt 
					WHERE Id=@Id";
                updateCommand = new SqlCommand(sql, Acn);
                SqlParameterCollection sqlParameters = updateCommand.Parameters;
                #region 添加参数
                sqlParameters.Add(new SqlParameter("@Id", SqlDbType.Int, 0, ShBillData.ID_FIELD));
                sqlParameters.Add(new SqlParameter("@BillNo", SqlDbType.NVarChar, 50, ShBillData.BILLNO_FIELD));
                sqlParameters.Add(new SqlParameter("@InCorp", SqlDbType.Int, 0, ShBillData.INCORP_FIELD));
                sqlParameters.Add(new SqlParameter("@IsSure", SqlDbType.Int, 0, ShBillData.ISSURE_FIELD));
                sqlParameters.Add(new SqlParameter("@IsCheck", SqlDbType.Int, 0, ShBillData.ISCHECK_FIELD));
                sqlParameters.Add(new SqlParameter("@InStf", SqlDbType.Int, 0, ShBillData.INSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@SureStf", SqlDbType.Int, 0, ShBillData.SURESTF_FIELD));
                sqlParameters.Add(new SqlParameter("@CheckStf", SqlDbType.Int, 0, ShBillData.CHECKSTF_FIELD));
                sqlParameters.Add(new SqlParameter("@InTm", SqlDbType.DateTime, 0, ShBillData.INTM_FIELD));
                sqlParameters.Add(new SqlParameter("@SureTm", SqlDbType.DateTime, 0, ShBillData.SURETM_FIELD));
                sqlParameters.Add(new SqlParameter("@CheckTm", SqlDbType.DateTime, 0, ShBillData.CHECKTM_FIELD));
                sqlParameters.Add(new SqlParameter("@Kind", SqlDbType.Int, 0, ShBillData.KIND_FIELD));
                sqlParameters.Add(new SqlParameter("@IsWas", SqlDbType.Int, 0, ShBillData.ISWAS_FIELD));
                sqlParameters.Add(new SqlParameter("@StoreKind", SqlDbType.Int, 0, ShBillData.STOREKIND_FIELD));
                sqlParameters.Add(new SqlParameter("@Dspt", SqlDbType.NVarChar, 2000, ShBillData.DSPT_FIELD));
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
        public bool InsertData(ShBillData shbill)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.InsertCommand = GetInsertCommand();

            try
            {
                dsCommand.Update(shbill, ShBillData.SHBILL_TABLE);
            }
            //处理操作异常
            catch (Exception e)
            {
                throw e;
            }
            if (shbill.HasErrors)
            {
                shbill.Tables[ShBillData.SHBILL_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shbill.AcceptChanges();
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
        public bool UpdateData(ShBillData shbill)
        {
            if (dsCommand == null)
            {
                throw new System.ObjectDisposedException(GetType().FullName);
            }

            dsCommand.UpdateCommand = GetUpdateCommand();

            try
            {
                dsCommand.Update(shbill, ShBillData.SHBILL_TABLE);
            }
            catch (Exception e)
            {
                throw e;
            }

            if (shbill.HasErrors)
            {
                shbill.Tables[ShBillData.SHBILL_TABLE].GetErrors()[0].ClearErrors();
                return false;
            }
            else
            {
                shbill.AcceptChanges();
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
            string strSQL = @"DELETE ShBill 
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
