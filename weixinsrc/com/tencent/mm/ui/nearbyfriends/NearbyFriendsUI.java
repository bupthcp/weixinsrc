// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.nearbyfriends;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneLbsFind;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui.nearbyfriends:
//            LBSManager

public class NearbyFriendsUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd
{

    public NearbyFriendsUI()
    {
        a = null;
        h = new _cls2();
    }

    static ProgressDialog a(NearbyFriendsUI nearbyfriendsui, ProgressDialog progressdialog)
    {
        nearbyfriendsui.a = progressdialog;
        return progressdialog;
    }

    static NetSceneLbsFind a(NearbyFriendsUI nearbyfriendsui, NetSceneLbsFind netscenelbsfind)
    {
        nearbyfriendsui.e = netscenelbsfind;
        return netscenelbsfind;
    }

    static LBSManager a(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.b;
    }

    static NetSceneLbsFind b(NearbyFriendsUI nearbyfriendsui, NetSceneLbsFind netscenelbsfind)
    {
        nearbyfriendsui.f = netscenelbsfind;
        return netscenelbsfind;
    }

    static LBSManager.OnLocationGotListener b(NearbyFriendsUI nearbyfriendsui)
    {
        nearbyfriendsui.h = null;
        return null;
    }

    static LBSManager c(NearbyFriendsUI nearbyfriendsui)
    {
        nearbyfriendsui.b = null;
        return null;
    }

    static NetSceneLbsFind d(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.e;
    }

    static ProgressDialog e(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.a;
    }

    static ListView f(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.d;
    }

    static List g(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.g;
    }

    static NetSceneLbsFind h(NearbyFriendsUI nearbyfriendsui)
    {
        return nearbyfriendsui.f;
    }

    protected final int a()
    {
        return 0x7f03009b;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
_L2:
        return;
        if(e == null && ((NetSceneLbsFind)netscenebase).f() == 1 || f == null && ((NetSceneLbsFind)netscenebase).f() == 2) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.NearbyFriend", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(netscenebase.b() == 43)
        {
            if(a != null)
            {
                a.dismiss();
                a = null;
            }
            if(i == 0 && j == 0)
            {
                if(((NetSceneLbsFind)netscenebase).f() == 1)
                {
                    g = ((NetSceneLbsFind)netscenebase).h();
                    c.notifyDataSetChanged();
                    if(g == null || g.size() == 0)
                    {
                        findViewById(0x7f07019d).setVisibility(0);
                        d.setVisibility(8);
                    }
                    e = null;
                }
                if(((NetSceneLbsFind)netscenebase).f() == 2)
                {
                    MMAlert.a(c(), 0x7f0a03c8, 0x7f0a0010, new _cls7());
                    f = null;
                }
            } else
            {
                if(((NetSceneLbsFind)netscenebase).f() == 1)
                {
                    TextView textview = (TextView)findViewById(0x7f07019d);
                    textview.setVisibility(0);
                    if(j == -2001)
                        textview.setText(getString(0x7f0a03bf));
                    else
                        textview.setText(getString(0x7f0a03be));
                    d.setVisibility(8);
                    e = null;
                }
                if(((NetSceneLbsFind)netscenebase).f() == 2)
                {
                    Toast.makeText(this, 0x7f0a03c9, 1).show();
                    f = null;
                }
            }
        }
        if(true) goto _L2; else goto _L3
_L3:
    }

