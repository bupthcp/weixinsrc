// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EMessageTime
{

    private EMessageTime(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EMessageTime convert(int i)
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
        EMessageTime emessagetime = __values[j];
_L4:
        return emessagetime;
_L2:
        j++;
          goto _L3
        emessagetime = null;
          goto _L4
    }

    public static EMessageTime convert(String s)
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
        EMessageTime emessagetime = __values[i];
_L4:
        return emessagetime;
_L2:
        i++;
          goto _L3
        emessagetime = null;
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
    public static final EMessageTime EMTI_END = new EMessageTime(5, 5, "EMTI_END");
    public static final EMessageTime EMTI_Execute_Time_Zone = new EMessageTime(4, 4, "EMTI_Execute_Time_Zone");
    public static final EMessageTime EMTI_Get_X = new EMessageTime(3, 3, "EMTI_Get_X");
    public static final EMessageTime EMTI_Immediatly = new EMessageTime(1, 1, "EMTI_Immediatly");
    public static final EMessageTime EMTI_None = new EMessageTime(0, 0, "EMTI_None");
    public static final EMessageTime EMTI_Open = new EMessageTime(2, 2, "EMTI_Open");
    public static final int _EMTI_END = 5;
    public static final int _EMTI_Execute_Time_Zone = 4;
    public static final int _EMTI_Get_X = 3;
    public static final int _EMTI_Immediatly = 1;
    public static final int _EMTI_None = 0;
    public static final int _EMTI_Open = 2;
    private static EMessageTime __values[] = new EMessageTime[6];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EMessageTime.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
