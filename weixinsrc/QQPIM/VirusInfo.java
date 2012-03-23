// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;
import java.util.ArrayList;

// Referenced classes of package QQPIM:
//            VirusFeature

public final class VirusInfo extends g
{

    public VirusInfo()
    {
        id = 0;
        name = "";
        timestamp = 0;
        ostype = 0;
        description = "";
        features = null;
    }

    public VirusInfo(int i, String s, int j, byte byte0, String s1, ArrayList arraylist)
    {
        id = 0;
        name = "";
        timestamp = 0;
        ostype = 0;
        description = "";
        features = null;
        id = i;
        name = s;
        timestamp = j;
        ostype = byte0;
        description = s1;
        features = arraylist;
    }

    public final String className()
    {
        return "QQPIM.VirusInfo";
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
        h1.a(id, "id");
        h1.a(name, "name");
        h1.a(timestamp, "timestamp");
        h1.a(ostype, "ostype");
        h1.a(description, "description");
        h1.a(features, "features");
    }

    public final boolean equals(Object obj)
    {
        VirusInfo virusinfo = (VirusInfo)obj;
        boolean flag;
        if(c.a(id, virusinfo.id) && c.a(name, virusinfo.name) && c.a(timestamp, virusinfo.timestamp) && c.a(ostype, virusinfo.ostype) && c.a(description, virusinfo.description) && c.a(features, virusinfo.features))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String getDescription()
    {
        return description;
    }

    public final ArrayList getFeatures()
    {
        return features;
    }

    public final int getId()
    {
        return id;
    }

    public final String getName()
    {
        return name;
    }

    public final byte getOstype()
    {
        return ostype;
    }

    public final int getTimestamp()
    {
        return timestamp;
    }

    public final void readFrom(a a1)
    {
        id = a1.a(id, 0, true);
        name = a1.b(1, true);
        timestamp = a1.a(timestamp, 2, true);
        ostype = a1.a(ostype, 3, true);
        description = a1.b(4, true);
        if(cache_features == null)
        {
            cache_features = new ArrayList();
            VirusFeature virusfeature = new VirusFeature();
            cache_features.add(virusfeature);
        }
        setFeatures((ArrayList)a1.a(cache_features, 5, true));
    }

    public final void setDescription(String s)
    {
        description = s;
    }

    public final void setFeatures(ArrayList arraylist)
    {
        features = arraylist;
    }

    public final void setId(int i)
    {
        id = i;
    }

    public final void setName(String s)
    {
        name = s;
    }

    public final void setOstype(byte byte0)
    {
        ostype = byte0;
    }

    public final void setTimestamp(int i)
    {
        timestamp = i;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(name, 1);
        e1.a(timestamp, 2);
        e1.a(ostype, 3);
        e1.a(description, 4);
        e1.a(features, 5);
    }

    static final boolean $assertionsDisabled;
    static ArrayList cache_features;
    public String description;
    public ArrayList features;
    public int id;
    public String name;
    public byte ostype;
    public int timestamp;

    static 
    {
        boolean flag;
        if(!QQPIM/VirusInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
