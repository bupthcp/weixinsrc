// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;


public final class ECloudCMDID
{

    private ECloudCMDID(int i, int j, String s)
    {
        __T = new String();
        __T = s;
        __value = j;
        __values[i] = this;
    }

    public static ECloudCMDID convert(int i)
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
        ECloudCMDID ecloudcmdid = __values[j];
_L4:
        return ecloudcmdid;
_L2:
        j++;
          goto _L3
        ecloudcmdid = null;
          goto _L4
    }

    public static ECloudCMDID convert(String s)
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
        ECloudCMDID ecloudcmdid = __values[i];
_L4:
        return ecloudcmdid;
_L2:
        i++;
          goto _L3
        ecloudcmdid = null;
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
    public static final ECloudCMDID ECCID_ConfUpdate = new ECloudCMDID(12, 201, "ECCID_ConfUpdate");
    public static final ECloudCMDID ECCID_DeleteFile = new ECloudCMDID(4, 4, "ECCID_DeleteFile");
    public static final ECloudCMDID ECCID_END = new ECloudCMDID(13, 202, "ECCID_END");
    public static final ECloudCMDID ECCID_ForbidInstall = new ECloudCMDID(2, 2, "ECCID_ForbidInstall");
    public static final ECloudCMDID ECCID_Install = new ECloudCMDID(6, 6, "ECCID_Install");
    public static final ECloudCMDID ECCID_KillPorcess = new ECloudCMDID(3, 3, "ECCID_KillPorcess");
    public static final ECloudCMDID ECCID_MQQSecRun = new ECloudCMDID(7, 7, "ECCID_MQQSecRun");
    public static final ECloudCMDID ECCID_None = new ECloudCMDID(0, 0, "ECCID_None");
    public static final ECloudCMDID ECCID_OpenLink = new ECloudCMDID(10, 101, "ECCID_OpenLink");
    public static final ECloudCMDID ECCID_OpenUI = new ECloudCMDID(9, 100, "ECCID_OpenUI");
    public static final ECloudCMDID ECCID_PurgeIpTables = new ECloudCMDID(8, 8, "ECCID_PurgeIpTables");
    public static final ECloudCMDID ECCID_Reboot = new ECloudCMDID(5, 5, "ECCID_Reboot");
    public static final ECloudCMDID ECCID_SoftUpdate = new ECloudCMDID(11, 200, "ECCID_SoftUpdate");
    public static final ECloudCMDID ECCID_Uninstall = new ECloudCMDID(1, 1, "ECCID_Uninstall");
    public static final int _ECCID_ConfUpdate = 201;
    public static final int _ECCID_DeleteFile = 4;
    public static final int _ECCID_END = 202;
    public static final int _ECCID_ForbidInstall = 2;
    public static final int _ECCID_Install = 6;
    public static final int _ECCID_KillPorcess = 3;
    public static final int _ECCID_MQQSecRun = 7;
    public static final int _ECCID_None = 0;
    public static final int _ECCID_OpenLink = 101;
    public static final int _ECCID_OpenUI = 100;
    public static final int _ECCID_PurgeIpTables = 8;
    public static final int _ECCID_Reboot = 5;
    public static final int _ECCID_SoftUpdate = 200;
    public static final int _ECCID_Uninstall = 1;
    private static ECloudCMDID __values[] = new ECloudCMDID[14];
    private String __T;
    private int __value;

    static 
    {
        boolean flag;
        if(!QQPIM/ECloudCMDID.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
