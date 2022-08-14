using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//��Դ��������www.51aspx.com(���������������)

namespace AcomLb.DBUtility
{
    public class SqlHelper
    {
        private readonly string SqlConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        private SqlConnection cn;		//����SQL����
        private SqlDataAdapter sda;		//����SQL����������
        private SqlDataReader sdr;		//����SQL���ݶ�ȡ��
        private SqlCommand cmd;			//����SQL�������
        private SqlParameter param;     //����SQL����
        private DataSet ds;				//�������ݼ�
        private DataView dv;			//������ͼ   

        /// <summary>
        /// ʵ�������������ַ���
        /// </summary>
        /// <returns>�������������ַ���</returns>
        public SqlConnection GetConn()
        {
            SqlConnection cn = new SqlConnection(SqlConnectionString);
            return cn;
        }
        /// <summary>
        /// �������������ַ���
        /// </summary>
        /// <returns></returns>
        public string GetConnStr()
        {
            return SqlConnectionString;
        }

        /// <summary>
        /// �����ݿ�����
        /// </summary>
        public void Open()
        {
            #region
            cn = new SqlConnection(SqlConnectionString);
            cn.Open();
            #endregion
        }

        /// <summary>
        /// �ر����ݿ�����
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
        /// ����DataSet���ݼ�
        /// </summary>
        /// <param name="strSql">SQL���</param>
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
        /// ���DataSet��
        /// </summary>
        /// <param name="ds">DataSet����</param>
        /// <param name="strSql">Sql���</param>
        /// <param name="strTableName">����</param>
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
        /// ����DataView������ͼ
        /// </summary>
        /// <param name="strSql">Sql���</param>
        public DataView GetDv(string strSql)
        {
            #region
            dv = GetDs(strSql).Tables[0].DefaultView;
            return dv;
            #endregion
        }


        /// <summary>
        /// ���DataTable����
        /// </summary>
        /// <param name="strSql">SQL���</param>
        /// <returns></returns>
        public DataTable GetTable(string strSql)
        {
            #region
            return GetDs(strSql).Tables[0];
            #endregion
        }


        /// <summary>
        /// ���SqlDataReader���� ʹ������ر�DataReader,�ر����ݿ�����
        /// </summary>
        /// <param name="strSql">sql���</param>
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
        /// ִ��Sql���
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
        /// ִ������SQL��䣬ʵ�����ݿ�����
        /// </summary>
        /// <param name="SQLString1"></param>
        /// <param name="SQLString2"></param>
        public void ExecuteSqlTran(string SQLString1, string SQLString2)
        {
            #region ִ������SQL��䣬ʵ�����ݿ�����
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
        /// ִ�ж���SQL��䣬ʵ�����ݿ�����ÿ������ԡ�;���ָ
        /// </summary>
        /// <param name="SQLStringList"></param>
        public void ExecuteSqlTran(string SQLStringList)
        {
            #region ִ�ж���SQL��䣬ʵ�����ݿ�����ÿ������ԡ�;���ָ�
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
        /// ִ��SQL�������κ�ֵ
      /// </summary>
      /// <param name="strSql"></param>
        public void RunSqlStr(string strSql)
        {
            #region ִ��SQL�������κ�ֵ
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
        /// ִ��SQL��䣬�����ص�һ�е�һ�н��
        /// </summary>
        /// <param name="strSql">SQL���</param>
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
        /// ִ�д洢����
        /// </summary>
        /// <param name="procName">�洢���̵�����</param>
        /// <returns>���ش洢���̷���ֵ</returns>
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
        /// ִ�д洢����
        /// </summary>
        /// <param name="procName">�洢��������</param>
        /// <param name="prams">�洢�����������</param>
        /// <returns>���ش洢���̷���ֵ</returns>
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
        /// ִ�д洢���̷���DataReader����
        /// </summary>
        /// <param name="procName">Sql���</param>
        /// <param name="dataReader">DataReader����</param>
        public void RunProc(string procName, SqlDataReader dataReader)
        {
            #region
            cmd = CreateCommand(procName, null);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            #endregion
        }

        /// <summary>
        /// ִ�д洢���̲������κ�ֵ
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
        /// ִ�д洢����
        /// </summary>
        /// <param name="procName">�洢���̵�����</param>
        /// <param name="prams">�洢�����������</param>
        /// <param name="dataReader">DataReader����</param>
        public void RunProc(string procName, SqlParameter[] prams, SqlDataReader dataReader)
        {
            #region
            cmd = CreateCommand(procName, prams);
            dataReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            #endregion
        }
        

        /// <summary>
        /// ִ�д洢����,���ؼ�¼����DataSet
        /// </summary>
        /// <param name="procName">�洢������</param>
        /// <param name="prams">��������</param>
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
        /// ִ�д洢����,���ؼ�¼����DataSet
        /// </summary>
        /// <param name="procName">�洢��������</param>
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
        /// ����һ��SqlCommand�����Դ���ִ�д洢����
        /// </summary>
        /// <param name="procName">�洢���̵�����</param>
        /// <param name="prams">�洢�����������</param>
        /// <returns>����SqlCommand����</returns>
        private SqlCommand CreateCommand(string procName, SqlParameter[] prams)
        {
            #region
            // ȷ�ϴ�����
            Open();
            cmd = new SqlCommand(procName, cn);
            cmd.CommandType = CommandType.StoredProcedure;

            // ���ΰѲ�������洢����
            if (prams != null)
            {
                foreach (SqlParameter parameter in prams)
                    cmd.Parameters.Add(parameter);
            }

            // ���뷵�ز���
            cmd.Parameters.Add(
                new SqlParameter("ReturnValue", SqlDbType.Int, 4,
                ParameterDirection.ReturnValue, false, 0, 0,
                string.Empty, DataRowVersion.Default, null));

            return cmd;
            #endregion
        }

        /// <summary>
        /// �����������
        /// </summary>
        /// <param name="ParamName">�洢��������</param>
        /// <param name="DbType">��������</param></param>
        /// <param name="Size">������С</param>
        /// <param name="Value">����ֵ</param>
        /// <returns>�µ� parameter ����</returns>
        public SqlParameter MakeInParam(string ParamName, SqlDbType DbType, int Size, object Value)
        {
            #region
            return MakeParam(ParamName, DbType, Size, ParameterDirection.Input, Value);

            #endregion
        }

        /// <summary>
        /// ���뷵��ֵ����
        /// </summary>
        /// <param name="ParamName">�洢��������</param>
        /// <param name="DbType">��������</param>
        /// <param name="Size">������С</param>
        /// <returns>�µ� parameter ����</returns>
        public SqlParameter MakeOutParam(string ParamName, SqlDbType DbType, int Size)
        {
            #region
            return MakeParam(ParamName, DbType, Size, ParameterDirection.Output, null);
            #endregion
        }


        /// <summary>
        /// ���ɴ洢���̲���
        /// </summary>
        /// <param name="ParamName">�洢��������</param>
        /// <param name="DbType">��������</param>
        /// <param name="Size">������С</param>
        /// <param name="Direction">��������</param>
        /// <param name="Value">����ֵ</param>
        /// <returns>�µ� parameter ����</returns>
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
