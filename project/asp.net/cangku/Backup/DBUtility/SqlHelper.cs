using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//该源码下载自www.51aspx.com(５１ａｓｐｘ．ｃｏｍ)

namespace AcomLb.DBUtility
{
    public class SqlHelper
    {
        private readonly string SqlConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        private SqlConnection cn;		//创建SQL连接
        private SqlDataAdapter sda;		//创建SQL数据适配器
        private SqlDataReader sdr;		//创建SQL数据读取器
        private SqlCommand cmd;			//创建SQL命令对象
        private SqlParameter param;     //创建SQL参数
        private DataSet ds;				//创建数据集
        private DataView dv;			//创建视图   

        /// <summary>
        /// 实例化数据连接字符串
        /// </summary>
        /// <returns>返回数据连接字符串</returns>
        public SqlConnection GetConn()
        {
            SqlConnection cn = new SqlConnection(SqlConnectionString);
            return cn;
        }
        /// <summary>
        /// 返回数据连接字符串
        /// </summary>
        /// <returns></returns>
        public string GetConnStr()
        {
            return SqlConnectionString;
        }

        /// <summary>
        /// 打开数据库连接
        /// </summary>
        public void Open()
        {
            #region
            cn = new SqlConnection(SqlConnectionString);
            cn.Open();
            #endregion
        }

        /// <summary>
        /// 关闭数据库连接
        /// </summary>
        public void Close()
        {
            #region
            if (cn != null)
            {
                cn.Close();
                cn.Dispose();
            }
            #endregion
        }

        /// <summary>
        /// 返回DataSet数据集
        /// </summary>
        /// <param name="strSql">SQL语句</param>
        public DataSet GetDs(string strSql)
        {
            #region
            Open();
            sda = new SqlDataAdapter(strSql, cn);
            ds = new DataSet();
            sda.Fill(ds);
            Close();
            return ds;
            #endregion
        }
        
        public DataSet GetDs(string strSql,string TableName)
        {
            #region
            Open();
            sda = new SqlDataAdapter(strSql, cn);
            DataSet Ds = new DataSet();
            sda.Fill(Ds, TableName);
            Close();
            return Ds;
            #endregion
        }

        /// <summary>
        /// 添加DataSet表
        /// </summary>
        /// <param name="ds">DataSet对象</param>
        /// <param name="strSql">Sql语句</param>
        /// <param name="strTableName">表名</param>
        public void GetDs(DataSet ds, string strSql, string strTableName)
        {
            #region
            Open();
            sda = new SqlDataAdapter(strSql, cn);
            sda.Fill(ds, strTableName);
            Close();
            #endregion
        }


        /// <summary>
        /// 返回DataView数据视图
        /// </summary>
        /// <param name="strSql">Sql语句</param>
        public DataView GetDv(string strSql)
        {
            #region
            dv = GetDs(strSql).Tables[0].DefaultView;
            return dv;
            #endregion
        }


        /// <summary>
        /// 获得DataTable对象
        /// </summary>
        /// <param name="strSql">SQL语句</param>
        /// <returns></returns>
        public DataTable GetTable(string strSql)
        {
            #region
            return GetDs(strSql).Tables[0];
            #endregion
        }


        /// <summary>
        /// 获得SqlDataReader对象 使用完须关闭DataReader,关闭数据库连接
        /// </summary>
        /// <param name="strSql">sql语句</param>
        /// <returns></returns>
        public SqlDataReader GetDataReader(string strSql)
        {
            #region
            Open();
            cmd = new SqlCommand(strSql, cn);
            sdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return sdr;
            #endregion
        }


