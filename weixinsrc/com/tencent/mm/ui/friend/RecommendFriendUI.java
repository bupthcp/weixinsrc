// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.InviteFriendOpen;
import com.tencent.mm.modelfriend.InviteFriendOpenStorage;
import com.tencent.mm.modelsimple.NetSceneGetInviteFriend;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.friend:
//            FriendListAdapter

public class RecommendFriendUI extends MMActivity
    implements IOnSceneEnd
{

    public RecommendFriendUI()
    {
        a = null;
        e = new LinkedList();
        f = new LinkedList();
        g = -1;
        i = false;
    }

    static void a(RecommendFriendUI recommendfriendui, int j)
    {
        recommendfriendui.h(j);
    }

    static boolean a(RecommendFriendUI recommendfriendui)
    {
        return recommendfriendui.h;
    }

    static FriendListAdapter b(RecommendFriendUI recommendfriendui)
    {
        return recommendfriendui.b;
    }

    private void b()
    {
        if(g != 0)
            finish();
        else
        if(h || i)
            finish();
        else
            p();
    }

    static void c(RecommendFriendUI recommendfriendui)
    {
        for(int j = 0; j < recommendfriendui.b.a().length; j++)
        {
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpInviteFriendOpen(recommendfriendui.b.a()[j], recommendfriendui.g));
            InviteFriendOpen invitefriendopen = new InviteFriendOpen();
            invitefriendopen.a(recommendfriendui.b.a()[j]);
            invitefriendopen.a(recommendfriendui.g);
            invitefriendopen.b((int)Util.c());
            MMCore.f().P().a(invitefriendopen);
        }

        MMAlert.a(recommendfriendui.c(), 0x7f0a0311, 0x7f0a0010, recommendfriendui. new _cls6());
    }

    static void d(RecommendFriendUI recommendfriendui)
    {
        recommendfriendui.b();
    }

    static ListView e(RecommendFriendUI recommendfriendui)
    {
        return recommendfriendui.c;
    }

    private void h(int j)
    {
        Log.c("MicroMsg.RecommendFriendUI", (new StringBuilder()).append("dealGetInviteFriendSuccess  respList.size:").append(e.size()).toString());
        b.a(e, j);
        c.setAdapter(b);
        h = false;
        if(g == 0)
        {
            String s = "";
            int k = 0;
            while(k < f.size()) 
            {
                String s1;
                if(j == ((com.tencent.mm.protocal.MMGetInviteFriend.FriendGroup)f.get(k)).a())
                    s1 = ((com.tencent.mm.protocal.MMGetInviteFriend.FriendGroup)f.get(k)).b();
                else
                    s1 = s;
                k++;
                s = s1;
            }
            d(s);
        }
        b.a(h);
        b.notifyDataSetChanged();
    }

    private void o()
    {
        d.setVisibility(0);
        c.setVisibility(8);
    }

    private void p()
    {
        boolean flag;
        if(g == 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue("dealGetInviteFriendGroupSuccess just only qq", flag);
        Log.c("MicroMsg.RecommendFriendUI", (new StringBuilder()).append("dealGetInviteFriendGroupSuccess  respList.size:").append(f.size()).toString());
        b.a(f);
        c.setAdapter(b);
        e(4);
        h = true;
        d(0x7f0a01bf);
        b.a(h);
        b.notifyDataSetChanged();
    }

    protected final int a()
    {
        return 0x7f030057;
    }

    public final void a(int j, int k, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.RecommendFriendUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(j).append(" errCode = ").append(k).append(" errMsg = ").append(s).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(j != 0 || k != 0 || netscenebase.b() != 13)
        {
            o();
        } else
        {
            e = ((NetSceneGetInviteFriend)netscenebase).g();
            f = ((NetSceneGetInviteFriend)netscenebase).h();
            i = false;
            if(e.size() <= 0)
                o();
            else
            if(g == 0 && f.size() <= 0)
                o();
            else
            if(g != 0)
                h(-1);
            else
                p();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        g = Integer.parseInt(getIntent().getStringExtra("recommend_type"));
        h = false;
        MMCore.g().a(13, this);
        d = (TextView)findViewById(0x7f070130);
        NetSceneGetInviteFriend netscenegetinvitefriend;
        if(g == 1)
        {
            d(0x7f0a01ba);
            d.setText(0x7f0a01be);
        } else
        if(g == 2)
        {
            d(0x7f0a01bb);
            d.setText(0x7f0a01bc);
        } else
        {
            d(0x7f0a01bf);
            d.setText(0x7f0a01bd);
        }
        b = new FriendListAdapter(getLayoutInflater());
        c = (ListView)findViewById(0x7f07012f);
        c.setOnItemClickListener(new _cls1());
        c.setAdapter(b);
        a(0x7f0a030e, new _cls2());
        e(4);
        i = true;
        netscenegetinvitefriend = new NetSceneGetInviteFriend(g);
        MMCore.g().b(netscenegetinvitefriend);
        a = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0313), true, new _cls5(netscenegetinvitefriend));
        b(new _cls3());
        a(new _cls4());
    }

    protected void onDestroy()
    {
        MMCore.g().b(13, this);
        super.onDestroy();
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        boolean flag;
        if(j == 4)
        {
            b();
            flag = true;
        } else
        {
            flag = super.onKeyDown(j, keyevent);
        }
        return flag;
    }

    private ProgressDialog a;
    private FriendListAdapter b;
    private ListView c;
    private TextView d;
    private List e;
    private List f;
    private int g;
    private boolean h;
    private boolean i;

    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int j)
        {
            a.finish();
        }

        private RecommendFriendUI a;

        _cls6()
        {
            a = RecommendFriendUI.this;
            super();
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int j, long l)
        {
            if(!RecommendFriendUI.a(a))
            {
                com.tencent.mm.ui.friend.RecommendFriendUI.b(a).a(j);
                if(com.tencent.mm.ui.friend.RecommendFriendUI.b(a).a().length > 0)
                    a.e(0);
                else
                    a.e(4);
            } else
            {
                RecommendFriendUI.a(a, com.tencent.mm.ui.friend.RecommendFriendUI.b(a).b(j));
            }
        }

        private RecommendFriendUI a;

        _cls1()
        {
            a = RecommendFriendUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            int j = com.tencent.mm.ui.friend.RecommendFriendUI.b(a).a().length;
            android.content.Context context = a.c();
            RecommendFriendUI recommendfriendui = a;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(j);
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int k)
                {
                    RecommendFriendUI.c(a.a);
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            class _cls2
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int k)
                {
                }

                private _cls2 a;

                _cls2()
                {
                    a = _cls2.this;
                    super();
                }
            }

            MMAlert.a(context, recommendfriendui.getString(0x7f0a0310, aobj), a.getString(0x7f0a0010), new _cls1(), new _cls2());
        }

        final RecommendFriendUI a;

        _cls2()
        {
            a = RecommendFriendUI.this;
            super();
        }
    }


    private class _cls5
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
            b.finish();
        }

        private NetSceneGetInviteFriend a;
        private RecommendFriendUI b;

        _cls5(NetSceneGetInviteFriend netscenegetinvitefriend)
        {
            b = RecommendFriendUI.this;
            a = netscenegetinvitefriend;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            RecommendFriendUI.d(a);
        }

        private RecommendFriendUI a;

        _cls3()
        {
            a = RecommendFriendUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(RecommendFriendUI.e(a));
        }

        private RecommendFriendUI a;

        _cls4()
        {
            a = RecommendFriendUI.this;
            super();
        }
    }

}
