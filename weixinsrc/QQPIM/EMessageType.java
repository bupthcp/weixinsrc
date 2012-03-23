// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EMessageType
{

    private EMessageType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EMessageType convert(int i)
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
        EMessageType emessagetype = __values[j];
_L4:
        return emessagetype;
_L2:
        j++;
          goto _L3
        emessagetype = null;
          goto _L4
    }

    public static EMessageType convert(String s)
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
        EMessageType emessagetype = __values[i];
_L4:
        return emessagetype;
_L2:
        i++;
          goto _L3
        emessagetype = null;
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
    public static final EMessageType EMT_Android_Notice_Bar = new EMessageType(8, 8, "EMT_Android_Notice_Bar");
    public static final EMessageType EMT_Android_Pop_Up = new EMessageType(6, 6, "EMT_Android_Pop_Up");
    public static final EMessageType EMT_Android_Top = new EMessageType(7, 7, "EMT_Android_Top");
    public static final EMessageType EMT_END = new EMessageType(9, 9, "EMT_END");
    public static final EMessageType EMT_None = new EMessageType(0, 0, "EMT_None");
    public static final EMessageType EMT_Notice_Bar = new EMessageType(3, 3, "EMT_Notice_Bar");
    public static final EMessageType EMT_Pop_UP = new EMessageType(1, 1, "EMT_Pop_UP");
    public static final EMessageType EMT_Symbian_Pop_Up = new EMessageType(4, 4, "EMT_Symbian_Pop_Up");
    public static final EMessageType EMT_Symbian_Top = new EMessageType(5, 5, "EMT_Symbian_Top");
    public static final EMessageType EMT_Top = new EMessageType(2, 2, "EMT_Top");
    public static final int _EMT_Android_Notice_Bar = 8;
    public static final int _EMT_Android_Pop_Up = 6;
    public static final int _EMT_Android_Top = 7;
    public static final int _EMT_END = 9;
    public static final int _EMT_None = 0;
    public static final int _EMT_Notice_Bar = 3;
    public static final int _EMT_Pop_UP = 1;
    public static final int _EMT_Symbian_Pop_Up = 4;
    public static final int _EMT_Symbian_Top = 5;
    public static final int _EMT_Top = 2;
    private static EMessageType __values[] = new EMessageType[10];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EMessageType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
