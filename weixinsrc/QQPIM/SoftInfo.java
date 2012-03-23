// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            SoftKey, ProcInfo

public final class SoftInfo extends g
{

    public SoftInfo()
    {
        softkey = null;
        short_desc = "";
        description = "";
        type = "";
        softclass = "";
        procinfo = null;
        smsmonitor = 0;
        phonemonitor = 0;
        netaccess = 0;
        autostart = 0;
        asopt = 0;
        nick_name = "";
        reportFeature = 0;
        logourl = "";
        filesize = 0;
        publishtime = "";
        downloadtimes = 0;
        function = "";
        fileurl = "";
        picurls = null;
        official = 0;
        update = 0;
        score = 0;
        suser = 0;
        softDescTimestamp = 0;
        iProductID = 0;
        iSoftID = 0;
        iFileID = 0;
    }

    public SoftInfo(SoftKey softkey1, String s, String s1, String s2, String s3, ArrayList arraylist, int i, 
            int j, int k, int l, int i1, String s4, int j1, String s5, 
            int k1, String s6, int l1, String s7, String s8, ArrayList arraylist1, int i2, 
            int j2, int k2, int l2, int i3, int j3, int k3, int l3)
    {
        softkey = null;
        short_desc = "";
        description = "";
        type = "";
        softclass = "";
        procinfo = null;
        smsmonitor = 0;
        phonemonitor = 0;
        netaccess = 0;
        autostart = 0;
        asopt = 0;
        nick_name = "";
        reportFeature = 0;
        logourl = "";
        filesize = 0;
        publishtime = "";
        downloadtimes = 0;
        function = "";
        fileurl = "";
        picurls = null;
        official = 0;
        update = 0;
        score = 0;
        suser = 0;
        softDescTimestamp = 0;
        iProductID = 0;
        iSoftID = 0;
        iFileID = 0;
        softkey = softkey1;
        short_desc = s;
        description = s1;
        type = s2;
        softclass = s3;
        procinfo = arraylist;
        smsmonitor = i;
        phonemonitor = j;
        netaccess = k;
        autostart = l;
        asopt = i1;
        nick_name = s4;
        reportFeature = j1;
        logourl = s5;
        filesize = k1;
        publishtime = s6;
        downloadtimes = l1;
        function = s7;
        fileurl = s8;
        picurls = arraylist1;
        official = i2;
        update = j2;
        score = k2;
        suser = l2;
        softDescTimestamp = i3;
        iProductID = j3;
        iSoftID = k3;
        iFileID = l3;
    }

    public final String className()
    {
        return "QQPIM.SoftInfo";
    }