    public final void b(String s)
    {
        c.notifyDataSetChanged();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a03b2);
        g = new ArrayList();
        MMCore.g().a(43, this);
        d = (ListView)findViewById(0x7f07019f);
        c = new NearbyFriendAdapter(this);
        d.setAdapter(c);
        d.setOnItemClickListener(new _cls3());
        d.setOnScrollListener(new AvatarWrapperScrollListener());
        b(new _cls4());
        a(new _cls5());
        c(0x7f0201c9, new _cls6());
        a = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a03b7), true, new _cls1());
        b = new LBSManager(this, h);
        b.a();
    }

    protected void onDestroy()
    {
        MMCore.g().b(43, this);
        if(b != null)
        {
            b.d();
            h = null;
            b = null;
        }
        MMCore.f().v().a();
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        AvatarDrawable.b(this);
        if(b != null)
            b.b();
    }

    protected void onResume()
    {
        super.onResume();
        AvatarDrawable.a(this);
        if(b != null)
            b.c();
        c.notifyDataSetChanged();
    }

    private ProgressDialog a;
    private LBSManager b;
    private NearbyFriendAdapter c;
    private ListView d;
    private NetSceneLbsFind e;
    private NetSceneLbsFind f;
    private List g;
    private LBSManager.OnLocationGotListener h;

    private class _cls2
        implements LBSManager.OnLocationGotListener
    {

        public final void a(float f1, float f2, int i, int j, String s, String s1, boolean flag)
        {
            if(flag)
            {
                if(com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.e(a) != null)
                    com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.e(a).setMessage(a.getString(0x7f0a03b8));
                NearbyFriendsUI.a(a, new NetSceneLbsFind(1, f2, f1, i, j, s, s1));
                MMCore.g().b(NearbyFriendsUI.d(a));
            } else
            {
                if(com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.e(a) != null)
                {
                    com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.e(a).dismiss();
                    NearbyFriendsUI.a(a, null);
                }
                a.findViewById(0x7f07019e).setVisibility(0);
                NearbyFriendsUI.f(a).setVisibility(8);
            }
        }

        private NearbyFriendsUI a;

        _cls2()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class NearbyFriendAdapter extends BaseAdapter
    {

        public int getCount()
        {
            return NearbyFriendsUI.g(b).size();
        }

        public volatile Object getItem(int i)
        {
            return (com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i);
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                TextView a;
                TextView b;
                TextView c;
                ImageView d;
                TextView e;
                ImageView f;
                private NearbyFriendAdapter g;

                ViewHolder()
                {
                    g = NearbyFriendAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder;
            android.text.SpannableString spannablestring;
            AvatarDrawable avatardrawable;
            AvatarDrawable avatardrawable2;
            if(view == null)
            {
                viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f03009d, null);
                viewholder.a = (TextView)view.findViewById(0x7f0701a2);
                viewholder.c = (TextView)view.findViewById(0x7f0701a7);
                viewholder.b = (TextView)view.findViewById(0x7f0701a6);
                viewholder.d = (ImageView)view.findViewById(0x7f0701a1);
                viewholder.e = (TextView)view.findViewById(0x7f0701a3);
                viewholder.f = (ImageView)view.findViewById(0x7f0701a5);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            spannablestring = SpanUtil.a(a, ((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).d(), (int)viewholder.a.getTextSize());
            viewholder.a.setText(spannablestring);
            if(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).j() > 0)
            {
                viewholder.f.setVisibility(0);
                android.graphics.Bitmap bitmap = b.a.e.a(SceneGetVUserInfo.a(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).j()), 1.5F);
                viewholder.f.setImageBitmap(bitmap);
            } else
            {
                viewholder.f.setVisibility(8);
            }
            viewholder.b.setText(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).b());
            if(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).g() == null || ((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).g().trim().equals(""))
            {
                viewholder.c.setVisibility(8);
            } else
            {
                viewholder.c.setVisibility(0);
                android.text.SpannableString spannablestring1 = SpanUtil.a(a, ((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).g(), (int)viewholder.c.getTextSize());
                viewholder.c.setText(spannablestring1);
            }
            avatardrawable = (AvatarDrawable)viewholder.d.getDrawable();
            if(avatardrawable == null)
            {
                AvatarDrawable avatardrawable1 = new AvatarDrawable(viewholder.d, AvatarDrawable.a(), AvatarDrawable.a());
                viewholder.d.setImageDrawable(avatardrawable1);
                avatardrawable2 = avatardrawable1;
            } else
            {
                avatardrawable2 = avatardrawable;
            }
            avatardrawable2.a(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).c());
            if(MMCore.f().h().a(((com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(b).get(i)).c()))
                viewholder.e.setVisibility(0);
            else
                viewholder.e.setVisibility(8);
            return view;
        }

        private final Context a;
        private NearbyFriendsUI b;

        public NearbyFriendAdapter(Context context)
        {
            b = NearbyFriendsUI.this;
            super();
            a = context;
        }
    }


    private class _cls7
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private NearbyFriendsUI a;

        _cls7()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo lbscontactinfo = (com.tencent.mm.protocal.MMLbsFind.Resp.LbsContactInfo)NearbyFriendsUI.g(a).get(i);
            String s = lbscontactinfo.c();
            if(MMCore.f().h().c(s).l())
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", s);
                if(s != null && s.length() > 0)
                    a.startActivity(intent);
            } else
            {
                Intent intent1 = new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent1.putExtra("Contact_User", lbscontactinfo.c());
                intent1.putExtra("Contact_Alias", lbscontactinfo.a());
                intent1.putExtra("Contact_Nick", lbscontactinfo.d());
                intent1.putExtra("Contact_Distance", lbscontactinfo.b());
                intent1.putExtra("Contact_Signature", lbscontactinfo.g());
                intent1.putExtra("Contact_Province", lbscontactinfo.i());
                intent1.putExtra("Contact_City", lbscontactinfo.h());
                intent1.putExtra("Contact_Sex", lbscontactinfo.f());
                intent1.putExtra("Contact_IsLBSFriend", true);
                intent1.putExtra("Contact_Scene", 18);
                intent1.putExtra("Contact_VUser_Info", lbscontactinfo.k());
                intent1.putExtra("Contact_VUser_Info_Flag", lbscontactinfo.j());
                intent1.putExtra("Contact_KWeibo_flag", lbscontactinfo.m());
                intent1.putExtra("Contact_KWeibo", lbscontactinfo.l());
                intent1.putExtra("Contact_KWeiboNick", lbscontactinfo.n());
                a.startActivity(intent1);
            }
        }

        private NearbyFriendsUI a;

        _cls3()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private NearbyFriendsUI a;

        _cls4()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(NearbyFriendsUI.f(a));
        }

        private NearbyFriendsUI a;

        _cls5()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int i)
                {
                    i;
                    JVM INSTR tableswitch 0 0: default 20
                //                               0 21;
                       goto _L1 _L2
_L1:
                    return;
_L2:
                    com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.b(a.a, new NetSceneLbsFind(2, 0F, 0F, 0, 0, "", ""));
                    MMCore.g().b(NearbyFriendsUI.h(a.a));
                    class _cls1
                        implements android.content.DialogInterface.OnCancelListener
                    {

                        public void onCancel(DialogInterface dialoginterface)
                        {
                            MMCore.g().a(NearbyFriendsUI.h(a.a.a));
                        }

                        private _cls1 a;

                            _cls1()
                            {
                                a = _cls1.this;
                                super();
                            }
                    }

                    NearbyFriendsUI.a(a.a, MMAlert.a(a.a.c(), a.a.getString(0x7f0a0010), a.a.getString(0x7f0a03ca), true, new _cls1()));
                    if(true) goto _L1; else goto _L3
_L3:
                }

                final _cls6 a;

                _cls1()
                {
                    a = _cls6.this;
                    super();
                }
            }

            MMAlert.a(a.c(), a.getResources().getString(0x7f0a03c7), null, a.getResources().getString(0x7f0a03c6), new _cls1());
        }

        final NearbyFriendsUI a;

        _cls6()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            if(NearbyFriendsUI.a(a) != null)
            {
                NearbyFriendsUI.a(a).d();
                com.tencent.mm.ui.nearbyfriends.NearbyFriendsUI.b(a);
                NearbyFriendsUI.c(a);
            }
            if(NearbyFriendsUI.d(a) != null)
                MMCore.g().a(NearbyFriendsUI.d(a));
        }

        private NearbyFriendsUI a;

        _cls1()
        {
            a = NearbyFriendsUI.this;
            super();
        }
    }

}
