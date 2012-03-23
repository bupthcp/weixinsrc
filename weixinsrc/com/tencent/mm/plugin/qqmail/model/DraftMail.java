// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import c.a.a.b.a;
import c.a.a.c;
import com.tencent.mm.protobuf.BaseProtoBuf;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            MailAddr, UploadFileStatus

public class DraftMail extends BaseProtoBuf
{

    public DraftMail()
    {
        f = new LinkedList();
        h = new LinkedList();
        j = new LinkedList();
        l = new LinkedList();
    }

    public static DraftMail a(byte abyte0[])
    {
        a a1;
        int i1;
        DraftMail draftmail;
        a1 = new a(abyte0, a);
        i1 = a(a1);
        draftmail = new DraftMail();
_L11:
        if(i1 <= 0)
            break MISSING_BLOCK_LABEL_625;
        i1;
        JVM INSTR tableswitch 1 8: default 76
    //                   1 96
    //                   2 111
    //                   3 126
    //                   4 243
    //                   5 360
    //                   6 477
    //                   7 595
    //                   8 610;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9
_L9:
        break MISSING_BLOCK_LABEL_610;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        boolean flag = false;
_L12:
        if(!flag)
            a1.g();
        i1 = a(a1);
        if(true) goto _L11; else goto _L10
_L10:
        draftmail.a(a1.a());
        flag = true;
          goto _L12
_L3:
        draftmail.a(a1.b());
        flag = true;
          goto _L12
_L4:
        LinkedList linkedlist3 = a1.a(3);
        for(int i2 = 0; i2 < linkedlist3.size(); i2++)
        {
            byte abyte4[] = (byte[])linkedlist3.get(i2);
            MailAddr mailaddr2 = new MailAddr();
            a a5 = new a(abyte4, a);
            for(boolean flag4 = true; flag4; flag4 = com.tencent.mm.plugin.qqmail.model.MailAddr.a(a5, mailaddr2, a(a5)));
            if(!draftmail.g)
                draftmail.g = true;
            draftmail.f.add(mailaddr2);
        }

        flag = true;
          goto _L12
_L5:
        LinkedList linkedlist2 = a1.a(4);
        for(int l1 = 0; l1 < linkedlist2.size(); l1++)
        {
            byte abyte3[] = (byte[])linkedlist2.get(l1);
            MailAddr mailaddr1 = new MailAddr();
            a a4 = new a(abyte3, a);
            for(boolean flag3 = true; flag3; flag3 = com.tencent.mm.plugin.qqmail.model.MailAddr.a(a4, mailaddr1, a(a4)));
            if(!draftmail.i)
                draftmail.i = true;
            draftmail.h.add(mailaddr1);
        }

        flag = true;
          goto _L12
_L6:
        LinkedList linkedlist1 = a1.a(5);
        for(int k1 = 0; k1 < linkedlist1.size(); k1++)
        {
            byte abyte2[] = (byte[])linkedlist1.get(k1);
            MailAddr mailaddr = new MailAddr();
            a a3 = new a(abyte2, a);
            for(boolean flag2 = true; flag2; flag2 = com.tencent.mm.plugin.qqmail.model.MailAddr.a(a3, mailaddr, a(a3)));
            if(!draftmail.k)
                draftmail.k = true;
            draftmail.j.add(mailaddr);
        }

        flag = true;
          goto _L12
_L7:
        LinkedList linkedlist = a1.a(6);
        for(int j1 = 0; j1 < linkedlist.size(); j1++)
        {
            byte abyte1[] = (byte[])linkedlist.get(j1);
            UploadFileStatus uploadfilestatus = new UploadFileStatus();
            a a2 = new a(abyte1, a);
            for(boolean flag1 = true; flag1; flag1 = com.tencent.mm.plugin.qqmail.model.UploadFileStatus.a(a2, uploadfilestatus, a(a2)));
            if(!draftmail.m)
                draftmail.m = true;
            draftmail.l.add(uploadfilestatus);
        }

        flag = true;
          goto _L12
_L8:
        draftmail.b(a1.b());
        flag = true;
          goto _L12
        draftmail.c(a1.b());
        flag = true;
          goto _L12
        return draftmail.k();
    }

