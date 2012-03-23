// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EIllegaReason
{

    private EIllegaReason(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EIllegaReason convert(int i)
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
        EIllegaReason eillegareason = __values[j];
_L4:
        return eillegareason;
_L2:
        j++;
          goto _L3
        eillegareason = null;
          goto _L4
    }

    public static EIllegaReason convert(String s)
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
        EIllegaReason eillegareason = __values[i];
_L4:
        return eillegareason;
_L2:
        i++;
          goto _L3
        eillegareason = null;
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
    public static final EIllegaReason IR_Ad = new EIllegaReason(6, 6, "IR_Ad");
    public static final EIllegaReason IR_Conn = new EIllegaReason(2, 2, "IR_Conn");
    public static final EIllegaReason IR_Damage = new EIllegaReason(8, 8, "IR_Damage");
    public static final EIllegaReason IR_GetInfo = new EIllegaReason(4, 4, "IR_GetInfo");
    public static final EIllegaReason IR_Other = new EIllegaReason(0, 0, "IR_Other");
    public static final EIllegaReason IR_Pay = new EIllegaReason(1, 1, "IR_Pay");
    public static final EIllegaReason IR_Plugin = new EIllegaReason(5, 5, "IR_Plugin");
    public static final EIllegaReason IR_SMS = new EIllegaReason(3, 3, "IR_SMS");
    public static final EIllegaReason IR_TermProc = new EIllegaReason(7, 7, "IR_TermProc");
    public static final int _IR_Ad = 6;
    public static final int _IR_Conn = 2;
    public static final int _IR_Damage = 8;
    public static final int _IR_GetInfo = 4;
    public static final int _IR_Other = 0;
    public static final int _IR_Pay = 1;
    public static final int _IR_Plugin = 5;
    public static final int _IR_SMS = 3;
    public static final int _IR_TermProc = 7;
    private static EIllegaReason __values[] = new EIllegaReason[9];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EIllegaReason.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
