
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShBillListData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShBillList ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShBillList ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShBillListData : DataSet
    {
        /// <summary>���ݱ� ShBillList</summary>
        public const String SHBILLLIST_TABLE = "ShBillList";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (billid ����:Int32)</summary>
        public const String BILLID_FIELD = "billid";
        /// <summary> (proid ����:Int32)</summary>
        public const String PROID_FIELD = "proid";
        /// <summary> (proprice ����:Currency)</summary>
        public const String PROPRICE_FIELD = "proprice";
        /// <summary> (innums ����:Int32)</summary>
        public const String INNUMS_FIELD = "innums";
        /// <summary> (mainbarcode ����:String ����:100)</summary>
        public const String MAINBARCODE_FIELD = "mainbarcode";
        /// <summary> (subbarcode ����:String ����:100)</summary>
        public const String SUBBARCODE_FIELD = "subbarcode";
        /// <summary> (addtime ����:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (kind ����:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (flag ����:Int32)</summary>
        public const String FLAG_FIELD = "flag";
        /// <summary> (dspt ����:String ����:1000)</summary>
        public const String DSPT_FIELD = "dspt";

        /// <summary> (proname ����:String )</summary>
        public const String PRONAME_FIELD = "proname";

        private ShBillListData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShBillListData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHBILLLIST_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(BILLID_FIELD, typeof(System.Int32));
            columns.Add(PROID_FIELD, typeof(System.Int32));
            columns.Add(PROPRICE_FIELD, typeof(System.Double));
            columns.Add(INNUMS_FIELD, typeof(System.Int32));
            columns.Add(MAINBARCODE_FIELD, typeof(System.String));
            columns.Add(SUBBARCODE_FIELD, typeof(System.String));
            columns.Add(ADDTIME_FIELD, typeof(System.DateTime));
            columns.Add(KIND_FIELD, typeof(System.Int32));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(FLAG_FIELD, typeof(System.Int32));
            columns.Add(DSPT_FIELD, typeof(System.String));

            this.Tables.Add(table);
        }

    }

}


