// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;

import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.qqpim.interfaces:
//            IEntity

public interface IDao
{

    public abstract String add(IEntity ientity);

    public abstract boolean add(ArrayList arraylist, ArrayList arraylist1, int ai[]);

    public abstract ENUM_IDaoReturnValue delete(String s);

    public abstract List getAllEntityId(String as[]);

    public abstract boolean isExisted(String s);

    public abstract IEntity query(String s);

    public abstract List query();

    public abstract String queryNameById(String s);

    public abstract int queryNumber();

    public abstract ENUM_IDaoReturnValue update(IEntity ientity);
}
