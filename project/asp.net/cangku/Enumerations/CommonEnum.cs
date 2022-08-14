using System;
using System.Collections.Generic;
using System.Text;

namespace AcomLb.Enumerations
{
    public class CommonEnum
    {
    }


    /// <summary>
    /// 编码类型
    /// </summary>
    public enum EncodeKind
    {
        /// <summary>
        /// GB2312编码
        /// </summary>
        GB2312=1,
        /// <summary>
        /// Utf8编码
        /// </summary>
        Utf8=2
    }

    public enum EnDictKind
    {
        /// <summary>
        /// 公司类别
        /// </summary>
        CorpKind = 1,
        /// <summary>
        /// 信誉程度
        /// </summary>
        CreditLevel=2,
        /// <summary>
        /// 公司区域
        /// </summary>
        CorpArea=3
    }


    public enum EnClassType
    {
        /// <summary>
        /// 产品列表
        /// </summary>
        Product = 1
    }

    /// <summary>
    /// 入库单类型
    /// </summary>
    public enum EnBillType
    {
        /// <summary>
        /// 入库
        /// </summary>
        StoreIn = 10,
        /// <summary>
        /// 出库
        /// </summary>
        StoreOut = 20,
        /// <summary>
        /// 退库
        /// </summary>
        StoreBack = 30
    }
}
