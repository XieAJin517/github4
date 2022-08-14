using System;
using System.Collections.Generic;
using System.Text;

namespace AcomLb.Enumerations
{
    public class CommonEnum
    {
    }


    /// <summary>
    /// ��������
    /// </summary>
    public enum EncodeKind
    {
        /// <summary>
        /// GB2312����
        /// </summary>
        GB2312=1,
        /// <summary>
        /// Utf8����
        /// </summary>
        Utf8=2
    }

    public enum EnDictKind
    {
        /// <summary>
        /// ��˾���
        /// </summary>
        CorpKind = 1,
        /// <summary>
        /// �����̶�
        /// </summary>
        CreditLevel=2,
        /// <summary>
        /// ��˾����
        /// </summary>
        CorpArea=3
    }


    public enum EnClassType
    {
        /// <summary>
        /// ��Ʒ�б�
        /// </summary>
        Product = 1
    }

    /// <summary>
    /// ��ⵥ����
    /// </summary>
    public enum EnBillType
    {
        /// <summary>
        /// ���
        /// </summary>
        StoreIn = 10,
        /// <summary>
        /// ����
        /// </summary>
        StoreOut = 20,
        /// <summary>
        /// �˿�
        /// </summary>
        StoreBack = 30
    }
}