        /// <summary>
        /// 执行Sql语句
        /// </summary>
        /// <param name="strSql"></param>
        public bool RunSql(string strSql)
        {
            #region

            try
            {
                Open();
                cmd = new SqlCommand(strSql, cn);
                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
            finally
            {
              Close();
            }
            
            #endregion
        }

        
        /// <summary>
        /// 执行两条SQL语句，实现数据库事务。
        /// </summary>
        /// <param name="SQLString1"></param>
        /// <param name="SQLString2"></param>
        public void ExecuteSqlTran(string SQLString1, string SQLString2)
        {
            #region 执行两条SQL语句，实现数据库事务
            using (SqlConnection connection = GetConn() )
            {
                connection.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                SqlTransaction tx = connection.BeginTransaction();
                cmd.Transaction = tx;
                try
                {
                    cmd.CommandText = SQLString1;
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = SQLString2;
                    cmd.ExecuteNonQuery();
                    tx.Commit();
                }
                catch (System.Data.SqlClient.SqlException E)
                {
                    tx.Rollback();
                    throw new Exception(E.Message);
                }
                finally
                {
                    cmd.Dispose();
                    connection.Close();
                }
            }
            #endregion
        }

        /// <summary>
        /// 执行多条SQL语句，实现数据库事务，每条语句以“;”分割。
        /// </summary>
        /// <param name="SQLStringList"></param>
        public void ExecuteSqlTran(string SQLStringList)
        {
            #region 执行多条SQL语句，实现数据库事务，每条语句以“;”分割
            using (SqlConnection conn = GetConn())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = conn;
                SqlTransaction tx = conn.BeginTransaction();
                cmd.Transaction = tx;
                try
                {
                    string[] split = SQLStringList.Split(new Char[] { ';' });
                    foreach (string strsql in split)
                    {
                        if (strsql.Trim() != "")
                        {
                            cmd.CommandText = strsql;
                            cmd.ExecuteNonQuery();
                        }
                    }
                    tx.Commit();
                }
                catch (SqlException E)
                {
                    tx.Rollback();
                    throw new Exception(E.Message);
                }
            } 
            #endregion
        }

      /// <summary>
        /// 执行SQL不返回任何值
      /// </summary>
      /// <param name="strSql"></param>
        public void RunSqlStr(string strSql)
        {
            #region 执行SQL不返回任何值
            try
            {
                Open();
                cmd = new SqlCommand(strSql, cn);
                cmd.ExecuteNonQuery();
            }
            catch
            {
                throw;
            }
            finally
            {
                Close();
            }
            #endregion
        } 
      

        /// <summary>
        /// 执行SQL语句，并返回第一行第一列结果
        /// </summary>
        /// <param name="strSql">SQL语句</param>
        /// <returns></returns>
        public string RunSqlReturn(string strSql)
        {
            #region
            string strReturn = "";
            Open();
            try
            {
                cmd = new SqlCommand(strSql, cn);
                strReturn = cmd.ExecuteScalar().ToString();
            }
            catch
            { }
            Close();
            return strReturn;
            #endregion
        }


        /// <summary>
        /// 执行存储过程
        /// </summary>
        /// <param name="procName">存储过程的名称</param>
        /// <returns>返回存储过程返回值</returns>
        public int RunProc(string procName)
        {
            #region
            cmd = CreateCommand(procName, null);
            cmd.ExecuteNonQuery();
            Close();
            return (int)cmd.Parameters["ReturnValue"].Value;
            #endregion
        }

        /// <summary>
        /// 执行存储过程
        /// </summary>
        /// <param name="procName">存储过程名称</param>
        /// <param name="prams">存储过程所需参数</param>
        /// <returns>返回存储过程返回值</returns>
        public int RunProc(string procName, SqlParameter[] prams)
        {
            #region
            cmd = CreateCommand(procName, prams);
            cmd.ExecuteNonQuery();
            Close();
            return (int)cmd.Parameters["ReturnValue"].Value;
            #endregion
        }

        /// <summary>
        /// 执行存储过程返回DataReader对象
        /// </summary>
        /// <param name="procName">Sql语句</param>
        /// <param name="dataReader">DataReader对象</param>
        public void RunProc(string procName, SqlDataReader dataReader)
        {
            #region
            cmd = CreateCommand(procName, null);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            #endregion
        }

