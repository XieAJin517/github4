
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShProductData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShProduct ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShProduct ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShProductData : DataSet
    {
        /// <summary>���ݱ� ShProduct</summary>
        public const String SHPRODUCT_TABLE = "ShProduct";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (numcode ����:String ����:50)</summary>
        public const String NUMCODE_FIELD = "numcode";
        /// <summary> (pycode ����:String ����:50)</summary>
        public const String PYCODE_FIELD = "pycode";
        /// <summary> (proname ����:String ����:50)</summary>
        public const String PRONAME_FIELD = "proname";
        /// <summary> (proclass ����:String ����:50)</summary>
        public const String PROCLASS_FIELD = "proclass";
        /// <summary> (proprice ����:Int32)</summary>
        public const String PROPRICE_FIELD = "proprice";
        /// <summary> (spes ����:String ����:100)</summary>
        public const String SPES_FIELD = "spes";
        /// <summary> (unit ����:String ����:50)</summary>
        public const String UNIT_FIELD = "unit";
        /// <summary> (prodes ����:String ����:1073741823)</summary>
        public const String PRODES_FIELD = "prodes";
        /// <summary> (opstf ����:Int32)</summary>
        public const String OPSTF_FIELD = "opstf";
        /// <summary> (addtime ����:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (storekind ����:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        /// <summary> (StfName ����:String ����:50)</summary>
        public const String STFNAME_FIELD = "StfName";
        /// <summary> (ClassName ����:String ����:50)</summary>
        public const String CLASSNAME_FIELD = "ClassName";

        private ShProductData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShProductData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHPRODUCT_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(NUMCODE_FIELD, typeof(System.String));
            columns.Add(PYCODE_FIELD, typeof(System.String));
            columns.Add(PRONAME_FIELD, typeof(System.String));
            columns.Add(PROCLASS_FIELD, typeof(System.String));
            columns.Add(PROPRICE_FIELD, typeof(System.Int32));
            columns.Add(SPES_FIELD, typeof(System.String));
            columns.Add(UNIT_FIELD, typeof(System.String));
            columns.Add(PRODES_FIELD, typeof(System.String));
            columns.Add(OPSTF_FIELD, typeof(System.Int32));
            columns.Add(ADDTIME_FIELD, typeof(System.DateTime));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(STOREKIND_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


