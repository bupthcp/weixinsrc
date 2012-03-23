// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ERankType
{

    private ERankType(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ERankType convert(int i)
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
        ERankType eranktype = __values[j];
_L4:
        return eranktype;
_L2:
        j++;
          goto _L3
        eranktype = null;
          goto _L4
    }

    public static ERankType convert(String s)
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
        ERankType eranktype = __values[i];
_L4:
        return eranktype;
_L2:
        i++;
          goto _L3
        eranktype = null;
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
    public static final ERankType ERT_Model = new ERankType(1, 2, "ERT_Model");
    public static final ERankType ERT_Total = new ERankType(0, 1, "ERT_Total");
    public static final int _ERT_Model = 2;
    public static final int _ERT_Total = 1;
    private static ERankType __values[] = new ERankType[2];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ERankType.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
