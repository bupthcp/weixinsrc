// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

// Referenced classes of package QQPIM:
//            SoftKey

public final class DownSoftInfo extends g
{

    public DownSoftInfo()
    {
        nProductId = 0;
        nSoftId = 0;
        nFileId = 0;
        nSuccess = 0;
        nDownSize = 0;
        nUsedTime = 0;
        nMaxSpeed = 0;
        nAvgSpeed = 0;
        nRetryTimes = 0;
        nDownType = 0;
        softkey = null;
    }

    public DownSoftInfo(int i, int j, int k, byte byte0, int l, int i1, int j1, 
            int k1, int l1, byte byte1, SoftKey softkey1)
    {
        nProductId = 0;
        nSoftId = 0;
        nFileId = 0;
        nSuccess = 0;
        nDownSize = 0;
        nUsedTime = 0;
        nMaxSpeed = 0;
        nAvgSpeed = 0;
        nRetryTimes = 0;
        nDownType = 0;
        softkey = null;
        nProductId = i;
        nSoftId = j;
        nFileId = k;
        nSuccess = byte0;
        nDownSize = l;
        nUsedTime = i1;
        nMaxSpeed = j1;
        nAvgSpeed = k1;
        nRetryTimes = l1;
        nDownType = byte1;
        softkey = softkey1;
    }

    public final String className()
    {
        return "QQPIM.DownSoftInfo";
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
        h1.a(nProductId, "nProductId");
        h1.a(nSoftId, "nSoftId");
        h1.a(nFileId, "nFileId");
        h1.a(nSuccess, "nSuccess");
        h1.a(nDownSize, "nDownSize");
        h1.a(nUsedTime, "nUsedTime");
        h1.a(nMaxSpeed, "nMaxSpeed");
        h1.a(nAvgSpeed, "nAvgSpeed");
        h1.a(nRetryTimes, "nRetryTimes");
        h1.a(nDownType, "nDownType");
        h1.a(softkey, "softkey");
    }

    public final boolean equals(Object obj)
    {
        DownSoftInfo downsoftinfo = (DownSoftInfo)obj;
        boolean flag;
        if(c.a(nProductId, downsoftinfo.nProductId) && c.a(nSoftId, downsoftinfo.nSoftId) && c.a(nFileId, downsoftinfo.nFileId) && c.a(nSuccess, downsoftinfo.nSuccess) && c.a(nDownSize, downsoftinfo.nDownSize) && c.a(nUsedTime, downsoftinfo.nUsedTime) && c.a(nMaxSpeed, downsoftinfo.nMaxSpeed) && c.a(nAvgSpeed, downsoftinfo.nAvgSpeed) && c.a(nRetryTimes, downsoftinfo.nRetryTimes) && c.a(nDownType, downsoftinfo.nDownType) && c.a(softkey, downsoftinfo.softkey))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getNAvgSpeed()
    {
        return nAvgSpeed;
    }

    public final int getNDownSize()
    {
        return nDownSize;
    }

    public final byte getNDownType()
    {
        return nDownType;
    }

    public final int getNFileId()
    {
        return nFileId;
    }

    public final int getNMaxSpeed()
    {
        return nMaxSpeed;
    }

    public final int getNProductId()
    {
        return nProductId;
    }

    public final int getNRetryTimes()
    {
        return nRetryTimes;
    }

    public final int getNSoftId()
    {
        return nSoftId;
    }

    public final byte getNSuccess()
    {
        return nSuccess;
    }

    public final int getNUsedTime()
    {
        return nUsedTime;
    }

    public final SoftKey getSoftkey()
    {
        return softkey;
    }

    public final void readFrom(a a1)
    {
        nProductId = a1.a(nProductId, 0, true);
        nSoftId = a1.a(nSoftId, 1, true);
        nFileId = a1.a(nFileId, 2, true);
        nSuccess = a1.a(nSuccess, 3, true);
        nDownSize = a1.a(nDownSize, 4, true);
        nUsedTime = a1.a(nUsedTime, 5, true);
        nMaxSpeed = a1.a(nMaxSpeed, 6, true);
        nAvgSpeed = a1.a(nAvgSpeed, 7, true);
        nRetryTimes = a1.a(nRetryTimes, 8, true);
        nDownType = a1.a(nDownType, 9, true);
        if(cache_softkey == null)
            cache_softkey = new SoftKey();
        softkey = (SoftKey)a1.a(cache_softkey, 10, true);
    }

    public final void setNAvgSpeed(int i)
    {
        nAvgSpeed = i;
    }

    public final void setNDownSize(int i)
    {
        nDownSize = i;
    }

    public final void setNDownType(byte byte0)
    {
        nDownType = byte0;
    }

    public final void setNFileId(int i)
    {
        nFileId = i;
    }

    public final void setNMaxSpeed(int i)
    {
        nMaxSpeed = i;
    }

    public final void setNProductId(int i)
    {
        nProductId = i;
    }

    public final void setNRetryTimes(int i)
    {
        nRetryTimes = i;
    }

    public final void setNSoftId(int i)
    {
        nSoftId = i;
    }

    public final void setNSuccess(byte byte0)
    {
        nSuccess = byte0;
    }

    public final void setNUsedTime(int i)
    {
        nUsedTime = i;
    }

    public final void setSoftkey(SoftKey softkey1)
    {
        softkey = softkey1;
    }

    public final void writeTo(e e1)
    {
        e1.a(nProductId, 0);
        e1.a(nSoftId, 1);
        e1.a(nFileId, 2);
        e1.a(nSuccess, 3);
        e1.a(nDownSize, 4);
        e1.a(nUsedTime, 5);
        e1.a(nMaxSpeed, 6);
        e1.a(nAvgSpeed, 7);
        e1.a(nRetryTimes, 8);
        e1.a(nDownType, 9);
        e1.a(softkey, 10);
    }

    static final boolean $assertionsDisabled;
    static SoftKey cache_softkey;
    public int nAvgSpeed;
    public int nDownSize;
    public byte nDownType;
    public int nFileId;
    public int nMaxSpeed;
    public int nProductId;
    public int nRetryTimes;
    public int nSoftId;
    public byte nSuccess;
    public int nUsedTime;
    public SoftKey softkey;

    static 
    {
        boolean flag;
        if(!QQPIM/DownSoftInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
