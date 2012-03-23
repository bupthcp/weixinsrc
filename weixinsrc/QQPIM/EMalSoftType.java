// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EMalSoftType
{

    private EMalSoftType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EMalSoftType convert(int i)
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
        EMalSoftType emalsofttype = __values[j];
_L4:
        return emalsofttype;
_L2:
        j++;
          goto _L3
        emalsofttype = null;
          goto _L4
    }

    public static EMalSoftType convert(String s)
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
        EMalSoftType emalsofttype = __values[i];
_L4:
        return emalsofttype;
_L2:
        i++;
          goto _L3
        emalsofttype = null;
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
    public static final EMalSoftType MST_BeInstalled = new EMalSoftType(5, 5, "MST_BeInstalled");
    public static final EMalSoftType MST_BeTerminated = new EMalSoftType(3, 3, "MST_BeTerminated");
    public static final EMalSoftType MST_BeUninstalled = new EMalSoftType(2, 2, "MST_BeUninstalled");
    public static final EMalSoftType MST_BlockNetLink = new EMalSoftType(4, 4, "MST_BlockNetLink");
    public static final EMalSoftType MST_BlockSMS = new EMalSoftType(1, 1, "MST_BlockSMS");
    public static final EMalSoftType MST_NONE = new EMalSoftType(0, 0, "MST_NONE");
    public static final int _MST_BeInstalled = 5;
    public static final int _MST_BeTerminated = 3;
    public static final int _MST_BeUninstalled = 2;
    public static final int _MST_BlockNetLink = 4;
    public static final int _MST_BlockSMS = 1;
    public static final int _MST_NONE;
    private static EMalSoftType __values[] = new EMalSoftType[6];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EMalSoftType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
