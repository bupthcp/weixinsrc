// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ETimeType
{

    private ETimeType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ETimeType convert(int i)
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
        ETimeType etimetype = __values[j];
_L4:
        return etimetype;
_L2:
        j++;
          goto _L3
        etimetype = null;
          goto _L4
    }

    public static ETimeType convert(String s)
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
        ETimeType etimetype = __values[i];
_L4:
        return etimetype;
_L2:
        i++;
          goto _L3
        etimetype = null;
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
    public static final ETimeType ETT_Total = new ETimeType(0, 1, "ETT_Total");
    public static final ETimeType ETT_Week = new ETimeType(1, 2, "ETT_Week");
    public static final int _ETT_Total = 1;
    public static final int _ETT_Week = 2;
    private static ETimeType __values[] = new ETimeType[2];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ETimeType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
