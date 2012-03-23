// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.storage.MsgInfo;
import java.util.List;

public interface IOnNewMsgNotify
{

    public abstract void a(MsgInfo msginfo);

    public abstract void a(List list);
}
