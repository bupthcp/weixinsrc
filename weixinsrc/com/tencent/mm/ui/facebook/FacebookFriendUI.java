// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.facebook;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.modelfriend.NetSceneGetMFriend;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.facebook:
//            FacebookFriendAdapter

public class FacebookFriendUI extends MMActivity
    implements IOnSceneEnd
{

    public FacebookFriendUI()
    {
        d = null;
    }

    static FacebookFriendAdapter a(FacebookFriendUI facebookfriendui)
    {
        return facebookfriendui.b;
    }

    static ListView b(FacebookFriendUI facebookfriendui)
    {
        return facebookfriendui.a;
    }

    protected final int a()
    {
        return 0x7f030097;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.FacebookFriendUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 32)
        {
            if(d != null)
            {
                d.dismiss();
                d = null;
            }
            if(i == 4 && j == -68)
            {
                if(Util.i(s))
                    s = "error";
                MMAlert.a(this, s, getString(0x7f0a0010), new _cls8(), null);
            } else
            if(i == 0 && j == 0)
                b.a_(null);
            else
                Toast.makeText(this, 0x7f0a02ff, 0).show();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0486);
        MMCore.g().a(32, this);
        a = (ListView)findViewById(0x7f07018f);
        TextView textview = (TextView)findViewById(0x7f07018e);
        textview.setText(0x7f0a0489);
        b = new FacebookFriendAdapter(this, new _cls1(textview));
        a.setAdapter(b);
        c = findViewById(0x7f070190);
        a.setOnItemClickListener(new _cls2());
        Log.d("MicroMsg.FacebookFriendUI", (new StringBuilder()).append("isBindForFacebookApp:").append(ConfigStorageLogic.m()).toString());
        if(ConfigStorageLogic.m())
        {
            a.setVisibility(0);
            c.setVisibility(8);
            NetSceneGetMFriend netscenegetmfriend = new NetSceneGetMFriend();
            netscenegetmfriend.g();
            MTimerHandler mtimerhandler = new MTimerHandler(new _cls3(netscenegetmfriend), false);
            if(Util.a((Integer)MMCore.f().f().a(0x10125)) > 0)
            {
                MMCore.f().f().a(0x10125, Integer.valueOf(1));
                MMCore.g().b(netscenegetmfriend);
            } else
            {
                mtimerhandler.a(5000L);
            }
            d = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0307), true, new _cls4(mtimerhandler, netscenegetmfriend));
        } else
        {
            a.setVisibility(8);
            c.setVisibility(0);
            ((TextView)findViewById(0x7f070191)).setText(0x7f0a0488);
            c.setOnClickListener(new _cls5());
        }
        b(new _cls6());
        a(new _cls7());
    }

    public void onDestroy()
    {
        MMCore.g().b(32, this);
        b.n();
        super.onDestroy();
    }

    public void onPause()
    {
        MMCore.f().t().b(b);
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().t().a(b);
        b.a_(null);
    }

    private ListView a;
    private FacebookFriendAdapter b;
    private View c;
    private ProgressDialog d;

    private class _cls8
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            Intent intent = new Intent(a.c(), com/tencent/mm/ui/facebook/FacebookAuthUI);
            intent.putExtra("is_force_unbind", true);
            a.c().startActivity(intent);
            a.finish();
        }

        private FacebookFriendUI a;

        _cls8()
        {
            a = FacebookFriendUI.this;
            super();
        }
    }


    private class _cls1
        implements com.tencent.mm.ui.MListAdapter.CallBack
    {

        public final void a()
        {
            if(ConfigStorageLogic.m())
                if(FacebookFriendUI.a(b).getCount() == 0)
                    a.setVisibility(0);
                else
                    a.setVisibility(8);
        }

        public final void b()
        {
        }

        private TextView a;
        private FacebookFriendUI b;

        _cls1(TextView textview)
        {
            b = FacebookFriendUI.this;
            a = textview;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            FacebookFriend facebookfriend = (FacebookFriend)FacebookFriendUI.a(a).getItem(i);
            if(facebookfriend.f() == 100 || facebookfriend.f() == 101)
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", facebookfriend.g());
                intent.putExtra("Contact_Nick", facebookfriend.h());
                intent.putExtra("Contact_KFacebookId", facebookfriend.d());
                intent.putExtra("Contact_KFacebookName", facebookfriend.e());
                intent.putExtra("Contact_Scene", 31);
                a.startActivity(intent);
            }
            if(facebookfriend.f() == 102)
            {
                Intent intent1 = new Intent(a, com/tencent/mm/ui/facebook/ShowNonWeixinFriendUI);
                intent1.putExtra("Contact_KFacebookId", facebookfriend.d());
                intent1.putExtra("Contact_KFacebookName", facebookfriend.e());
                a.startActivity(intent1);
            }
        }

        private FacebookFriendUI a;

        _cls2()
        {
            a = FacebookFriendUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            MMCore.f().f().a(0x10125, Integer.valueOf(1));
            MMCore.g().b(a);
            return false;
        }

        private NetSceneGetMFriend a;
        private FacebookFriendUI b;

        _cls3(NetSceneGetMFriend netscenegetmfriend)
        {
            b = FacebookFriendUI.this;
            a = netscenegetmfriend;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            a.a();
            MMCore.g().a(b);
        }

        private MTimerHandler a;
        private NetSceneGetMFriend b;
        private FacebookFriendUI c;

        _cls4(MTimerHandler mtimerhandler, NetSceneGetMFriend netscenegetmfriend)
        {
            c = FacebookFriendUI.this;
            a = mtimerhandler;
            b = netscenegetmfriend;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private FacebookFriendUI a;

        _cls6()
        {
            a = FacebookFriendUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(com.tencent.mm.ui.facebook.FacebookFriendUI.b(a));
        }

        private FacebookFriendUI a;

        _cls7()
        {
            a = FacebookFriendUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.startActivity(new Intent(a, com/tencent/mm/ui/facebook/FacebookAuthUI));
        }

        private FacebookFriendUI a;

        _cls5()
        {
            a = FacebookFriendUI.this;
            super();
        }
    }

}
