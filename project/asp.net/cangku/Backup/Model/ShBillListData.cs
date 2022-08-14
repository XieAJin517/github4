
//////////////////////////////////////////////////////////////////////////
// 文件名:ShBillListData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShBillList 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShBillList 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShBillListData : DataSet
    {
        /// <summary>数据表 ShBillList</summary>
        public const String SHBILLLIST_TABLE = "ShBillList";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (billid 类型:Int32)</summary>
        public const String BILLID_FIELD = "billid";
        /// <summary> (proid 类型:Int32)</summary>
        public const String PROID_FIELD = "proid";
        /// <summary> (proprice 类型:Currency)</summary>
        public const String PROPRICE_FIELD = "proprice";
        /// <summary> (innums 类型:Int32)</summary>
        public const String INNUMS_FIELD = "innums";
        /// <summary> (mainbarcode 类型:String 长度:100)</summary>
        public const String MAINBARCODE_FIELD = "mainbarcode";
        /// <summary> (subbarcode 类型:String 长度:100)</summary>
        public const String SUBBARCODE_FIELD = "subbarcode";
        /// <summary> (addtime 类型:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (kind 类型:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (flag 类型:Int32)</summary>
        public const String FLAG_FIELD = "flag";
        /// <summary> (dspt 类型:String 长度:1000)</summary>
        public const String DSPT_FIELD = "dspt";

        /// <summary> (proname 类型:String )</summary>
        public const String PRONAME_FIELD = "proname";

        private ShBillListData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShBillListData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
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


