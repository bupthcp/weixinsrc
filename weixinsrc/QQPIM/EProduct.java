// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EProduct
{

    private EProduct(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EProduct convert(int i)
    {
        int j = 0;
_L3:
        if(j >= __values.length)
        {
            if(!$assertionsDisabled)
                throw new AssertionError();
            break MISSING_BLOCK_LABEL_50;
        }
        if(__values[j].value() != i) goto _L2; else goto _L1
_L1:
        EProduct eproduct = __values[j];
_L4:
        return eproduct;
_L2:
        j++;
          goto _L3
        eproduct = null;
          goto _L4
    }

    public static EProduct convert(String s)
    {
        int i = 0;
_L3:
        if(i >= __values.length)
        {
            if(!$assertionsDisabled)
                throw new AssertionError();
            break MISSING_BLOCK_LABEL_53;
        }
        if(!__values[i].toString().equals(s)) goto _L2; else goto _L1
_L1:
        EProduct eproduct = __values[i];
_L4:
        return eproduct;
_L2:
        i++;
          goto _L3
        eproduct = null;
          goto _L4
    }

    public final String toString()
    {
        return __T;
    }

    public final int value()
    {
        return __value;
    }

    static final boolean $assertionsDisabled = false;
    public static final EProduct EP_END = new EProduct(5, 5, "EP_END");
    public static final EProduct EP_HIPhonebook = new EProduct(4, 4, "EP_HIPhonebook");
    public static final EProduct EP_None = new EProduct(0, 0, "EP_None");
    public static final EProduct EP_Phonebook = new EProduct(2, 2, "EP_Phonebook");
    public static final EProduct EP_Pim = new EProduct(3, 3, "EP_Pim");
    public static final EProduct EP_Secure = new EProduct(1, 1, "EP_Secure");
    public static final int _EP_END = 5;
    public static final int _EP_HIPhonebook = 4;
    public static final int _EP_None = 0;
    public static final int _EP_Phonebook = 2;
    public static final int _EP_Pim = 3;
    public static final int _EP_Secure = 1;
    private static EProduct __values[] = new EProduct[6];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EProduct.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
