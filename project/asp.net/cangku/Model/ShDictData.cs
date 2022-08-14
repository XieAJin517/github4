
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShDictData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShDict ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDict ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDictData : DataSet
    {
        /// <summary>���ݱ� ShDict</summary>
        public const String SHDICT_TABLE = "ShDict";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (kind ����:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (wordname ����:String ����:200)</summary>
        public const String WORDNAME_FIELD = "wordname";
        /// <summary> (intvalue ����:Int32)</summary>
        public const String INTVALUE_FIELD = "intvalue";
        /// <summary> (strvalue ����:String ����:200)</summary>
        public const String STRVALUE_FIELD = "strvalue";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";

        private ShDictData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShDictData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHDICT_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(KIND_FIELD, typeof(System.Int32));
            columns.Add(WORDNAME_FIELD, typeof(System.String));
            columns.Add(INTVALUE_FIELD, typeof(System.Int32));
            columns.Add(STRVALUE_FIELD, typeof(System.String));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


