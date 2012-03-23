// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class SafeType
{

    private SafeType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static SafeType convert(int i)
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
        SafeType safetype = __values[j];
_L4:
        return safetype;
_L2:
        j++;
          goto _L3
        safetype = null;
          goto _L4
    }

    public static SafeType convert(String s)
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
        SafeType safetype = __values[i];
_L4:
        return safetype;
_L2:
        i++;
          goto _L3
        safetype = null;
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
    public static final SafeType C_RISK = new SafeType(2, 2, "C_RISK");
    public static final SafeType C_SAFE = new SafeType(1, 1, "C_SAFE");
    public static final SafeType C_UNKNOWN = new SafeType(0, 0, "C_UNKNOWN");
    public static final SafeType C_VIRUS = new SafeType(3, 3, "C_VIRUS");
    public static final int _C_RISK = 2;
    public static final int _C_SAFE = 1;
    public static final int _C_UNKNOWN = 0;
    public static final int _C_VIRUS = 3;
    private static SafeType __values[] = new SafeType[4];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/SafeType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
