// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;


// Referenced classes of package com.tencent.qqpim.interfaces:
//            IEntity

public interface IVcard
{

    public abstract byte[] composeVcard(IEntity ientity);

    public abstract IEntity parseVcard(byte abyte0[]);
}
