// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class EOptionID
{

    private EOptionID(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static EOptionID convert(int i)
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
        EOptionID eoptionid = __values[j];
_L4:
        return eoptionid;
_L2:
        j++;
          goto _L3
        eoptionid = null;
          goto _L4
    }

    public static EOptionID convert(String s)
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
        EOptionID eoptionid = __values[i];
_L4:
        return eoptionid;
_L2:
        i++;
          goto _L3
        eoptionid = null;
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
    public static final EOptionID EOI_Cancel = new EOptionID(4, 4, "EOI_Cancel");
    public static final EOptionID EOI_CloudCheck = new EOptionID(9, 9, "EOI_CloudCheck");
    public static final EOptionID EOI_DeductibleScan = new EOptionID(7, 7, "EOI_DeductibleScan");
    public static final EOptionID EOI_END = new EOptionID(13, 13, "EOI_END");
    public static final EOptionID EOI_Examination = new EOptionID(8, 8, "EOI_Examination");
    public static final EOptionID EOI_Force = new EOptionID(2, 2, "EOI_Force");
    public static final EOptionID EOI_None = new EOptionID(0, 0, "EOI_None");
    public static final EOptionID EOI_Normal = new EOptionID(1, 1, "EOI_Normal");
    public static final EOptionID EOI_OpenRootLauch = new EOptionID(12, 12, "EOI_OpenRootLauch");
    public static final EOptionID EOI_OpenSecServ = new EOptionID(10, 10, "EOI_OpenSecServ");
    public static final EOptionID EOI_OpenTrafficStat = new EOptionID(11, 11, "EOI_OpenTrafficStat");
    public static final EOptionID EOI_Reboot = new EOptionID(3, 3, "EOI_Reboot");
    public static final EOptionID EOI_Silent = new EOptionID(5, 5, "EOI_Silent");
    public static final EOptionID EOI_Virus_Scan = new EOptionID(6, 6, "EOI_Virus_Scan");
    public static final int _EOI_Cancel = 4;
    public static final int _EOI_CloudCheck = 9;
    public static final int _EOI_DeductibleScan = 7;
    public static final int _EOI_END = 13;
    public static final int _EOI_Examination = 8;
    public static final int _EOI_Force = 2;
    public static final int _EOI_None = 0;
    public static final int _EOI_Normal = 1;
    public static final int _EOI_OpenRootLauch = 12;
    public static final int _EOI_OpenSecServ = 10;
    public static final int _EOI_OpenTrafficStat = 11;
    public static final int _EOI_Reboot = 3;
    public static final int _EOI_Silent = 5;
    public static final int _EOI_Virus_Scan = 6;
    private static EOptionID __values[] = new EOptionID[14];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/EOptionID.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
