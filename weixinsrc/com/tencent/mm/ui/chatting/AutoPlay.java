// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.widget.PopupWindow;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelvoice.IOnVoiceMsgReceivedNotify;
import com.tencent.mm.modelvoice.VoicePlayer;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.ui.MMAppMgr;
import com.tencent.mm.ui.MMToast;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            ChattingUI, ChattingListAdapter

class AutoPlay
    implements IOnVoiceMsgReceivedNotify, com.tencent.mm.modelvoice.SceneVoice.Player.OnCompletionListener, com.tencent.mm.modelvoice.SceneVoice.Player.OnErrorListener
{

    public AutoPlay(ChattingUI chattingui)
    {
        b = false;
        d = -1L;
        f = chattingui;
    }

    private void b(MsgInfo msginfo)
    {
        if(msginfo != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(!MMCore.f().c())
        {
            if(a.size() > 0)
            {
                a.clear();
                com.tencent.mm.ui.MMToast.ToastSdcard.a(f, 1);
            }
            continue; /* Loop/switch isn't completed */
        }
        int k = a.size();
        for(int l = 0; l < k; l++)
            if(((MsgInfo)a.get(l)).b() == msginfo.b())
                continue; /* Loop/switch isn't completed */

        a.add(msginfo);
        Log.d("MicroMsg.AutoPlay", (new StringBuilder()).append("add voice msg :").append(a.size()).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a()
    {
        Log.d("MicroMsg.AutoPlay", "clear play list");
        if(e != null)
            e.dismiss();
        a.clear();
    }

    public final void a(int k, MsgInfo msginfo)
    {
        if(msginfo != null && msginfo.k())
        {
            com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent voicecontent = new com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent(msginfo.i());
            if((voicecontent.c() != 0L || msginfo.f() != 0) && (msginfo.e() != 1 || msginfo.f() != 1) && voicecontent.c() != -1L)
            {
label0:
                {
                    a();
                    if(!c.a() || msginfo.b() != d)
                        break label0;
                    a(true);
                }
            }
        }
_L5:
        return;
        b(msginfo);
        if(msginfo.f() != 0 || MsgInfoStorageLogic.c(msginfo)) goto _L2; else goto _L1
_L1:
        int l = k + 1;
_L8:
        ChattingListAdapter chattinglistadapter = f.z();
        if(chattinglistadapter != null) goto _L4; else goto _L3
_L3:
        Log.a("MicroMsg.AutoPlay", "add next failed: null adapter");
_L2:
        h();
          goto _L5
_L4:
        Log.d("MicroMsg.AutoPlay", (new StringBuilder()).append("position : ").append(l).append("adapter getCount = ").append(chattinglistadapter.getCount()).toString());
        if(l < 0 || l >= chattinglistadapter.getCount()) goto _L2; else goto _L6
_L6:
        MsgInfo msginfo1 = (MsgInfo)chattinglistadapter.getItem(l);
        if(msginfo1 == null) goto _L2; else goto _L7
_L7:
        if(msginfo1.k() && msginfo1.f() == 0 && !MsgInfoStorageLogic.c(msginfo1) && !MsgInfoStorageLogic.d(msginfo1))
            b(msginfo1);
        l++;
          goto _L8
    }

    public final void a(MsgInfo msginfo)
    {
_L2:
        return;
        if(msginfo == null || !msginfo.k() || msginfo.f() == 1 || msginfo.h() == null || !msginfo.h().equals(f.o()) || !MMAppMgr.d() || f.isFinishing()) goto _L2; else goto _L1
_L1:
        if(MsgInfoStorageLogic.d(msginfo))
        {
            Log.a("MicroMsg.AutoPlay", "should not in this route");
        } else
        {
            b(msginfo);
            if(!b && !c.a() && Util.c(f))
                h();
        }
        if(true) goto _L2; else goto _L3
_L3:
    }

    public final void a(boolean flag)
    {
        Log.d("MicroMsg.AutoPlay", "stop play");
        MMEntryLock.b("keep_app_silent");
        c.b();
        f.w();
        int k = a.size();
        int l = 0;
        int i1 = -1;
        while(l < k) 
        {
            int j1;
            if(((MsgInfo)a.get(l)).b() == d)
                j1 = l;
            else
                j1 = i1;
            l++;
            i1 = j1;
        }
        if(i1 != -1)
            a.remove(i1);
        Log.d("MicroMsg.AutoPlay", (new StringBuilder()).append("remove voice msg : size = ").append(a.size()).toString());
        if(flag)
            f.z().notifyDataSetChanged();
        d = -1L;
    }

    public final void b()
    {
        b = true;
        a(true);
        a();
    }

    public final void c()
    {
        b = false;
        h();
    }

    public final void d()
    {
        if(c.a())
            h();
    }

    public final long g()
    {
        return d;
    }

    public final void h()
    {
        Log.d("MicroMsg.AutoPlay", (new StringBuilder()).append("play next: size = ").append(a.size()).toString());
        if(a.size() > 0)
        {
            long l = ((MsgInfo)a.get(0)).g();
            int k = a.size();
            int i1 = 1;
            int j1 = 0;
            while(i1 < k) 
            {
                MsgInfo msginfo;
                boolean flag;
                long l1;
                int k1;
                if(l > ((MsgInfo)a.get(i1)).g())
                {
                    l1 = ((MsgInfo)a.get(i1)).g();
                    k1 = i1;
                } else
                {
                    l1 = l;
                    k1 = j1;
                }
                i1++;
                j1 = k1;
                l = l1;
            }
            msginfo = (MsgInfo)a.get(j1);
            if(msginfo != null && msginfo.k())
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
            if(!MMCore.f().c() && !Util.i(msginfo.j()))
            {
                a.clear();
                com.tencent.mm.ui.MMToast.ToastSdcard.a(f, 1);
            } else
            {
                if(MMCore.f().c() && f.x())
                {
                    if(e != null)
                        e.dismiss();
                    e = MMToast.a(f, f.getString(0x7f0a0175), 2000L);
                }
                MMEntryLock.a("keep_app_silent");
                MsgInfoStorageLogic.e(msginfo);
                c.b();
                f.v();
                if(c.a(msginfo.j(), f.y()))
                {
                    VoicePlayer.a(f, f.y());
                    c.a(this);
                    c.a(this);
                    d = msginfo.b();
                } else
                {
                    d = -1L;
                    Toast.makeText(f, f.getString(0x7f0a0155), 0).show();
                }
                f.z().notifyDataSetChanged();
            }
        }
    }

    public final void i()
    {
        if(c != null && c.a())
        {
            c.a(f.y());
            VoicePlayer.a(f, f.y());
        }
    }

    public final boolean j()
    {
        return c.a();
    }

    public final void l_()
    {
        Log.e("MicroMsg.AutoPlay", "voice play completion");
        a(true);
        Util.a(f, 0x7f0a000a);
        f.w();
        h();
    }

    public final void m_()
    {
        Log.e("MicroMsg.AutoPlay", "voice play error");
        a(true);
        h();
    }

    private final List a = new LinkedList();
    private boolean b;
    private final com.tencent.mm.modelvoice.SceneVoice.Player c = new com.tencent.mm.modelvoice.SceneVoice.Player();
    private long d;
    private PopupWindow e;
    private final ChattingUI f;
}
