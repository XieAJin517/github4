
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShBillData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShBill ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShBill ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShBillData : DataSet
    {
        /// <summary>���ݱ� ShBill</summary>
        public const String SHBILL_TABLE = "ShBill";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (billno ����:String ����:50)</summary>
        public const String BILLNO_FIELD = "billno";
        /// <summary> (incorp ����:Int32)</summary>
        public const String INCORP_FIELD = "incorp";
        /// <summary> (issure ����:Int32)</summary>
        public const String ISSURE_FIELD = "issure";
        /// <summary> (ischeck ����:Int32)</summary>
        public const String ISCHECK_FIELD = "ischeck";
        /// <summary> (instf ����:Int32)</summary>
        public const String INSTF_FIELD = "instf";
        /// <summary> (surestf ����:Int32)</summary>
        public const String SURESTF_FIELD = "surestf";
        /// <summary> (checkstf ����:Int32)</summary>
        public const String CHECKSTF_FIELD = "checkstf";
        /// <summary> (intm ����:DateTime)</summary>
        public const String INTM_FIELD = "intm";
        /// <summary> (suretm ����:DateTime)</summary>
        public const String SURETM_FIELD = "suretm";
        /// <summary> (checktm ����:DateTime)</summary>
        public const String CHECKTM_FIELD = "checktm";
        /// <summary> (kind ����:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (storekind ����:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";
        /// <summary> (dspt ����:String ����:2000)</summary>
        public const String DSPT_FIELD = "dspt";


        /// <summary> (corpname ����:String ����:100)</summary>
        public const String CORPNAME_FIELD = "corpname";
        /// <summary> (linkman ����:String ����:50)</summary>
        public const String LINKMAN_FIELD = "linkman";
        /// <summary> (telephone ����:String ����:100)</summary>
        public const String TELEPHONE_FIELD = "telephone";
        /// <summary> (fax ����:String ����:50)</summary>
        public const String FAX_FIELD = "fax";
        /// <summary> (handset ����:String ����:100)</summary>
        public const String HANDSET_FIELD = "handset";
        /// <summary> (corpadd ����:String ����:300)</summary>
        public const String CORPADD_FIELD = "corpadd";

        /// <summary> (InStfNm ����:String ����:300)</summary>
        public const String INSTFNM_FIELD = "InStfNm";
        /// <summary> (SureStfNm ����:String ����:300)</summary>
        public const String SURESTFNM_FIELD = "SureStfNm";
        /// <summary> (CheckStfNm ����:String ����:300)</summary>
        public const String CHECKSTFNM_FIELD = "CheckStfNm";
        /// <summary> (BillListCount ����:Int ����:300)</summary>
        public const String BILLLISTCOUNT_FIELD = "BillListCount";
        /// <summary> (BillCount ����:Int ����:300)</summary>
        public const String BILLCOUNT_FIELD = "BillCount";

        private ShBillData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShBillData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHBILL_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(BILLNO_FIELD, typeof(System.String));
            columns.Add(INCORP_FIELD, typeof(System.Int32));
            columns.Add(ISSURE_FIELD, typeof(System.Int32));
            columns.Add(ISCHECK_FIELD, typeof(System.Int32));
            columns.Add(INSTF_FIELD, typeof(System.Int32));
            columns.Add(SURESTF_FIELD, typeof(System.Int32));
            columns.Add(CHECKSTF_FIELD, typeof(System.Int32));
            columns.Add(INTM_FIELD, typeof(System.DateTime));
            columns.Add(SURETM_FIELD, typeof(System.DateTime));
            columns.Add(CHECKTM_FIELD, typeof(System.DateTime));
            columns.Add(KIND_FIELD, typeof(System.Int32));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(STOREKIND_FIELD, typeof(System.Int32));
            columns.Add(DSPT_FIELD, typeof(System.String));

            this.Tables.Add(table);
        }

    }

}


