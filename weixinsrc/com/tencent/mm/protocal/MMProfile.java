// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;


public final class MMProfile
{

    private MMProfile()
    {
    }

    public static String a(int i)
    {
        String s = (new StringBuilder()).append("code=").append(Integer.toHexString(i)).append("").append(", status = ").append(i).toString();
        if((i & 1) != 0)
            s = (new StringBuilder()).append(s).append(", open").toString();
        if((i & 2) != 0)
            s = (new StringBuilder()).append(s).append(", email-verified").toString();
        if((i & 4) != 0)
            s = (new StringBuilder()).append(s).append(", mobile-verified").toString();
        if((i & 8) != 0)
            s = (new StringBuilder()).append(s).append(", hide-qq-search").toString();
        if((i & 0x10) != 0)
            s = (new StringBuilder()).append(s).append(", hide-qq-promote").toString();
        if((i & 0x20) != 0)
            s = (new StringBuilder()).append(s).append(", need-verify").toString();
        if((i & 0x40) != 0)
            s = (new StringBuilder()).append(s).append(", has-qq-msg").toString();
        if((i & 0x80) != 0)
            s = (new StringBuilder()).append(s).append(", no-qq-promote").toString();
        if((i & 0x100) != 0)
            s = (new StringBuilder()).append(s).append(", no-mobile-promote").toString();
        if((i & 0x200) != 0)
            s = (new StringBuilder()).append(s).append(", hide-mobile_search").toString();
        if((i & 0x1000) != 0)
            s = (new StringBuilder()).append(s).append(", open-float-bottle").toString();
        if((0x20000 & i) != 0)
            s = (new StringBuilder()).append(s).append(",bind but not upload").toString();
        return s;
    }

    public static String b(int i)
    {
        String s = (new StringBuilder()).append("code=").append(Integer.toHexString(i)).append("").append(", pluginFlag = ").append(i).toString();
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        String s7;
        String s8;
        String s9;
        String s10;
        String s11;
        String s12;
        if((i & 1) != 0)
            s1 = (new StringBuilder()).append(s).append(", QQMAIL_UNINSTALL").toString();
        else
            s1 = (new StringBuilder()).append(s).append(", QQMAIL_INSTALl").toString();
        if((i & 2) != 0)
            s2 = (new StringBuilder()).append(s1).append(", PM_UNINSTALL").toString();
        else
            s2 = (new StringBuilder()).append(s1).append(", PM_INSTALl").toString();
        if((i & 4) != 0)
            s3 = (new StringBuilder()).append(s2).append(", FM_UNINSTALL").toString();
        else
            s3 = (new StringBuilder()).append(s2).append(", FM_INSTALl").toString();
        if((i & 8) != 0)
            s4 = (new StringBuilder()).append(s3).append(", WEIBO_UNINSTALL").toString();
        else
            s4 = (new StringBuilder()).append(s3).append(", WEIBO_INSTALl").toString();
        if((i & 0x10) != 0)
            s5 = (new StringBuilder()).append(s4).append(", MEDIANOTE_UNINSTALL").toString();
        else
            s5 = (new StringBuilder()).append(s4).append(", MEDIANOTE_INSTALl").toString();
        if((i & 0x20) != 0)
            s6 = (new StringBuilder()).append(s5).append(", QMSG_UNINSTALL").toString();
        else
            s6 = (new StringBuilder()).append(s5).append(", QMSG_INSTALl").toString();
        if((i & 0x40) != 0)
            s7 = (new StringBuilder()).append(s6).append(", BOTTLE_UNINSTALL").toString();
        else
            s7 = (new StringBuilder()).append(s6).append(", BOTTLE_INSTALl").toString();
        if((i & 0x80) != 0)
            s8 = (new StringBuilder()).append(s7).append(", QSYNC_UNISTALL").toString();
        else
            s8 = (new StringBuilder()).append(s7).append(", QSYNC_INSTALl").toString();
        if((i & 0x100) != 0)
            s9 = (new StringBuilder()).append(s8).append(", SHAKE_UNISTALL").toString();
        else
            s9 = (new StringBuilder()).append(s8).append(", SHAKE_INSTALl").toString();
        if((i & 0x200) != 0)
            s10 = (new StringBuilder()).append(s9).append(", LBS_UNISTALL").toString();
        else
            s10 = (new StringBuilder()).append(s9).append(", LBS_INSTALl").toString();
        if((i & 0x800) != 0)
            s11 = (new StringBuilder()).append(s10).append(",GMAIL_UNINSTAL").toString();
        else
            s11 = (new StringBuilder()).append(s10).append(",GMAIL_INSTALl").toString();
        if((i & 0x1000) != 0)
            s12 = (new StringBuilder()).append(s11).append(",CHECKQQF_UNINSTALL").toString();
        else
            s12 = (new StringBuilder()).append(s11).append(",CHECKQQF_INSTALl").toString();
        return s12;
    }
}
