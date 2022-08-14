
//////////////////////////////////////////////////////////////////////////
// 文件名:ShProductData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShProduct 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShProduct 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShProductData : DataSet
    {
        /// <summary>数据表 ShProduct</summary>
        public const String SHPRODUCT_TABLE = "ShProduct";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (numcode 类型:String 长度:50)</summary>
        public const String NUMCODE_FIELD = "numcode";
        /// <summary> (pycode 类型:String 长度:50)</summary>
        public const String PYCODE_FIELD = "pycode";
        /// <summary> (proname 类型:String 长度:50)</summary>
        public const String PRONAME_FIELD = "proname";
        /// <summary> (proclass 类型:String 长度:50)</summary>
        public const String PROCLASS_FIELD = "proclass";
        /// <summary> (proprice 类型:Int32)</summary>
        public const String PROPRICE_FIELD = "proprice";
        /// <summary> (spes 类型:String 长度:100)</summary>
        public const String SPES_FIELD = "spes";
        /// <summary> (unit 类型:String 长度:50)</summary>
        public const String UNIT_FIELD = "unit";
        /// <summary> (prodes 类型:String 长度:1073741823)</summary>
        public const String PRODES_FIELD = "prodes";
        /// <summary> (opstf 类型:Int32)</summary>
        public const String OPSTF_FIELD = "opstf";
        /// <summary> (addtime 类型:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (storekind 类型:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        /// <summary> (StfName 类型:String 长度:50)</summary>
        public const String STFNAME_FIELD = "StfName";
        /// <summary> (ClassName 类型:String 长度:50)</summary>
        public const String CLASSNAME_FIELD = "ClassName";

        private ShProductData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShProductData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
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


