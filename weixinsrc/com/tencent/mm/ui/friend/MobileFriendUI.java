// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import android.widget.Toast;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

// Referenced classes of package com.tencent.mm.ui.friend:
//            MobileFriendAdapter

public class MobileFriendUI extends MMActivity
    implements IOnSceneEnd
{

    public MobileFriendUI()
    {
        d = null;
    }

    static NetSceneUploadMContact a(MobileFriendUI mobilefriendui)
    {
        return mobilefriendui.e;
    }

    static MobileFriendAdapter b(MobileFriendUI mobilefriendui)
    {
        return mobilefriendui.b;
    }

    static ListView c(MobileFriendUI mobilefriendui)
    {
        return mobilefriendui.a;
    }

    protected final int a()
    {
        return 0x7f030097;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.MobileFriendUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 32 && d != null)
        {
            d.dismiss();
            d = null;
        }
        if(netscenebase.b() == 29)
        {
            NetSceneGetMFriend netscenegetmfriend = new NetSceneGetMFriend();
            MMCore.g().b(netscenegetmfriend);
        }
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        b.a_(null);
_L4:
        return;
_L2:
        if((i != 0 || j != 0) && netscenebase.b() == 32)
            Toast.makeText(this, 0x7f0a02ff, 0).show();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a02fd);
        MMCore.g().a(32, this);
        MMCore.g().a(29, this);
        a = (ListView)findViewById(0x7f07018f);
        b = new MobileFriendAdapter(this);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls2());
        if(FriendLogic.b() != com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
        {
            c = findViewById(0x7f070190);
            c.setVisibility(0);
            c.setOnClickListener(new _cls3());
            a.setVisibility(8);
        }
        b(new _cls4());
        a(new _cls5());
        Log.d("MicroMsg.FriendLogic", "isTipInMobileFriend");
        boolean flag;
        if(FriendLogic.b() == com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c)
        {
            if(!Util.a((Boolean)MMCore.f().f().a(12322), true))
                flag = true;
            else
                flag = false;
        } else
        {
            flag = false;
        }
        if(flag)
            MMAlert.a(this, 0x7f0a02c9, 0x7f0a0010, 0x7f0a0016, 0x7f0a0015, new _cls6(), new _cls7());
        if(FriendLogic.b() != com.tencent.mm.modelfriend.FriendLogic.BindOpMobileState.c) goto _L2; else goto _L1
_L1:
        d = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a02fe), true, new _cls1());
        if(b.getCount() != 0) goto _L4; else goto _L3
_L3:
        if(!FriendLogic.a(getApplicationContext()) && d != null)
        {
            d.dismiss();
            d = null;
        }
_L2:
        return;
_L4:
        if(FriendLogic.a(System.currentTimeMillis()))
        {
            if(!FriendLogic.a(getApplicationContext()) && d != null)
            {
                d.dismiss();
                d = null;
            }
        } else
        {
            e = new NetSceneUploadMContact(FriendLogic.d(), FriendLogic.c());
            MMCore.g().b(e);
        }
        if(true) goto _L2; else goto _L5
_L5:
    }

    public void onDestroy()
    {
        MMCore.g().b(32, this);
        MMCore.g().b(29, this);
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
    private MobileFriendAdapter b;
    private View c;
    private ProgressDialog d;
    private NetSceneUploadMContact e;

    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            AddrUpload addrupload = (AddrUpload)com.tencent.mm.ui.friend.MobileFriendUI.b(a).getItem(i);
            if(addrupload.h() == 1 || addrupload.h() == 2)
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", addrupload.e());
                intent.putExtra("Contact_Nick", addrupload.f());
                intent.putExtra("Contact_Mobile_MD5", addrupload.b());
                intent.putExtra("Contact_Scene", 13);
                a.startActivity(intent);
            }
            if(addrupload.h() == 0)
            {
                Intent intent1 = new Intent(a, com/tencent/mm/ui/friend/InviteFriendUI);
                intent1.putExtra("friend_type", 1);
                intent1.putExtra("friend_user_name", addrupload.e());
                intent1.putExtra("friend_num", (new StringBuilder()).append(addrupload.g()).append("").toString());
                intent1.putExtra("friend_nick", addrupload.d());
                intent1.putExtra("friend_weixin_nick", addrupload.f());
                intent1.putExtra("friend_scene", 13);
                a.startActivity(intent1);
            }
        }

        private MobileFriendUI a;

        _cls2()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MMWizardActivity.a(a, new Intent(a, com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
        }

        private MobileFriendUI a;

        _cls3()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private MobileFriendUI a;

        _cls4()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(MobileFriendUI.c(a));
        }

        private MobileFriendUI a;

        _cls5()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls6
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.f().f().a(12322, Boolean.valueOf(true));
        }

        private MobileFriendUI a;

        _cls6()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls7
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.f().f().a(12322, Boolean.valueOf(false));
        }

        private MobileFriendUI a;

        _cls7()
        {
            a = MobileFriendUI.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            if(MobileFriendUI.a(a) != null)
                MMCore.g().a(MobileFriendUI.a(a));
        }

        private MobileFriendUI a;

        _cls1()
        {
            a = MobileFriendUI.this;
            super();
        }
    }

}
