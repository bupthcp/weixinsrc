// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a;

import a.a.a;
import java.util.*;

// Referenced classes of package a:
//            n, i, g, l, 
//            a, k, h

public final class j
    implements n
{

    public j()
    {
    }

    private h b(k k)
    {
        Iterator iterator = b.iterator();
_L2:
        n n1;
        if(!iterator.hasNext())
            throw a.g.a();
        n1 = (n)iterator.next();
        h h = n1.a(k, a);
        return h;
        i i1;
        i1;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final h a(k k)
    {
        if(b.isEmpty())
            a(((Map) (null)));
        return b(k);
    }

    public final h a(k k, Map map)
    {
        a(map);
        return b(k);
    }

    public final void a()
    {
        Iterator iterator = b.iterator();
        do
        {
            if(!iterator.hasNext())
                return;
            ((n)iterator.next()).a();
        } while(true);
    }

    public final void a(Map map)
    {
        a = map;
        if(map != null)
            map.containsKey(l.c);
        Collection collection;
        if(map == null)
            collection = null;
        else
            collection = (Collection)map.get(l.b);
        b.clear();
        if(collection != null && collection.contains(a))
            b.add(new a());
        if(b.isEmpty())
            b.add(new a());
    }

    private Map a;
    private final List b = new ArrayList();
}
