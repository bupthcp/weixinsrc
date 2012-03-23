// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ENotifyID
{

    private ENotifyID(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ENotifyID convert(int i)
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
        ENotifyID enotifyid = __values[j];
_L4:
        return enotifyid;
_L2:
        j++;
          goto _L3
        enotifyid = null;
          goto _L4
    }

    public static ENotifyID convert(String s)
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
        ENotifyID enotifyid = __values[i];
_L4:
        return enotifyid;
_L2:
        i++;
          goto _L3
        enotifyid = null;
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
    public static final ENotifyID ENID_Block_Rules = new ENotifyID(4, 2, "ENID_Block_Rules");
    public static final ENotifyID ENID_END = new ENotifyID(8, 0x10000, "ENID_END");
    public static final ENotifyID ENID_None = new ENotifyID(0, 0, "ENID_None");
    public static final ENotifyID ENID_Only_Soft_Update = new ENotifyID(2, 7, "ENID_Only_Soft_Update");
    public static final ENotifyID ENID_Other_Bind_SMS = new ENotifyID(6, 5, "ENID_Other_Bind_SMS");
    public static final ENotifyID ENID_Phone_Location = new ENotifyID(3, 1, "ENID_Phone_Location");
    public static final ENotifyID ENID_Send_SMS_Com_Black = new ENotifyID(7, 6, "ENID_Send_SMS_Com_Black");
    public static final ENotifyID ENID_Soft_Update = new ENotifyID(1, 4, "ENID_Soft_Update");
    public static final ENotifyID ENID_Virus_Lib = new ENotifyID(5, 3, "ENID_Virus_Lib");
    public static final int _ENID_Block_Rules = 2;
    public static final int _ENID_END = 0x10000;
    public static final int _ENID_None = 0;
    public static final int _ENID_Only_Soft_Update = 7;
    public static final int _ENID_Other_Bind_SMS = 5;
    public static final int _ENID_Phone_Location = 1;
    public static final int _ENID_Send_SMS_Com_Black = 6;
    public static final int _ENID_Soft_Update = 4;
    public static final int _ENID_Virus_Lib = 3;
    private static ENotifyID __values[] = new ENotifyID[9];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ENotifyID.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
