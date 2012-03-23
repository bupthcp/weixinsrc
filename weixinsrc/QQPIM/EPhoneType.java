// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EPhoneType
{

    private EPhoneType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EPhoneType convert(int i)
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
        EPhoneType ephonetype = __values[j];
_L4:
        return ephonetype;
_L2:
        j++;
          goto _L3
        ephonetype = null;
          goto _L4
    }

    public static EPhoneType convert(String s)
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
        EPhoneType ephonetype = __values[i];
_L4:
        return ephonetype;
_L2:
        i++;
          goto _L3
        ephonetype = null;
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
    public static final EPhoneType MPT_Android = new EPhoneType(2, 2, "MPT_Android");
    public static final EPhoneType MPT_Iphone = new EPhoneType(3, 3, "MPT_Iphone");
    public static final EPhoneType MPT_NONE = new EPhoneType(0, 0, "MPT_NONE");
    public static final EPhoneType MPT_Symbian = new EPhoneType(1, 1, "MPT_Symbian");
    public static final int _MPT_Android = 2;
    public static final int _MPT_Iphone = 3;
    public static final int _MPT_NONE = 0;
    public static final int _MPT_Symbian = 1;
    private static EPhoneType __values[] = new EPhoneType[4];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EPhoneType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
