
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShDeptData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShDept ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDept ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDeptData : DataSet
    {
        /// <summary>���ݱ� ShDept</summary>
        public const String SHDEPT_TABLE = "ShDept";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (deptname ����:String ����:50)</summary>
        public const String DEPTNAME_FIELD = "deptname";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";

        private ShDeptData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShDeptData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHDEPT_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(DEPTNAME_FIELD, typeof(System.String));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


