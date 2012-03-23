// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EActionID
{

    private EActionID(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EActionID convert(int i)
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
        EActionID eactionid = __values[j];
_L4:
        return eactionid;
_L2:
        j++;
          goto _L3
        eactionid = null;
          goto _L4
    }

    public static EActionID convert(String s)
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
        EActionID eactionid = __values[i];
_L4:
        return eactionid;
_L2:
        i++;
          goto _L3
        eactionid = null;
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
    public static final EActionID EAID_Cloud_Cmd = new EActionID(10, 30, "EAID_Cloud_Cmd");
    public static final EActionID EAID_Cloud_Info = new EActionID(6, 19, "EAID_Cloud_Info");
    public static final EActionID EAID_Config_No_Note_Update = new EActionID(5, 11, "EAID_Config_No_Note_Update");
    public static final EActionID EAID_Config_Update = new EActionID(4, 10, "EAID_Config_Update");
    public static final EActionID EAID_END = new EActionID(11, 31, "EAID_END");
    public static final EActionID EAID_None = new EActionID(0, 0, "EAID_None");
    public static final EActionID EAID_Show_Promote = new EActionID(8, 21, "EAID_Show_Promote");
    public static final EActionID EAID_Show_SecureWarn = new EActionID(9, 22, "EAID_Show_SecureWarn");
    public static final EActionID EAID_Show_Tips = new EActionID(7, 20, "EAID_Show_Tips");
    public static final EActionID EAID_Soft_Force_Update = new EActionID(2, 3, "EAID_Soft_Force_Update");
    public static final EActionID EAID_Soft_No_Note_Update = new EActionID(3, 4, "EAID_Soft_No_Note_Update");
    public static final EActionID EAID_Soft_Update = new EActionID(1, 2, "EAID_Soft_Update");
    public static final int _EAID_Cloud_Cmd = 30;
    public static final int _EAID_Cloud_Info = 19;
    public static final int _EAID_Config_No_Note_Update = 11;
    public static final int _EAID_Config_Update = 10;
    public static final int _EAID_END = 31;
    public static final int _EAID_None = 0;
    public static final int _EAID_Show_Promote = 21;
    public static final int _EAID_Show_SecureWarn = 22;
    public static final int _EAID_Show_Tips = 20;
    public static final int _EAID_Soft_Force_Update = 3;
    public static final int _EAID_Soft_No_Note_Update = 4;
    public static final int _EAID_Soft_Update = 2;
    private static EActionID __values[] = new EActionID[12];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EActionID.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
