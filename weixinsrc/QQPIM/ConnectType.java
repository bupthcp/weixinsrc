// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ConnectType
{

    private ConnectType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ConnectType convert(int i)
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
        ConnectType connecttype = __values[j];
_L4:
        return connecttype;
_L2:
        j++;
          goto _L3
        connecttype = null;
          goto _L4
    }

    public static ConnectType convert(String s)
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
        ConnectType connecttype = __values[i];
_L4:
        return connecttype;
_L2:
        i++;
          goto _L3
        connecttype = null;
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
    public static final ConnectType CT_GPRS = new ConnectType(1, 1, "CT_GPRS");
    public static final ConnectType CT_NONE = new ConnectType(0, 0, "CT_NONE");
    public static final ConnectType CT_WIFI = new ConnectType(2, 2, "CT_WIFI");
    public static final int _CT_GPRS = 1;
    public static final int _CT_NONE = 0;
    public static final int _CT_WIFI = 2;
    private static ConnectType __values[] = new ConnectType[3];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ConnectType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
