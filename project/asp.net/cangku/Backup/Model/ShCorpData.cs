
//////////////////////////////////////////////////////////////////////////
// 文件名:ShCorpData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShCorp 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;//下载于51aspx.com
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShCorp 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShCorpData : DataSet
    {
        /// <summary>数据表 ShCorp</summary>
        public const String SHCORP_TABLE = "ShCorp";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (corpname 类型:String 长度:100)</summary>
        public const String CORPNAME_FIELD = "corpname";
        /// <summary> (linkman 类型:String 长度:50)</summary>
        public const String LINKMAN_FIELD = "linkman";
        /// <summary> (telephone 类型:String 长度:100)</summary>
        public const String TELEPHONE_FIELD = "telephone";
        /// <summary> (postcode 类型:String 长度:50)</summary>
        public const String POSTCODE_FIELD = "postcode";
        /// <summary> (fax 类型:String 长度:50)</summary>
        public const String FAX_FIELD = "fax";
        /// <summary> (handset 类型:String 长度:100)</summary>
        public const String HANDSET_FIELD = "handset";
        /// <summary> (email 类型:String 长度:100)</summary>
        public const String EMAIL_FIELD = "email";
        /// <summary> (business 类型:String 长度:100)</summary>
        public const String BUSINESS_FIELD = "business";
        /// <summary> (web 类型:String 长度:100)</summary>
        public const String WEB_FIELD = "web";
        /// <summary> (numcode 类型:String 长度:50)</summary>
        public const String NUMCODE_FIELD = "numcode";
        /// <summary> (pycode 类型:String 长度:50)</summary>
        public const String PYCODE_FIELD = "pycode";
        /// <summary> (corpadd 类型:String 长度:300)</summary>
        public const String CORPADD_FIELD = "corpadd";
        /// <summary> (dspt 类型:String 长度:2000)</summary>
        public const String DSPT_FIELD = "dspt";
        /// <summary> (corpkind 类型:Int32)</summary>
        public const String CORPKIND_FIELD = "corpkind";
        /// <summary> (creditlevel 类型:Int32)</summary>
        public const String CREDITLEVEL_FIELD = "creditlevel";
        /// <summary> (corparea 类型:Int32)</summary>
        public const String CORPAREA_FIELD = "corparea";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (addtime 类型:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (storekind 类型:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        /// <summary> (web 类型:String 长度:100)</summary>
        public const String KINDNM_FIELD = "KindNm";
        /// <summary> (web 类型:String 长度:100)</summary>
        public const String LEVELNM_FIELD = "LevelNm";
        /// <summary> (web 类型:String 长度:100)</summary>
        public const String AREANM_FIELD = "AreaNm"; 

        private ShCorpData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShCorpData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHCORP_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(CORPNAME_FIELD, typeof(System.String));
            columns.Add(LINKMAN_FIELD, typeof(System.String));
            columns.Add(TELEPHONE_FIELD, typeof(System.String));
            columns.Add(POSTCODE_FIELD, typeof(System.String));
            columns.Add(FAX_FIELD, typeof(System.String));
            columns.Add(HANDSET_FIELD, typeof(System.String));
            columns.Add(EMAIL_FIELD, typeof(System.String));
            columns.Add(BUSINESS_FIELD, typeof(System.String));
            columns.Add(WEB_FIELD, typeof(System.String));
            columns.Add(NUMCODE_FIELD, typeof(System.String));
            columns.Add(PYCODE_FIELD, typeof(System.String));
            columns.Add(CORPADD_FIELD, typeof(System.String));
            columns.Add(DSPT_FIELD, typeof(System.String));
            columns.Add(CORPKIND_FIELD, typeof(System.Int32));
            columns.Add(CREDITLEVEL_FIELD, typeof(System.Int32));
            columns.Add(CORPAREA_FIELD, typeof(System.Int32));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(ADDTIME_FIELD, typeof(System.DateTime));
            columns.Add(STOREKIND_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


