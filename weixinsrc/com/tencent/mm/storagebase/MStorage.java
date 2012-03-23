// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storagebase;


// Referenced classes of package com.tencent.mm.storagebase:
//            MStorageEvent

public class MStorage
{

    public MStorage()
    {
    }

    public final void a(IOnStorageChange ionstoragechange)
    {
        a.a(ionstoragechange);
    }

    public final void b(IOnStorageChange ionstoragechange)
    {
        a.c(ionstoragechange);
    }

    public final void b(String s)
    {
        a.b(s);
        a.a();
    }

    public final void c()
    {
        a.b("*");
        a.a();
    }

    private final MStorageEvent a = new _cls1();

    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IOnStorageChange)obj).a_((String)obj1);
        }

        private MStorage a;

        _cls1()
        {
            a = MStorage.this;
            super();
        }

        private class IOnStorageChange
        {

            public abstract void a_(String s);
        }

    }

}
