// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ESubPlatform
{

    private ESubPlatform(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ESubPlatform convert(int i)
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
        ESubPlatform esubplatform = __values[j];
_L4:
        return esubplatform;
_L2:
        j++;
          goto _L3
        esubplatform = null;
          goto _L4
    }

    public static ESubPlatform convert(String s)
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
        ESubPlatform esubplatform = __values[i];
_L4:
        return esubplatform;
_L2:
        i++;
          goto _L3
        esubplatform = null;
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
    public static final ESubPlatform ESP_Android_General = new ESubPlatform(3, 201, "ESP_Android_General");
    public static final ESubPlatform ESP_Iphone_General = new ESubPlatform(4, 301, "ESP_Iphone_General");
    public static final ESubPlatform ESP_Kjava_General = new ESubPlatform(5, 401, "ESP_Kjava_General");
    public static final ESubPlatform ESP_NONE = new ESubPlatform(0, 0, "ESP_NONE");
    public static final ESubPlatform ESP_Symbian_V3 = new ESubPlatform(1, 101, "ESP_Symbian_V3");
    public static final ESubPlatform ESP_Symbian_V5 = new ESubPlatform(2, 102, "ESP_Symbian_V5");
    public static final int _ESP_Android_General = 201;
    public static final int _ESP_Iphone_General = 301;
    public static final int _ESP_Kjava_General = 401;
    public static final int _ESP_NONE = 0;
    public static final int _ESP_Symbian_V3 = 101;
    public static final int _ESP_Symbian_V5 = 102;
    private static ESubPlatform __values[] = new ESubPlatform[6];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ESubPlatform.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