    public final Object clone()
    {
        Object obj = null;
        Object obj1 = super.clone();
        obj = obj1;
_L2:
        return obj;
        CloneNotSupportedException clonenotsupportedexception;
        clonenotsupportedexception;
        if(!$assertionsDisabled)
            throw new AssertionError();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void display(StringBuilder stringbuilder, int i)
    {
        h h1 = new h(stringbuilder, i);
        h1.a(softkey, "softkey");
        h1.a(short_desc, "short_desc");
        h1.a(description, "description");
        h1.a(type, "type");
        h1.a(softclass, "softclass");
        h1.a(procinfo, "procinfo");
        h1.a(smsmonitor, "smsmonitor");
        h1.a(phonemonitor, "phonemonitor");
        h1.a(netaccess, "netaccess");
        h1.a(autostart, "autostart");
        h1.a(asopt, "asopt");
        h1.a(nick_name, "nick_name");
        h1.a(reportFeature, "reportFeature");
        h1.a(logourl, "logourl");
        h1.a(filesize, "filesize");
        h1.a(publishtime, "publishtime");
        h1.a(downloadtimes, "downloadtimes");
        h1.a(function, "function");
        h1.a(fileurl, "fileurl");
        h1.a(picurls, "picurls");
        h1.a(official, "official");
        h1.a(update, "update");
        h1.a(score, "score");
        h1.a(suser, "suser");
        h1.a(softDescTimestamp, "softDescTimestamp");
        h1.a(iProductID, "iProductID");
        h1.a(iSoftID, "iSoftID");
        h1.a(iFileID, "iFileID");
    }

    public final boolean equals(Object obj)
    {
        SoftInfo softinfo = (SoftInfo)obj;
        boolean flag;
        if(c.a(softkey, softinfo.softkey) && c.a(short_desc, softinfo.short_desc) && c.a(description, softinfo.description) && c.a(type, softinfo.type) && c.a(softclass, softinfo.softclass) && c.a(procinfo, softinfo.procinfo) && c.a(smsmonitor, softinfo.smsmonitor) && c.a(phonemonitor, softinfo.phonemonitor) && c.a(netaccess, softinfo.netaccess) && c.a(autostart, softinfo.autostart) && c.a(asopt, softinfo.asopt) && c.a(nick_name, softinfo.nick_name) && c.a(reportFeature, softinfo.reportFeature) && c.a(logourl, softinfo.logourl) && c.a(filesize, softinfo.filesize) && c.a(publishtime, softinfo.publishtime) && c.a(downloadtimes, softinfo.downloadtimes) && c.a(function, softinfo.function) && c.a(fileurl, softinfo.fileurl) && c.a(picurls, softinfo.picurls) && c.a(official, softinfo.official) && c.a(update, softinfo.update) && c.a(score, softinfo.score) && c.a(suser, softinfo.suser) && c.a(softDescTimestamp, softinfo.softDescTimestamp) && c.a(iProductID, softinfo.iProductID) && c.a(iSoftID, softinfo.iSoftID) && c.a(iFileID, softinfo.iFileID))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getAsopt()
    {
        return asopt;
    }

    public final int getAutostart()
    {
        return autostart;
    }

    public final String getDescription()
    {
        return description;
    }

    public final int getDownloadtimes()
    {
        return downloadtimes;
    }

    public final int getFilesize()
    {
        return filesize;
    }

    public final String getFileurl()
    {
        return fileurl;
    }

    public final String getFunction()
    {
        return function;
    }

    public final int getIFileID()
    {
        return iFileID;
    }

    public final int getIProductID()
    {
        return iProductID;
    }

    public final int getISoftID()
    {
        return iSoftID;
    }

    public final String getLogourl()
    {
        return logourl;
    }

    public final int getNetaccess()
    {
        return netaccess;
    }

    public final String getNick_name()
    {
        return nick_name;
    }

    public final int getOfficial()
    {
        return official;
    }

    public final int getPhonemonitor()
    {
        return phonemonitor;
    }

    public final ArrayList getPicurls()
    {
        return picurls;
    }

    public final ArrayList getProcinfo()
    {
        return procinfo;
    }

    public final String getPublishtime()
    {
        return publishtime;
    }

    public final int getReportFeature()
    {
        return reportFeature;
    }

    public final int getScore()
    {
        return score;
    }

    public final String getShort_desc()
    {
        return short_desc;
    }

    public final int getSmsmonitor()
    {
        return smsmonitor;
    }

    public final int getSoftDescTimestamp()
    {
        return softDescTimestamp;
    }

    public final String getSoftclass()
    {
        return softclass;
    }

    public final SoftKey getSoftkey()
    {
        return softkey;
    }

    public final int getSuser()
    {
        return suser;
    }

    public final String getType()
    {
        return type;
    }

    public final int getUpdate()
    {
        return update;
    }

    public final void readFrom(a a1)
    {
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 0, true);
        short_desc = a1.b(1, false);
        description = a1.b(2, false);
        type = a1.b(3, false);
        softclass = a1.b(4, false);
        if(cache_procinfo == null)
        {
            cache_procinfo = new ArrayList();
            ProcInfo procinfo1 = new ProcInfo();
            cache_procinfo.add(procinfo1);
        }
        setProcinfo((ArrayList)a1.a(cache_procinfo, 5, false));
        setSmsmonitor(a1.a(smsmonitor, 6, false));
        setPhonemonitor(a1.a(phonemonitor, 7, false));
        setNetaccess(a1.a(netaccess, 8, false));
        setAutostart(a1.a(autostart, 9, false));
        setAsopt(a1.a(asopt, 10, false));
        setNick_name(a1.b(11, false));
        setReportFeature(a1.a(reportFeature, 12, false));
        setLogourl(a1.b(13, false));
        setFilesize(a1.a(filesize, 14, false));
        setPublishtime(a1.b(15, false));
        setDownloadtimes(a1.a(downloadtimes, 16, false));
        setFunction(a1.b(17, false));
        setFileurl(a1.b(18, false));
        if(cache_picurls == null)
        {
            cache_picurls = new ArrayList();
            cache_picurls.add("");
        }
        setPicurls((ArrayList)a1.a(cache_picurls, 19, false));
        setOfficial(a1.a(official, 20, false));
        setUpdate(a1.a(update, 21, false));
        setScore(a1.a(score, 22, false));
        setSuser(a1.a(suser, 23, false));
        setSoftDescTimestamp(a1.a(softDescTimestamp, 24, false));
        setIProductID(a1.a(iProductID, 25, false));
        setISoftID(a1.a(iSoftID, 26, false));
        setIFileID(a1.a(iFileID, 27, false));
    }

    public final void setAsopt(int i)
    {
        asopt = i;
    }

    public final void setAutostart(int i)
    {
        autostart = i;
    }

    public final void setDescription(String s)
    {
        description = s;
    }

    public final void setDownloadtimes(int i)
    {
        downloadtimes = i;
    }

    public final void setFilesize(int i)
    {
        filesize = i;
    }

    public final void setFileurl(String s)
    {
        fileurl = s;
    }

    public final void setFunction(String s)
    {
        function = s;
    }

    public final void setIFileID(int i)
    {
        iFileID = i;
    }

    public final void setIProductID(int i)
    {
        iProductID = i;
    }

    public final void setISoftID(int i)
    {
        iSoftID = i;
    }

    public final void setLogourl(String s)
    {
        logourl = s;
    }

    public final void setNetaccess(int i)
    {
        netaccess = i;
    }

    public final void setNick_name(String s)
    {
        nick_name = s;
    }

    public final void setOfficial(int i)
    {
        official = i;
    }

    public final void setPhonemonitor(int i)
    {
        phonemonitor = i;
    }

    public final void setPicurls(ArrayList arraylist)
    {
        picurls = arraylist;
    }

    public final void setProcinfo(ArrayList arraylist)
    {
        procinfo = arraylist;
    }

    public final void setPublishtime(String s)
    {
        publishtime = s;
    }

    public final void setReportFeature(int i)
    {
        reportFeature = i;
    }

    public final void setScore(int i)
    {
        score = i;
    }

    public final void setShort_desc(String s)
    {
        short_desc = s;
    }

    public final void setSmsmonitor(int i)
    {
        smsmonitor = i;
    }

    public final void setSoftDescTimestamp(int i)
    {
        softDescTimestamp = i;
    }

    public final void setSoftclass(String s)
    {
        softclass = s;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void setSuser(int i)
    {
        suser = i;
    }

    public final void setType(String s)
    {
        type = s;
    }

    public final void setUpdate(int i)
    {
        update = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        if(short_desc != null)
            e1.a(short_desc, 1);
        if(description != null)
            e1.a(description, 2);
        if(type != null)
            e1.a(type, 3);
        if(softclass != null)
            e1.a(softclass, 4);
        if(procinfo != null)
            e1.a(procinfo, 5);
        e1.a(smsmonitor, 6);
        e1.a(phonemonitor, 7);
        e1.a(netaccess, 8);
        e1.a(autostart, 9);
        e1.a(asopt, 10);
        if(nick_name != null)
            e1.a(nick_name, 11);
        e1.a(reportFeature, 12);
        if(logourl != null)
            e1.a(logourl, 13);
        e1.a(filesize, 14);
        if(publishtime != null)
            e1.a(publishtime, 15);
        e1.a(downloadtimes, 16);
        if(function != null)
            e1.a(function, 17);
        if(fileurl != null)
            e1.a(fileurl, 18);
        if(picurls != null)
            e1.a(picurls, 19);
        e1.a(official, 20);
        e1.a(update, 21);
        e1.a(score, 22);
        e1.a(suser, 23);
        e1.a(softDescTimestamp, 24);
        e1.a(iProductID, 25);
        e1.a(iSoftID, 26);
        e1.a(iFileID, 27);
    }

    static final boolean $assertionsDisabled;
    static int cache_asopt;
    static ArrayList cache_picurls;
    static ArrayList cache_procinfo;
    static SoftKey cache_softkey;
    public int asopt;
    public int autostart;
    public String description;
    public int downloadtimes;
    public int filesize;
    public String fileurl;
    public String function;
    public int iFileID;
    public int iProductID;
    public int iSoftID;
    public String logourl;
    public int netaccess;
    public String nick_name;
    public int official;
    public int phonemonitor;
    public ArrayList picurls;
    public ArrayList procinfo;
    public String publishtime;
    public int reportFeature;
    public int score;
    public String short_desc;
    public int smsmonitor;
    public int softDescTimestamp;
    public String softclass;
    public SoftKey softkey;
    public int suser;
    public String type;
    public int update;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
