// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class SoftSimpleInfo extends g
{

    public SoftSimpleInfo()
    {
        softkey = null;
        type = "";
        softclass = "";
        nick_name = "";
        logourl = "";
        filesize = 0;
        publishtime = "";
        downloadtimes = 0;
        fileurl = "";
        score = 0;
        suser = 0;
        iProductID = 0;
        iSoftID = 0;
        iFileID = 0;
    }

    public SoftSimpleInfo(SoftKey softkey1, String s, String s1, String s2, String s3, int i, String s4, 
            int j, String s5, int k, int l, int i1, int j1, int k1)
    {
        softkey = null;
        type = "";
        softclass = "";
        nick_name = "";
        logourl = "";
        filesize = 0;
        publishtime = "";
        downloadtimes = 0;
        fileurl = "";
        score = 0;
        suser = 0;
        iProductID = 0;
        iSoftID = 0;
        iFileID = 0;
        softkey = softkey1;
        type = s;
        softclass = s1;
        nick_name = s2;
        logourl = s3;
        filesize = i;
        publishtime = s4;
        downloadtimes = j;
        fileurl = s5;
        score = k;
        suser = l;
        iProductID = i1;
        iSoftID = j1;
        iFileID = k1;
    }

    public final String className()
    {
        return "QQPIM.SoftSimpleInfo";
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
        h1.a(type, "type");
        h1.a(softclass, "softclass");
        h1.a(nick_name, "nick_name");
        h1.a(logourl, "logourl");
        h1.a(filesize, "filesize");
        h1.a(publishtime, "publishtime");
        h1.a(downloadtimes, "downloadtimes");
        h1.a(fileurl, "fileurl");
        h1.a(score, "score");
        h1.a(suser, "suser");
        h1.a(iProductID, "iProductID");
        h1.a(iSoftID, "iSoftID");
        h1.a(iFileID, "iFileID");
    }

    public final boolean equals(Object obj)
    {
        SoftSimpleInfo softsimpleinfo = (SoftSimpleInfo)obj;
        boolean flag;
        if(c.a(softkey, softsimpleinfo.softkey) && c.a(type, softsimpleinfo.type) && c.a(softclass, softsimpleinfo.softclass) && c.a(nick_name, softsimpleinfo.nick_name) && c.a(logourl, softsimpleinfo.logourl) && c.a(filesize, softsimpleinfo.filesize) && c.a(publishtime, softsimpleinfo.publishtime) && c.a(downloadtimes, softsimpleinfo.downloadtimes) && c.a(fileurl, softsimpleinfo.fileurl) && c.a(score, softsimpleinfo.score) && c.a(suser, softsimpleinfo.suser) && c.a(iProductID, softsimpleinfo.iProductID) && c.a(iSoftID, softsimpleinfo.iSoftID) && c.a(iFileID, softsimpleinfo.iFileID))
            flag = true;
        else
            flag = false;
        return flag;
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

    public final String getNick_name()
    {
        return nick_name;
    }

    public final String getPublishtime()
    {
        return publishtime;
    }

    public final int getScore()
    {
        return score;
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

    public final void readFrom(a a1)
    {
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 0, true);
        type = a1.b(1, false);
        softclass = a1.b(2, false);
        nick_name = a1.b(3, false);
        logourl = a1.b(4, false);
        filesize = a1.a(filesize, 5, false);
        publishtime = a1.b(6, false);
        downloadtimes = a1.a(downloadtimes, 7, false);
        fileurl = a1.b(8, false);
        score = a1.a(score, 9, false);
        suser = a1.a(suser, 10, false);
        iProductID = a1.a(iProductID, 11, false);
        iSoftID = a1.a(iSoftID, 12, false);
        iFileID = a1.a(iFileID, 13, false);
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

    public final void setNick_name(String s)
    {
        nick_name = s;
    }

    public final void setPublishtime(String s)
    {
        publishtime = s;
    }

    public final void setScore(int i)
    {
        score = i;
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

    public final void writeTo(e e1)
    {
        e1.a(softkey, 0);
        if(type != null)
            e1.a(type, 1);
        if(softclass != null)
            e1.a(softclass, 2);
        if(nick_name != null)
            e1.a(nick_name, 3);
        if(logourl != null)
            e1.a(logourl, 4);
        e1.a(filesize, 5);
        if(publishtime != null)
            e1.a(publishtime, 6);
        e1.a(downloadtimes, 7);
        if(fileurl != null)
            e1.a(fileurl, 8);
        e1.a(score, 9);
        e1.a(suser, 10);
        e1.a(iProductID, 11);
        e1.a(iSoftID, 12);
        e1.a(iFileID, 13);
    }

    static final boolean $assertionsDisabled;
    static SoftKey cache_softkey;
    public int downloadtimes;
    public int filesize;
    public String fileurl;
    public int iFileID;
    public int iProductID;
    public int iSoftID;
    public String logourl;
    public String nick_name;
    public String publishtime;
    public int score;
    public String softclass;
    public SoftKey softkey;
    public int suser;
    public String type;

    static 
    {
        boolean flag;
        if(!QQPIM/SoftSimpleInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
