// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.net;

import org.apache.http.HttpEntity;

public interface INetEngineObserver
{

    public abstract void binaryPostResponse(int i, HttpEntity httpentity, String s);
}
