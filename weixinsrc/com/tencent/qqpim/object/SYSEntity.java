// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;

import com.tencent.qqpim.interfaces.IEntity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.qqpim.object:
//            Record

public abstract class SYSEntity
    implements IEntity
{

    public SYSEntity()
    {
        currentIndex = Integer.valueOf(0);
        values = new ArrayList();
        _Id = new String();
    }

    public int getCount()
    {
        return values.size();
    }

    public Record getCurrentValue()
    {
        Record record;
        if(isEmpty())
            record = null;
        else
            record = (Record)values.get(currentIndex.intValue());
        return record;
    }

    public List getGroupIds()
    {
        return groupIds;
    }

    public String getId()
    {
        return _Id;
    }

    public boolean isAfterLast()
    {
        boolean flag;
        if(currentIndex.intValue() < values.size())
            flag = false;
        else
            flag = true;
        return flag;
    }

    public boolean isEditGroupNumberData()
    {
        return editGroupNumberData;
    }

    public boolean isEmpty()
    {
        boolean flag;
        if(values.size() > 0)
            flag = false;
        else
            flag = true;
        return flag;
    }

    public boolean isLast()
    {
        boolean flag;
        if(values.size() == 0 || currentIndex.intValue() == -1 + values.size())
            flag = true;
        else
            flag = false;
        return flag;
    }

    public boolean moveToFirst()
    {
        boolean flag = false;
        if(values.size() > 0)
        {
            currentIndex = Integer.valueOf(flag);
            flag = true;
        }
        return flag;
    }

    public boolean moveToNext()
    {
        currentIndex = Integer.valueOf(1 + currentIndex.intValue());
        return true;
    }

    public void putValue(Record record)
    {
        if(record != null)
            values.add(record);
    }

    public void putValue(ArrayList arraylist)
    {
        if(arraylist != null)
            values.addAll(arraylist);
    }

    public boolean removeCurrent()
    {
        boolean flag;
        if(currentIndex.intValue() >= values.size())
        {
            flag = false;
        } else
        {
            values.remove(currentIndex);
            flag = true;
        }
        return flag;
    }

    public void setEditGroupNumberData(boolean flag)
    {
        editGroupNumberData = flag;
    }

    public void setGroupIds(List list)
    {
        groupIds = list;
    }

    public void setId(String s)
    {
        _Id = s;
    }

    protected String _Id;
    protected Integer currentIndex;
    protected boolean editGroupNumberData;
    protected List groupIds;
    protected ArrayList values;
}
