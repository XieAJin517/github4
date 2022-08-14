
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShUserData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShUser ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShUser ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShUserData : DataSet
    {
        /// <summary>���ݱ� ShUser</summary>
        public const String SHUSER_TABLE = "ShUser";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (userid ����:String ����:50)</summary>
        public const String USERID_FIELD = "userid";
        /// <summary> (passwd ����:String ����:50)</summary>
        public const String PASSWD_FIELD = "passwd";
        /// <summary> (usename ����:String ����:50)</summary>
        public const String USENAME_FIELD = "usename";
        /// <summary> (dept ����:Int32)</summary>
        public const String DEPT_FIELD = "dept";
        /// <summary> (tel ����:String ����:50)</summary>
        public const String TEL_FIELD = "tel";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (DeptName ����:String ����:50)</summary>
        public const String DEPTNAME_FIELD = "DeptName";
        private ShUserData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShUserData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHUSER_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(USERID_FIELD, typeof(System.String));
            columns.Add(PASSWD_FIELD, typeof(System.String));
            columns.Add(USENAME_FIELD, typeof(System.String));
            columns.Add(DEPT_FIELD, typeof(System.Int32));
            columns.Add(TEL_FIELD, typeof(System.String));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(DEPTNAME_FIELD, typeof(System.String));

            this.Tables.Add(table);
        }

    }

}


