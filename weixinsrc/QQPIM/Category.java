// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class Category extends g
{

    public Category()
    {
        id = 0;
        name = "";
        icon = "";
        count = 0;
    }

    public Category(int i, String s, String s1, int j)
    {
        id = 0;
        name = "";
        icon = "";
        count = 0;
        id = i;
        name = s;
        icon = s1;
        count = j;
    }

    public final String className()
    {
        return "QQPIM.Category";
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
        h1.a(icon, "icon");
        h1.a(count, "count");
    }

    public final boolean equals(Object obj)
    {
        Category category = (Category)obj;
        boolean flag;
        if(c.a(id, category.id) && c.a(name, category.name) && c.a(icon, category.icon) && c.a(count, category.count))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int getCount()
    {
        return count;
    }

    public final String getIcon()
    {
        return icon;
    }

    public final int getId()
    {
        return id;
    }

    public final String getName()
    {
        return name;
    }

    public final void readFrom(a a1)
    {
        id = a1.a(id, 0, true);
        name = a1.b(1, true);
        icon = a1.b(2, true);
        count = a1.a(count, 3, true);
    }

    public final void setCount(int i)
    {
        count = i;
    }

    public final void setIcon(String s)
    {
        icon = s;
    }

    public final void setId(int i)
    {
        id = i;
    }

    public final void setName(String s)
    {
        name = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(id, 0);
        e1.a(name, 1);
        e1.a(icon, 2);
        e1.a(count, 3);
    }

    static final boolean $assertionsDisabled;
    public int count;
    public String icon;
    public int id;
    public String name;

    static 
    {
        boolean flag;
        if(!QQPIM/Category.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
