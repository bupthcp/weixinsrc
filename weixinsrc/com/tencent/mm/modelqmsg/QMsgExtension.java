// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelqmsg;

import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelbase.IMessageExtension;
import com.tencent.mm.modelimage.ImgInfo;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelqmsg:
//            QContactStorage, QContact

public class QMsgExtension
    implements IMessageExtension
{

    public QMsgExtension()
    {
    }

    public static void a(String s, String s1)
    {
        Contact contact = MMCore.f().h().c(s);
        if(contact == null || contact.o() == 0)
        {
            Contact contact1 = new Contact(s);
            contact1.j();
            contact1.b(s1);
            contact1.g(4);
            contact1.a(-1L);
            MMCore.f().h().c(contact1);
            AvatarLogic.e(contact1.s());
        }
        QContact qcontact = MMCore.f().D().a(s);
        if(qcontact == null || Util.h(qcontact.b()).length() <= 0)
        {
            QContact qcontact1 = new QContact();
            qcontact1.a(-1);
            qcontact1.b(1);
            qcontact1.a(s);
            qcontact1.b(0L);
            qcontact1.c(0L);
            if(!MMCore.f().D().a(qcontact1))
                Log.a("MicroMsg.QMsgExtension", "processModQContact: insert qcontact failed");
        }
    }

    public final MsgInfo a(com.tencent.mm.protocal.MMSync.CmdAddMsg cmdaddmsg)
    {
        boolean flag;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        String s;
        String s1;
        MsgInfo msginfo;
        QContact qcontact;
        long l;
        boolean flag4;
        int i;
        MsgInfo msginfo1;
        if(cmdaddmsg != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        if(cmdaddmsg.f() == 36 || cmdaddmsg.f() == 39)
            flag1 = true;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(Util.h(cmdaddmsg.d()).length() > 0)
            flag2 = true;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        if(Util.h(cmdaddmsg.e()).length() > 0)
            flag3 = true;
        else
            flag3 = false;
        Assert.assertTrue(flag3);
        Log.d("MicroMsg.QMsgExtension", (new StringBuilder()).append("parseQMsg content:").append(cmdaddmsg.g()).toString());
        s = (String)MMCore.f().f().a(2);
        if(s.equals(cmdaddmsg.d()))
            s1 = cmdaddmsg.e();
        else
            s1 = cmdaddmsg.d();
        msginfo = MMCore.f().i().a(s1, cmdaddmsg.c());
        if(msginfo.b() == 0L)
        {
            msginfo = new MsgInfo();
            msginfo.b(cmdaddmsg.c());
            msginfo.b(MsgInfoStorageLogic.a(cmdaddmsg.d(), cmdaddmsg.k()));
        }
        msginfo.c(cmdaddmsg.f());
        msginfo.a(s1);
        qcontact = MMCore.f().D().a(s1);
        if(qcontact == null || Util.h(qcontact.b()).length() <= 0)
        {
            QContact qcontact1 = new QContact();
            qcontact1.a(s1);
            qcontact1.b(1);
            qcontact1.a(9);
            if(!MMCore.f().D().a(qcontact1))
                Log.a("MicroMsg.QMsgExtension", (new StringBuilder()).append("parseQMsg : insert QContact failed : username = ").append(qcontact1.b()).toString());
        }
        l = -1L;
        if(cmdaddmsg.i() == 2 && msginfo.b() == 0L)
        {
            ImgInfoStorage imginfostorage = MMCore.f().k();
            byte abyte0[] = cmdaddmsg.j();
            cmdaddmsg.i();
            l = imginfostorage.a(abyte0, cmdaddmsg.c());
            if(l > 0L)
                msginfo.c((new StringBuilder()).append("THUMBNAIL://").append(l).toString());
        }
        if(cmdaddmsg.f() == 36)
        {
            String s2 = cmdaddmsg.g();
            ImgInfo imginfo;
            boolean flag5;
            boolean flag6;
            boolean flag7;
            boolean flag8;
            Contact contact;
            QMsgContent qmsgcontent;
            if(msginfo != null)
                flag5 = true;
            else
                flag5 = false;
            Assert.assertTrue(flag5);
            if(Util.h(s2).length() > 0)
                flag6 = true;
            else
                flag6 = false;
            Assert.assertTrue(flag6);
            if(Util.h(msginfo.h()).length() > 0)
                flag7 = true;
            else
                flag7 = false;
            Assert.assertTrue(flag7);
            flag8 = false;
            contact = MMCore.f().h().c(msginfo.h());
            if(contact == null || Util.h(contact.s()).length() <= 0)
            {
                flag8 = true;
                contact = new Contact(msginfo.h());
            }
            qmsgcontent = new QMsgContent();
            qmsgcontent.a(s2);
            if(!flag8)
                contact.a(32768L);
            contact.k(qmsgcontent.a());
            msginfo.b(qmsgcontent.b());
            if(flag8)
                MMCore.f().h().c(contact);
            else
                MMCore.f().h().a(contact.s(), contact);
        }
        if(MMCore.f().m().d(cmdaddmsg.d()) || s.equals(cmdaddmsg.d()))
            flag4 = true;
        else
            flag4 = false;
        if(flag4)
        {
            msginfo.e(1);
            i = cmdaddmsg.h();
            msginfo1 = msginfo;
        } else
        {
            msginfo.e(0);
            if(cmdaddmsg.h() > 3)
            {
                i = cmdaddmsg.h();
                msginfo1 = msginfo;
            } else
            {
                i = 3;
                msginfo1 = msginfo;
            }
        }
        msginfo1.d(i);
        if(msginfo.b() == 0L)
        {
            msginfo.a(MsgInfoStorageLogic.b(msginfo));
            if(cmdaddmsg.i() == 2)
            {
                imginfo = MMCore.f().k().a(l);
                imginfo.d((int)msginfo.b());
                MMCore.f().k().a(l, imginfo);
            }
        } else
        {
            MMCore.f().i().a(cmdaddmsg.c(), msginfo);
        }
        return msginfo;
    }

    private class QMsgContent
    {

        public final String a()
        {
            String s;
            if(a == null)
                s = "";
            else
                s = a;
            return s;
        }

        public final void a(String s)
        {
            Map map = Util.b(s, "msg");
            if(map != null)
            {
                a = (String)map.get(".msg.from.displayname");
                b = (String)map.get(".msg.content.t");
            }
        }

        public final String b()
        {
            String s;
            if(b == null)
                s = "";
            else
                s = b;
            return s;
        }

        private String a;
        private String b;

        QMsgContent()
        {
            this((byte)0);
        }

        private QMsgContent(byte byte0)
        {
            a = "";
            b = "";
        }
    }

}
