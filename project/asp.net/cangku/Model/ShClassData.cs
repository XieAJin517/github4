
//////////////////////////////////////////////////////////////////////////
// 文件名:ShClassData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShClass 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShClass 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShClassData : DataSet
    {
        /// <summary>数据表 ShClass</summary>
        public const String SHCLASS_TABLE = "ShClass";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (classid 类型:String 长度:50)</summary>
        public const String CLASSID_FIELD = "classid";
        /// <summary> (classname 类型:String 长度:100)</summary>
        public const String CLASSNAME_FIELD = "classname";
        /// <summary> (classlist 类型:String 长度:500)</summary>
        public const String CLASSLIST_FIELD = "classlist";
        /// <summary> (classpre 类型:String 长度:50)</summary>
        public const String CLASSPRE_FIELD = "classpre";
        /// <summary> (classtj 类型:Int32)</summary>
        public const String CLASSTJ_FIELD = "classtj";
        /// <summary> (classorder 类型:Int32)</summary>
        public const String CLASSORDER_FIELD = "classorder";
        /// <summary> (classkind 类型:Int32)</summary>
        public const String CLASSKIND_FIELD = "classkind";
        /// <summary> (storekind 类型:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        private ShClassData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShClassData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
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


