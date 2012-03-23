// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EAutoStartOption
{

    private EAutoStartOption(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EAutoStartOption convert(int i)
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
        EAutoStartOption eautostartoption = __values[j];
_L4:
        return eautostartoption;
_L2:
        j++;
          goto _L3
        eautostartoption = null;
          goto _L4
    }

    public static EAutoStartOption convert(String s)
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
        EAutoStartOption eautostartoption = __values[i];
_L4:
        return eautostartoption;
_L2:
        i++;
          goto _L3
        eautostartoption = null;
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
    public static final EAutoStartOption EASO_Forbid = new EAutoStartOption(2, 2, "EASO_Forbid");
    public static final EAutoStartOption EASO_NONE = new EAutoStartOption(0, 0, "EASO_NONE");
    public static final EAutoStartOption EASO_OK = new EAutoStartOption(1, 1, "EASO_OK");
    public static final int _EASO_Forbid = 2;
    public static final int _EASO_NONE = 0;
    public static final int _EASO_OK = 1;
    private static EAutoStartOption __values[] = new EAutoStartOption[3];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EAutoStartOption.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
