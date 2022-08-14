
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShDataBackData.cs
// ������:Pconcool
// ��������: 2007-10-25
// ����:
//		ShDataBack ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDataBack ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDataBackData : DataSet
    {
        /// <summary>���ݱ� ShDataBack</summary>
        public const String SHDATABACK_TABLE = "ShDataBack";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (dataname ����:String ����:50)</summary>
        public const String DATANAME_FIELD = "dataname";
        /// <summary> (backtime ����:DateTime)</summary>
        public const String BACKTIME_FIELD = "backtime";

        private ShDataBackData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShDataBackData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHDATABACK_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(DATANAME_FIELD, typeof(System.String));
            columns.Add(BACKTIME_FIELD, typeof(System.DateTime));

            this.Tables.Add(table);
        }

    }

}


