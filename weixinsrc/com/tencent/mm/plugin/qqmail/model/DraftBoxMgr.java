// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.storage.ConfigStorage;
import java.io.File;
import java.io.IOException;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            FileCache, DraftMail

public class DraftBoxMgr
{

    public DraftBoxMgr(String s)
    {
        a = new FileCache(s, 10);
    }

    private static String c(String s, int i)
    {
        String s1;
        if(s == null || s.length() == 0)
            s1 = (new StringBuilder()).append("").append(MMCore.f().f().a(9)).toString();
        else
            s1 = (new StringBuilder()).append(s).append("_").append(i).toString();
        return s1;
    }

    public final DraftMail a(String s, int i)
    {
        DraftMail draftmail;
        byte abyte0[];
        draftmail = null;
        abyte0 = FileCache.a((new StringBuilder()).append(a.a()).append(c(s, i)).toString());
        if(abyte0 != null && abyte0.length != 0) goto _L2; else goto _L1
_L1:
        return draftmail;
_L2:
        DraftMail draftmail1 = DraftMail.a(abyte0);
        draftmail = draftmail1;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a(DraftMail draftmail)
    {
        a.b();
        FileCache.a((new StringBuilder()).append(a.a()).append(c(draftmail.d(), draftmail.c())).toString(), draftmail.b());
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void b(String s, int i)
    {
        File file = new File((new StringBuilder()).append(a.a()).append(c(s, i)).toString());
        if(file.exists())
            file.delete();
    }

    private FileCache a;
}
