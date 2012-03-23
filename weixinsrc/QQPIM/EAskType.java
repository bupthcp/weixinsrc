// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EAskType
{

    private EAskType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EAskType convert(int i)
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
        EAskType easktype = __values[j];
_L4:
        return easktype;
_L2:
        j++;
          goto _L3
        easktype = null;
          goto _L4
    }

    public static EAskType convert(String s)
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
        EAskType easktype = __values[i];
_L4:
        return easktype;
_L2:
        i++;
          goto _L3
        easktype = null;
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
    public static final EAskType EAT_END = new EAskType(3, 3, "EAT_END");
    public static final EAskType EAT_None = new EAskType(0, 0, "EAT_None");
    public static final EAskType EAT_OK_Cancel = new EAskType(2, 2, "EAT_OK_Cancel");
    public static final EAskType EAT_Only_OK = new EAskType(1, 1, "EAT_Only_OK");
    public static final int _EAT_END = 3;
    public static final int _EAT_None = 0;
    public static final int _EAT_OK_Cancel = 2;
    public static final int _EAT_Only_OK = 1;
    private static EAskType __values[] = new EAskType[4];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EAskType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
