// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.issue;

import android.os.Build;

public final class IssueSettings
{

    public IssueSettings()
    {
    }

    public static boolean isContainedAccountName(String s)
    {
        boolean flag;
        ACCOUNT_NAME aaccount_name[];
        int i;
        int j;
        flag = false;
        aaccount_name = ACCOUNT_NAME.values();
        i = aaccount_name.length;
        j = ((flag) ? 1 : 0);
_L5:
        if(j < i) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(!aaccount_name[j].getName().equals(s))
            break; /* Loop/switch isn't completed */
        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
        j++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static boolean QQPimPWDPageCannotRefresh = false;
    public static boolean aboutContentDisplayError = false;
    public static boolean anonymousDraftAfterBackupDisplayErrorName = false;
    public static boolean anonymousDraftCanNotBeRestored = true;
    public static boolean backgroundRunningCannotDisplayAlertDialog = false;
    public static boolean birthdayDisplayError = false;
    public static boolean contactGoogleTypeAndPhoneTypeError = false;
    public static boolean draftHasMoreCantactsUploadDisplayWrong = false;
    public static boolean fetionCannotBeRestored = false;
    public static boolean loginPageCannotRefresh = false;
    public static boolean loginPageDrapdownListDisplayWrong = false;
    public static boolean moreListItemDisplayUncomplete = false;
    public static boolean photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK = false;
    public static boolean photoDownloadTophoneFatalError = false;
    public static boolean simContactsCanNotUploadToNet = false;
    public static boolean simContactsCanNotUploadToNetForZTE = false;

    static 
    {
        if("OMS1_5".equals(Build.MODEL))
        {
            loginPageDrapdownListDisplayWrong = true;
            fetionCannotBeRestored = true;
        }
        if("LG-P500".equals(Build.MODEL))
        {
            moreListItemDisplayUncomplete = true;
            anonymousDraftCanNotBeRestored = true;
            backgroundRunningCannotDisplayAlertDialog = true;
        }
        if("GT-T959".equals(Build.MODEL))
        {
            draftHasMoreCantactsUploadDisplayWrong = true;
            simContactsCanNotUploadToNet = true;
        }
        if("XT800".equals(Build.MODEL) || "XT800W".equals(Build.MODEL))
        {
            simContactsCanNotUploadToNet = true;
            draftHasMoreCantactsUploadDisplayWrong = true;
            loginPageCannotRefresh = true;
        }
        if("HTC Wildfire".equals(Build.MODEL))
        {
            anonymousDraftCanNotBeRestored = true;
            aboutContentDisplayError = true;
        }
        if("D530".equals(Build.MODEL))
        {
            simContactsCanNotUploadToNet = true;
            draftHasMoreCantactsUploadDisplayWrong = true;
        }
        if("HTC Tattoo".equals(Build.MODEL))
        {
            contactGoogleTypeAndPhoneTypeError = true;
            aboutContentDisplayError = true;
            anonymousDraftCanNotBeRestored = true;
        }
        if("MB200".equals(Build.MODEL) || "ME200".equals(Build.MODEL))
        {
            draftHasMoreCantactsUploadDisplayWrong = true;
            birthdayDisplayError = true;
        }
        if("MB525".equals(Build.MODEL) || "ME525".equals(Build.MODEL))
        {
            loginPageCannotRefresh = true;
            draftHasMoreCantactsUploadDisplayWrong = true;
            birthdayDisplayError = true;
        }
        if("GT-I9000".equals(Build.MODEL))
        {
            loginPageCannotRefresh = true;
            simContactsCanNotUploadToNet = true;
        }
        if("MotoA953".equals(Build.MODEL))
            birthdayDisplayError = true;
        if("meizu_m9".equals(Build.MODEL))
            backgroundRunningCannotDisplayAlertDialog = true;
        if("HTC Desire".equals(Build.MODEL))
        {
            anonymousDraftCanNotBeRestored = true;
            backgroundRunningCannotDisplayAlertDialog = true;
        }
        if("ME501".equals(Build.MODEL))
            birthdayDisplayError = true;
        if("C8500".equals(Build.MODEL))
        {
            aboutContentDisplayError = true;
            simContactsCanNotUploadToNet = true;
            anonymousDraftCanNotBeRestored = true;
            anonymousDraftAfterBackupDisplayErrorName = true;
        }
        if("SCH-i909".equals(Build.MODEL))
        {
            loginPageCannotRefresh = true;
            simContactsCanNotUploadToNet = true;
        }
        if("E10i".equals(Build.MODEL))
            aboutContentDisplayError = true;
        if("GT-I5508".equals(Build.MODEL))
        {
            aboutContentDisplayError = true;
            simContactsCanNotUploadToNet = true;
        }
        if("GT-I5801".equals(Build.MODEL))
            simContactsCanNotUploadToNet = true;
        if("W180".equals(Build.MODEL))
            loginPageCannotRefresh = true;
        if("XT701".equals(Build.MODEL))
            loginPageCannotRefresh = true;
        if("ZTE-C N600".equals(Build.MODEL))
        {
            aboutContentDisplayError = true;
            simContactsCanNotUploadToNetForZTE = true;
        }
        if("U8500 HiQQ".equals(Build.MODEL))
        {
            loginPageCannotRefresh = true;
            QQPimPWDPageCannotRefresh = true;
        }
        if("ME600".equals(Build.MODEL))
            simContactsCanNotUploadToNet = true;
        if("Galaxy".equals(Build.MODEL))
            photoDownloadTophoneAfterEditerNativePhotoError_1_5SDK = true;
    }

    private class ACCOUNT_NAME extends Enum
    {

        public static ACCOUNT_NAME valueOf(String s)
        {
            return (ACCOUNT_NAME)Enum.valueOf(com/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME, s);
        }

        public static ACCOUNT_NAME[] values()
        {
            ACCOUNT_NAME aaccount_name[] = ENUM$VALUES;
            int i = aaccount_name.length;
            ACCOUNT_NAME aaccount_name1[] = new ACCOUNT_NAME[i];
            System.arraycopy(aaccount_name, 0, aaccount_name1, 0, i);
            return aaccount_name1;
        }

        public final String getName()
        {
            return accountName;
        }

        private static final ACCOUNT_NAME ENUM$VALUES[];
        public static final ACCOUNT_NAME SIM_CONTACT_COOLPAD;
        public static final ACCOUNT_NAME SIM_CONTACT_HUAWEI;
        public static final ACCOUNT_NAME SIM_CONTACT_MOTO;
        public static final ACCOUNT_NAME SIM_CONTACT_SUMSUNG;
        public static final ACCOUNT_NAME SIM_CONTACT_SUMSUNG_SIM;
        public static final ACCOUNT_NAME SIM_CONTACT_SUMSUNG_SIM2;
        private String accountName;

        static 
        {
            SIM_CONTACT_SUMSUNG = new ACCOUNT_NAME("SIM_CONTACT_SUMSUNG", 0, "vnd.sec.contact.sim");
            SIM_CONTACT_SUMSUNG_SIM2 = new ACCOUNT_NAME("SIM_CONTACT_SUMSUNG_SIM2", 1, "vnd.sec.contact.sim2");
            SIM_CONTACT_SUMSUNG_SIM = new ACCOUNT_NAME("SIM_CONTACT_SUMSUNG_SIM", 2, "vnd.sec.contact.sim");
            SIM_CONTACT_MOTO = new ACCOUNT_NAME("SIM_CONTACT_MOTO", 3, "g-contacts");
            SIM_CONTACT_COOLPAD = new ACCOUNT_NAME("SIM_CONTACT_COOLPAD", 4, "c-contacts");
            SIM_CONTACT_HUAWEI = new ACCOUNT_NAME("SIM_CONTACT_HUAWEI", 5, "uim");
            ACCOUNT_NAME aaccount_name[] = new ACCOUNT_NAME[6];
            aaccount_name[0] = SIM_CONTACT_SUMSUNG;
            aaccount_name[1] = SIM_CONTACT_SUMSUNG_SIM2;
            aaccount_name[2] = SIM_CONTACT_SUMSUNG_SIM;
            aaccount_name[3] = SIM_CONTACT_MOTO;
            aaccount_name[4] = SIM_CONTACT_COOLPAD;
            aaccount_name[5] = SIM_CONTACT_HUAWEI;
            ENUM$VALUES = aaccount_name;
        }

        private ACCOUNT_NAME(String s, int i, String s1)
        {
            super(s, i);
            accountName = s1;
        }
    }

}
