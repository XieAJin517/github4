
//////////////////////////////////////////////////////////////////////////
// 文件名:ShDeptData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShDept 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShDept 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShDeptData : DataSet
    {
        /// <summary>数据表 ShDept</summary>
        public const String SHDEPT_TABLE = "ShDept";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (deptname 类型:String 长度:50)</summary>
        public const String DEPTNAME_FIELD = "deptname";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";

        private ShDeptData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShDeptData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHDEPT_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(DEPTNAME_FIELD, typeof(System.String));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));

            this.Tables.Add(table);
        }

    }

}


