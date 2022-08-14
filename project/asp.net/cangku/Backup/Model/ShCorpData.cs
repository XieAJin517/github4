
//////////////////////////////////////////////////////////////////////////
// �ļ���:ShCorpData.cs
// ������:Pconcool
// ��������: 2007-10-20
// ����:
//		ShCorp ���ݼ�

// �޸���־:		
//	
// ��Ȩ:http://www.DotNets.cn(c)2007-2010
//////////////////////////////////////////////////////////////////////////

namespace AcomLb.Model
{
    using System;//������51aspx.com
    using System.Data;
    using System.Runtime.Serialization;

    /// <summary> ShCorp ���ݼ�</summary>
    [System.ComponentModel.DesignerCategory("Code")]
    [SerializableAttribute]
    public class ShCorpData : DataSet
    {
        /// <summary>���ݱ� ShCorp</summary>
        public const String SHCORP_TABLE = "ShCorp";

        /// <summary> (id ����:Int32)</summary>
        public const String ID_FIELD = "id";
        /// <summary> (corpname ����:String ����:100)</summary>
        public const String CORPNAME_FIELD = "corpname";
        /// <summary> (linkman ����:String ����:50)</summary>
        public const String LINKMAN_FIELD = "linkman";
        /// <summary> (telephone ����:String ����:100)</summary>
        public const String TELEPHONE_FIELD = "telephone";
        /// <summary> (postcode ����:String ����:50)</summary>
        public const String POSTCODE_FIELD = "postcode";
        /// <summary> (fax ����:String ����:50)</summary>
        public const String FAX_FIELD = "fax";
        /// <summary> (handset ����:String ����:100)</summary>
        public const String HANDSET_FIELD = "handset";
        /// <summary> (email ����:String ����:100)</summary>
        public const String EMAIL_FIELD = "email";
        /// <summary> (business ����:String ����:100)</summary>
        public const String BUSINESS_FIELD = "business";
        /// <summary> (web ����:String ����:100)</summary>
        public const String WEB_FIELD = "web";
        /// <summary> (numcode ����:String ����:50)</summary>
        public const String NUMCODE_FIELD = "numcode";
        /// <summary> (pycode ����:String ����:50)</summary>
        public const String PYCODE_FIELD = "pycode";
        /// <summary> (corpadd ����:String ����:300)</summary>
        public const String CORPADD_FIELD = "corpadd";
        /// <summary> (dspt ����:String ����:2000)</summary>
        public const String DSPT_FIELD = "dspt";
        /// <summary> (corpkind ����:Int32)</summary>
        public const String CORPKIND_FIELD = "corpkind";
        /// <summary> (creditlevel ����:Int32)</summary>
        public const String CREDITLEVEL_FIELD = "creditlevel";
        /// <summary> (corparea ����:Int32)</summary>
        public const String CORPAREA_FIELD = "corparea";
        /// <summary> (iswas ����:Int32)</summary>
        public const String ISWAS_FIELD = "iswas";
        /// <summary> (addtime ����:DateTime)</summary>
        public const String ADDTIME_FIELD = "addtime";
        /// <summary> (storekind ����:Int32)</summary>
        public const String STOREKIND_FIELD = "storekind";

        /// <summary> (web ����:String ����:100)</summary>
        public const String KINDNM_FIELD = "KindNm";
        /// <summary> (web ����:String ����:100)</summary>
        public const String LEVELNM_FIELD = "LevelNm";
        /// <summary> (web ����:String ����:100)</summary>
        public const String AREANM_FIELD = "AreaNm"; 

        private ShCorpData(SerializationInfo info, StreamingContext context)
            : base(info, context)
        {
        }

        /// <summary>
        /// ���캯��
        /// </summary>
        public ShCorpData()
        {
            BuildDataTables();
        }

        /// <summary>
        /// �������ݱ�
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


