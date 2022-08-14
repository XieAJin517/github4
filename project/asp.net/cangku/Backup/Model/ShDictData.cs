
//////////////////////////////////////////////////////////////////////////
// 文件名:ShDictData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShDict 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDict 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDictData : DataSet
    {
        /// <summary>数据表 ShDict</summary>
        public const String SHDICT_TABLE = "ShDict";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (kind 类型:Int32)</summary>
        public const String KIND_FIELD = "kind";
        /// <summary> (wordname 类型:String 长度:200)</summary>
        public const String WORDNAME_FIELD = "wordname";
        /// <summary> (intvalue 类型:Int32)</summary>
        public const String INTVALUE_FIELD = "intvalue";
        /// <summary> (strvalue 类型:String 长度:200)</summary>
        public const String STRVALUE_FIELD = "strvalue";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";

        private ShDictData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShDictData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
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


