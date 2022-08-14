
//////////////////////////////////////////////////////////////////////////
// 文件名:ShDataBackData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-25
// 描述:
//		ShDataBack 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDataBack 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDataBackData : DataSet
    {
        /// <summary>数据表 ShDataBack</summary>
        public const String SHDATABACK_TABLE = "ShDataBack";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (dataname 类型:String 长度:50)</summary>
        public const String DATANAME_FIELD = "dataname";
        /// <summary> (backtime 类型:DateTime)</summary>
        public const String BACKTIME_FIELD = "backtime";

        private ShDataBackData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShDataBackData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHDATABACK_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(DATANAME_FIELD, typeof(System.String));
            columns.Add(BACKTIME_FIELD, typeof(System.DateTime));

            this.Tables.Add(table);
        }

    }

}


