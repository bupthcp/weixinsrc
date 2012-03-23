// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            DownSoftInfo

public final class DownInfo extends g
{

    public DownInfo()
    {
        sQUA = "";
        nGUID = 0;
        listDownSoftItems = null;
    }

    public DownInfo(String s, int i, ArrayList arraylist)
    {
        sQUA = "";
        nGUID = 0;
        listDownSoftItems = null;
        sQUA = s;
        nGUID = i;
        listDownSoftItems = arraylist;
    }

    public final String className()
    {
        return "QQPIM.DownInfo";
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
        h1.a(sQUA, "sQUA");
        h1.a(nGUID, "nGUID");
        h1.a(listDownSoftItems, "listDownSoftItems");
    }

    public final boolean equals(Object obj)
    {
        DownInfo downinfo = (DownInfo)obj;
        boolean flag;
        if(c.a(sQUA, downinfo.sQUA) && c.a(nGUID, downinfo.nGUID) && c.a(listDownSoftItems, downinfo.listDownSoftItems))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final ArrayList getListDownSoftItems()
    {
        return listDownSoftItems;
    }

    public final int getNGUID()
    {
        return nGUID;
    }

    public final String getSQUA()
    {
        return sQUA;
    }

    public final void readFrom(a a1)
    {
        sQUA = a1.b(0, true);
        nGUID = a1.a(nGUID, 1, true);
        if(cache_listDownSoftItems == null)
        {
            cache_listDownSoftItems = new ArrayList();
            DownSoftInfo downsoftinfo = new DownSoftInfo();
            cache_listDownSoftItems.add(downsoftinfo);
        }
        setListDownSoftItems((ArrayList)a1.a(cache_listDownSoftItems, 2, true));
    }

    public final void setListDownSoftItems(ArrayList arraylist)
    {
        listDownSoftItems = arraylist;
    }

    public final void setNGUID(int i)
    {
        nGUID = i;
    }

    public final void setSQUA(String s)
    {
        sQUA = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(sQUA, 0);
        e1.a(nGUID, 1);
        e1.a(listDownSoftItems, 2);
    }

    static final boolean $assertionsDisabled;
    static ArrayList cache_listDownSoftItems;
    public ArrayList listDownSoftItems;
    public int nGUID;
    public String sQUA;

    static 
    {
        boolean flag;
        if(!QQPIM/DownInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
