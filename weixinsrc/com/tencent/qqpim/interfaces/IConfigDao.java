// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;


public interface IConfigDao
{

    public abstract void addActionStaticData(int i, long l);

    public abstract boolean getBooleanValue(ConfigValueTag configvaluetag);

    public abstract boolean getBooleanValue(ConfigValueTag configvaluetag, boolean flag);

    public abstract float getFloatValue(ConfigValueTag configvaluetag);

    public abstract int getIntValue(ConfigValueTag configvaluetag);

    public abstract String getLC();

    public abstract long getLongValue(ConfigValueTag configvaluetag);

    public abstract String getStringValue(ConfigValueTag configvaluetag);

    public abstract boolean loadLibrary(String s);

    public abstract void setBooleanValue(ConfigValueTag configvaluetag, boolean flag);

    public abstract void setFloatValue(ConfigValueTag configvaluetag, float f);

    public abstract void setIntValue(ConfigValueTag configvaluetag, int i);

    public abstract void setLongValue(ConfigValueTag configvaluetag, long l);

    public abstract void setStringValue(ConfigValueTag configvaluetag, String s);

    public static final int MAX_ACTION_SUM = 50;
}