        /// <summary>
        /// 执行存储过程不返回任何值
        /// </summary>
        /// <param name="procName"></param>
        public void RunProcNoRe(string procName)
        {
            Open();
            cmd = new SqlCommand(procName, cn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            Close();
        }

        /// <summary>
        /// 执行存储过程
        /// </summary>
        /// <param name="procName">存储过程的名称</param>
        /// <param name="prams">存储过程所需参数</param>
        /// <param name="dataReader">DataReader对象</param>
        public void RunProc(string procName, SqlParameter[] prams, SqlDataReader dataReader)
        {
            #region
            cmd = CreateCommand(procName, prams);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            #endregion
        }
        

        /// <summary>
        /// 执行存储过程,返回记录集于DataSet
        /// </summary>
        /// <param name="procName">存储过程名</param>
        /// <param name="prams">参数数组</param>
        /// <returns></returns>
        public DataSet RunProcGetDs(string procName, SqlParameter[] prams)
        {
            #region
            cmd = CreateCommand(procName, prams);
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            Close();
            return ds;
            #endregion
        }

        /// <summary>
        /// 执行存储过程,返回记录集于DataSet
        /// </summary>
        /// <param name="procName">存储过程名称</param>
        /// <returns></returns>
        public DataSet RunProcGetDs(string procName)
        {
            #region
            Open();
            cmd = new SqlCommand(procName, cn);
            cmd.CommandType = CommandType.StoredProcedure;
            sda = new SqlDataAdapter(cmd);
            ds = new DataSet();
            sda.Fill(ds);
            Close();
            return ds;
            #endregion
        }

        /// <summary>
        /// 创建一个SqlCommand对象以此来执行存储过程
        /// </summary>
        /// <param name="procName">存储过程的名称</param>
        /// <param name="prams">存储过程所需参数</param>
        /// <returns>返回SqlCommand对象</returns>
        private SqlCommand CreateCommand(string procName, SqlParameter[] prams)
        {
            #region
            // 确认打开连接
            Open();
            cmd = new SqlCommand(procName, cn);
            cmd.CommandType = CommandType.StoredProcedure;

            // 依次把参数传入存储过程
            if (prams != null)
            {
                foreach (SqlParameter parameter in prams)
                    cmd.Parameters.Add(parameter);
            }

            // 加入返回参数
            cmd.Parameters.Add(
                new SqlParameter("ReturnValue", SqlDbType.Int, 4,
                ParameterDirection.ReturnValue, false, 0, 0,
                string.Empty, DataRowVersion.Default, null));

            return cmd;
            #endregion
        }

        /// <summary>
        /// 传入输入参数
        /// </summary>
        /// <param name="ParamName">存储过程名称</param>
        /// <param name="DbType">参数类型</param></param>
        /// <param name="Size">参数大小</param>
        /// <param name="Value">参数值</param>
        /// <returns>新的 parameter 对象</returns>
        public SqlParameter MakeInParam(string ParamName, SqlDbType DbType, int Size, object Value)
        {
            #region
            return MakeParam(ParamName, DbType, Size, ParameterDirection.Input, Value);

            #endregion
        }

        /// <summary>
        /// 传入返回值参数
        /// </summary>
        /// <param name="ParamName">存储过程名称</param>
        /// <param name="DbType">参数类型</param>
        /// <param name="Size">参数大小</param>
        /// <returns>新的 parameter 对象</returns>
        public SqlParameter MakeOutParam(string ParamName, SqlDbType DbType, int Size)
        {
            #region
            return MakeParam(ParamName, DbType, Size, ParameterDirection.Output, null);
            #endregion
        }


        /// <summary>
        /// 生成存储过程参数
        /// </summary>
        /// <param name="ParamName">存储过程名称</param>
        /// <param name="DbType">参数类型</param>
        /// <param name="Size">参数大小</param>
        /// <param name="Direction">参数方向</param>
        /// <param name="Value">参数值</param>
        /// <returns>新的 parameter 对象</returns>
        public SqlParameter MakeParam(string ParamName, SqlDbType DbType, Int32 Size, ParameterDirection Direction, object Value)
        {
            #region

            if (Size > 0)
                param = new SqlParameter(ParamName, DbType, Size);
            else
                param = new SqlParameter(ParamName, DbType);

            param.Direction = Direction;
            if (!(Direction == ParameterDirection.Output && Value == null))
                param.Value = Value;

            return param;
            #endregion
        }
    }
}
