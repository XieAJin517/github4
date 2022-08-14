
//////////////////////////////////////////////////////////////////////////
// 文件名:ShUserData.cs
// 创建人:Pconcool
// 创建日期: 2007-10-20
// 描述:
//		ShUser 数据集

// 修改日志:		
//	
// 版权:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShUser 数据集</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShUserData : DataSet
    {
        /// <summary>数据表 ShUser</summary>
        public const String SHUSER_TABLE = "ShUser";

        /// <summary> (id 类型:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (userid 类型:String 长度:50)</summary>
        public const String USERID_FIELD = "userid";
        /// <summary> (passwd 类型:String 长度:50)</summary>
        public const String PASSWD_FIELD = "passwd";
        /// <summary> (usename 类型:String 长度:50)</summary>
        public const String USENAME_FIELD = "usename";
        /// <summary> (dept 类型:Int32)</summary>
        public const String DEPT_FIELD = "dept";
        /// <summary> (tel 类型:String 长度:50)</summary>
        public const String TEL_FIELD = "tel";
        /// <summary> (iswas 类型:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (DeptName 类型:String 长度:50)</summary>
        public const String DEPTNAME_FIELD = "DeptName";
        private ShUserData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public ShUserData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// 生成数据表
        /// </summary>
        private void BuildDataTables()
        {
            DataTable table = new DataTable(SHUSER_TABLE);
            DataColumnCollection columns = table.Columns;

            columns.Add(ID_FIELD, typeof(System.Int32));
            columns.Add(USERID_FIELD, typeof(System.String));
            columns.Add(PASSWD_FIELD, typeof(System.String));
            columns.Add(USENAME_FIELD, typeof(System.String));
            columns.Add(DEPT_FIELD, typeof(System.Int32));
            columns.Add(TEL_FIELD, typeof(System.String));
            columns.Add(ISWAS_FIELD, typeof(System.Int32));
            columns.Add(DEPTNAME_FIELD, typeof(System.String));

            this.Tables.Add(table);
        }

    }

}


