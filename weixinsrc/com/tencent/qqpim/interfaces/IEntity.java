// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;

import com.tencent.qqpim.object.Record;
import java.util.List;

public interface IEntity
{

    public abstract int getCheckSum();

    public abstract int getCount();

    public abstract Record getCurrentValue();

    public abstract ENUM_ENTITY_TYPE getEntityType();

    public abstract List getGroupIds();

    public abstract String getId();

    public abstract boolean isAfterLast();

    public abstract boolean isEditGroupNumberData();

    public abstract boolean isEmpty();

    public abstract boolean isLast();

    public abstract boolean moveToFirst();

    public abstract boolean moveToNext();

    public abstract void putValue(Record record);

    public abstract void setId(String s);
}