    private DraftMail k()
    {
        if(!c || !q)
            throw new c((new StringBuilder()).append("Not all required fields were included (false = not included in message),  composeType:").append(c).append(" content:").append(q).append("").toString());
        else
            return this;
    }

    public final int a()
    {
        int i1 = 0 + c.a.a.a.a(1, b);
        if(e)
            i1 += c.a.a.a.a(2, d);
        if(o)
            i1 += c.a.a.a.a(7, n);
        return i1 + c.a.a.a.a(8, p) + (0 + c.a.a.a.a(3, 8, f) + c.a.a.a.a(4, 8, h) + c.a.a.a.a(5, 8, j) + c.a.a.a.a(6, 8, l));
    }

    public final DraftMail a(int i1)
    {
        b = i1;
        c = true;
        return this;
    }

    public final DraftMail a(String s)
    {
        d = s;
        e = true;
        return this;
    }

    public final DraftMail a(LinkedList linkedlist)
    {
        if(!g)
            g = true;
        f = linkedlist;
        return this;
    }

    public final void a(c.a.a.c.a a1)
    {
        a1.a(1, b);
        if(e)
            a1.a(2, d);
        a1.a(3, 8, f);
        a1.a(4, 8, h);
        a1.a(5, 8, j);
        a1.a(6, 8, l);
        if(o)
            a1.a(7, n);
        a1.a(8, p);
    }

    public final DraftMail b(String s)
    {
        n = s;
        o = true;
        return this;
    }

    public final DraftMail b(LinkedList linkedlist)
    {
        if(!i)
            i = true;
        h = linkedlist;
        return this;
    }

    public final byte[] b()
    {
        k();
        return super.b();
    }

    public final int c()
    {
        return b;
    }

    public final DraftMail c(String s)
    {
        p = s;
        q = true;
        return this;
    }

    public final DraftMail c(LinkedList linkedlist)
    {
        if(!k)
            k = true;
        j = linkedlist;
        return this;
    }

    public final DraftMail d(LinkedList linkedlist)
    {
        if(!m)
            m = true;
        l = linkedlist;
        return this;
    }

    public final String d()
    {
        return d;
    }

    public final LinkedList e()
    {
        return f;
    }

    public final LinkedList f()
    {
        return h;
    }

    public final LinkedList g()
    {
        return j;
    }

    public final LinkedList h()
    {
        return l;
    }

    public final String i()
    {
        return n;
    }

    public final String j()
    {
        return p;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append(getClass().getName()).append("(").toString();
        String s1 = (new StringBuilder()).append(s).append("composeType = ").append(b).append("   ").toString();
        if(e)
            s1 = (new StringBuilder()).append(s1).append("mailId = ").append(d).append("   ").toString();
        String s2 = (new StringBuilder()).append(s1).append("toList = ").append(f).append("   ").toString();
        String s3 = (new StringBuilder()).append(s2).append("ccList = ").append(h).append("   ").toString();
        String s4 = (new StringBuilder()).append(s3).append("bccList = ").append(j).append("   ").toString();
        String s5 = (new StringBuilder()).append(s4).append("uploadFiles = ").append(l).append("   ").toString();
        if(o)
            s5 = (new StringBuilder()).append(s5).append("subject = ").append(n).append("   ").toString();
        String s6 = (new StringBuilder()).append(s5).append("content = ").append(p).append("   ").toString();
        return (new StringBuilder()).append(s6).append(")").toString();
    }

    private int b;
    private boolean c;
    private String d;
    private boolean e;
    private LinkedList f;
    private boolean g;
    private LinkedList h;
    private boolean i;
    private LinkedList j;
    private boolean k;
    private LinkedList l;
    private boolean m;
    private String n;
    private boolean o;
    private String p;
    private boolean q;
}
