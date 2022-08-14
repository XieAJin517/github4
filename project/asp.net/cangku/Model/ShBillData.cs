
//////////////////////////////////////////////////////////////////////////
// 文件名:ShBillData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShBill 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShBill 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShBillData : DataSet
    {
        /// <summary>数据表 ShBill</summary>
        public const String SHBILL_TABLE = "ShBill";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (billno 类型:String 长度:50)</summary>
        public const String BILLNO_FIELD = "billno";
        /// <summary> (incorp 类型:Int32)</summary>
        public const String INCORP_FIELD = "incorp";
        /// <summary> (issure 类型:Int32)</summary>
        public const String ISSURE_FIELD = "issure";
        /// <summary> (ischeck 类型:Int32)</summary>
        public const String ISCHECK_FIELD = "ischeck";
        /// <summary> (instf 类型:Int32)</summary>
        public const String INSTF_FIELD = "instf";
        /// <summary> (surestf 类型:Int32)</summary>
        public const String SURESTF_FIELD = "surestf";
        /// <summary> (checkstf 类型:Int32)</summary>
        public const String CHECKSTF_FIELD = "checkstf";
        /// <summary> (intm 类型:DateTime)</summary>
        public const String INTM_FIELD = "intm";
        /// <summary> (suretm 类型:DateTime)</summary>
        public const String SURETM_FIELD = "suretm";
        /// <summary> (checktm 类型:DateTime)</summary>
        public const String CHECKTM_FIELD = "checktm";
        /// <summary> (kind 类型:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (storekind 类型:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";
        /// <summary> (dspt 类型:String 长度:2000)</summary>
        public const String DSPT_FIELD = "dspt";


        /// <summary> (corpname 类型:String 长度:100)</summary>
        public const String CORPNAME_FIELD = "corpname";
        /// <summary> (linkman 类型:String 长度:50)</summary>
        public const String LINKMAN_FIELD = "linkman";
        /// <summary> (telephone 类型:String 长度:100)</summary>
        public const String TELEPHONE_FIELD = "telephone";
        /// <summary> (fax 类型:String 长度:50)</summary>
        public const String FAX_FIELD = "fax";
        /// <summary> (handset 类型:String 长度:100)</summary>
        public const String HANDSET_FIELD = "handset";
        /// <summary> (corpadd 类型:String 长度:300)</summary>
        public const String CORPADD_FIELD = "corpadd";

        /// <summary> (InStfNm 类型:String 长度:300)</summary>
        public const String INSTFNM_FIELD = "InStfNm";
        /// <summary> (SureStfNm 类型:String 长度:300)</summary>
        public const String SURESTFNM_FIELD = "SureStfNm";
        /// <summary> (CheckStfNm 类型:String 长度:300)</summary>
        public const String CHECKSTFNM_FIELD = "CheckStfNm";
        /// <summary> (BillListCount 类型:Int 长度:300)</summary>
        public const String BILLLISTCOUNT_FIELD = "BillListCount";
        /// <summary> (BillCount 类型:Int 长度:300)</summary>
        public const String BILLCOUNT_FIELD = "BillCount";

        private ShBillData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShBillData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
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


