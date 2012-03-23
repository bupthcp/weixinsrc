// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network.connpool;

import java.util.Map;
import java.util.Queue;

public interface IOnSocketRecv
{

    public abstract void a(int i, int j, String s, byte abyte0[], Object obj);

    public abstract void a(int i, int j, byte abyte0[]);

    public abstract void a(Map map, Queue queue);

    public abstract void b(boolean flag);
}
