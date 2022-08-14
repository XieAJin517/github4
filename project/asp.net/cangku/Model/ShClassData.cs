
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShClassData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShClass ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShClass ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShClassData : DataSet
    {
        /// <summary>���ݱ� ShClass</summary>
        public const String SHCLASS_TABLE = "ShClass";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (classid ����:String ����:50)</summary>
        public const String CLASSID_FIELD = "classid";
        /// <summary> (classname ����:String ����:100)</summary>
        public const String CLASSNAME_FIELD = "classname";
        /// <summary> (classlist ����:String ����:500)</summary>
        public const String CLASSLIST_FIELD = "classlist";
        /// <summary> (classpre ����:String ����:50)</summary>
        public const String CLASSPRE_FIELD = "classpre";
        /// <summary> (classtj ����:Int32)</summary>
        public const String CLASSTJ_FIELD = "classtj";
        /// <summary> (classorder ����:Int32)</summary>
        public const String CLASSORDER_FIELD = "classorder";
        /// <summary> (classkind ����:Int32)</summary>
        public const String CLASSKIND_FIELD = "classkind";
        /// <summary> (storekind ����:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        private ShClassData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShClassData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHCLASS_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(CLASSID_FIELD, typeof(System.String));
            columns.Add(CLASSNAME_FIELD, typeof(System.String));
            columns.Add(CLASSLIST_FIELD, typeof(System.String));
            columns.Add(CLASSPRE_FIELD, typeof(System.String));
            columns.Add(CLASSTJ_FIELD, typeof(System.Int32));
            columns.Add(CLASSORDER_FIELD, typeof(System.Int32));
            columns.Add(CLASSKIND_FIELD, typeof(System.Int32));
            columns.Add(STOREKIND_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


