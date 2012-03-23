// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.preference.*;
import android.widget.Toast;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelsimple.NetSceneAddChatRoomMember;
import com.tencent.mm.modelsimple.NetSceneDelChatRoomMember;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.contact.ModRemarkNameUI;
import com.tencent.mm.ui.setting.SettingsChattingBackgroundUI;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            MMPreference, MMAlert, RoomInfoContPreference, IPreferenceScreen, 
//            AddressUI

public class RoomInfoUI extends MMPreference
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd, com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public RoomInfoUI()
    {
        a = null;
    }

    static RoomInfoContPreference a(RoomInfoUI roominfoui)
    {
        return roominfoui.g;
    }

    static void a(RoomInfoUI roominfoui, String s)
    {
        if(s != null && !s.equals(""))
        {
            LinkedList linkedlist = new LinkedList();
            linkedlist.add(s);
            NetSceneDelChatRoomMember netscenedelchatroommember = new NetSceneDelChatRoomMember(roominfoui.e, linkedlist);
            roominfoui.a = MMAlert.a(roominfoui, roominfoui.getString(0x7f0a0010), roominfoui.getString(0x7f0a036a), true, roominfoui. new _cls5(netscenedelchatroommember));
            MMCore.g().b(netscenedelchatroommember);
        }
    }

    static boolean b(RoomInfoUI roominfoui)
    {
        return roominfoui.d;
    }

    static String c(RoomInfoUI roominfoui)
    {
        return roominfoui.e;
    }

    static void d(RoomInfoUI roominfoui)
    {
        roominfoui.v();
    }

    static Contact e(RoomInfoUI roominfoui)
    {
        return roominfoui.f;
    }

    private boolean t()
    {
        String s = f.t();
        boolean flag;
        if(s.equals("") || s.length() > 16)
            flag = false;
        else
            flag = true;
        return flag;
    }

    private void u()
    {
        if(d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(k == 0)
        {
            g(0);
            if(i != null)
            {
                i.setChecked(true);
                c.edit().putBoolean("room_msg_notify", true).commit();
            }
        } else
        if(k == 1)
        {
            g(8);
            if(i != null)
            {
                i.setChecked(false);
                c.edit().putBoolean("room_msg_notify", false).commit();
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private void v()
    {
        j.post(new _cls9());
    }

    private void w()
    {
        if(g != null)
            g.notifyChanged();
        b.notifyDataSetChanged();
    }

    public final void a(int l, int i1, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.RoomInfoUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(l).append(" errCode = ").append(i1).append(" errMsg = ").append(s).toString());
        if(a != null)
            a.dismiss();
        if(l == 0 && i1 == 0) goto _L2; else goto _L1
_L1:
        if(netscenebase.b() == 17)
        {
            NetSceneAddChatRoomMember netsceneaddchatroommember = (NetSceneAddChatRoomMember)netscenebase;
            boolean flag;
            String s1;
            String s2;
            List list;
            if(i1 != 0)
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
            s1 = "";
            s2 = "";
            if(i1 == -23)
            {
                s1 = getString(0x7f0a0385);
                s2 = getString(0x7f0a0384);
            }
            list = netsceneaddchatroommember.h();
            if(list != null && list.size() > 0)
            {
                boolean flag1;
                String s3;
                if(list != null && list.size() > 0)
                    flag1 = true;
                else
                    flag1 = false;
                Assert.assertTrue(flag1);
                if(list.size() == 1)
                {
                    Object aobj4[] = new Object[1];
                    aobj4[0] = Util.a(list, "\u3001");
                    s3 = getString(0x7f0a009e, aobj4);
                } else
                {
                    Object aobj3[] = new Object[1];
                    aobj3[0] = Util.a(list, "\u3001");
                    s3 = getString(0x7f0a009d, aobj3);
                }
                MMAlert.a(this, s3, getString(0x7f0a0362), new _cls10(list));
            } else
            {
                List list1 = netsceneaddchatroommember.g();
                if(list1 != null && list1.size() > 0)
                {
                    s1 = getString(0x7f0a0362);
                    StringBuilder stringbuilder1 = (new StringBuilder()).append(s2);
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Util.a(list1, "\u3001");
                    s2 = stringbuilder1.append(getString(0x7f0a0092, aobj2)).toString();
                }
                List list2 = netsceneaddchatroommember.f();
                if(list2 != null && list2.size() > 0)
                {
                    s1 = getString(0x7f0a0362);
                    StringBuilder stringbuilder = (new StringBuilder()).append(s2);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Util.a(list2, "\u3001");
                    s2 = stringbuilder.append(getString(0x7f0a0093, aobj1)).toString();
                }
                if(s1 != null && s1.length() > 0)
                {
                    MMAlert.a(this, s2, s1);
                } else
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = Integer.valueOf(l);
                    aobj[1] = Integer.valueOf(i1);
                    Toast.makeText(this, getString(0x7f0a007e, aobj), 0).show();
                }
            }
        }
        if(netscenebase.b() == 68 && i1 == -66)
        {
            MMAlert.a(this, getString(0x7f0a0364), getString(0x7f0a0010));
            w();
        }
_L4:
        return;
_L2:
        if(l != 0 || i1 != 0) goto _L4; else goto _L3
_L3:
        switch(netscenebase.b())
        {
        case 17: // '\021'
            w();
            break;

        case 68: // 'D'
            w();
            break;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public final boolean a(IPreferenceScreen ipreferencescreen, Preference preference)
    {
        String s = preference.getKey();
        if(s.equals("room_name"))
        {
            Intent intent = new Intent();
            intent.setClass(this, com/tencent/mm/ui/contact/ModRemarkNameUI);
            intent.putExtra("Contact_mode_name_type", 1);
            intent.putExtra("Contact_User", e);
            ((Activity)c()).startActivity(intent);
        }
        if(s.equals("room_save_to_contact"))
            if(f.l())
                MMAlert.a(this, 0x7f0a0370, 0x7f0a0010);
            else
            if(t())
            {
                ContactStorageLogic.f(f);
                v();
                MMAlert.a(this, 0x7f0a0371, 0x7f0a0010);
            } else
            {
                Intent intent2 = new Intent();
                intent2.setClass(c(), com/tencent/mm/ui/contact/ModRemarkNameUI);
                intent2.putExtra("Contact_mode_name_type", 2);
                intent2.putExtra("Contact_User", e);
                ((Activity)c()).startActivity(intent2);
            }
        if(s.equals("room_msg_notify"))
        {
            f.a(0x200000L);
            Intent intent1;
            String as[];
            String as1[];
            int l;
            if(k == 0)
                l = 1;
            else
                l = 0;
            k = l;
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModChatRoomNotify(e, k));
            f.h(k);
            MMCore.f().h().a(e, f);
            MMCore.g().b(new NetSceneSync(5));
            u();
            f = MMCore.f().h().c(e);
            b.notifyDataSetChanged();
        }
        if(s.equals("room_set_chatting_background"))
        {
            intent1 = new Intent();
            intent1.setClass(this, com/tencent/mm/ui/setting/SettingsChattingBackgroundUI);
            intent1.putExtra("isApplyToAll", false);
            intent1.putExtra("username", f.s());
            startActivityForResult(intent1, 2);
        }
        if(s.equals("room_clear_chatting_history"))
        {
            String s1;
            if(d)
            {
                s1 = getString(0x7f0a008f);
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = f.A();
                s1 = getString(0x7f0a008d, aobj);
            }
            as1 = new String[1];
            as1[0] = getString(0x7f0a0379);
            MMAlert.a(this, s1, as1, null, new _cls7());
        }
        if(s.equals("room_del_quit"))
        {
            Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append(" quit ").append(e).toString());
            as = new String[1];
            as[0] = getString(0x7f0a0382);
            MMAlert.a(this, getString(0x7f0a0365), as, null, new _cls6());
        }
        return false;
    }

    public final void a_(String s)
    {
        Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append("event:").append(s).toString());
        if(g != null)
            g.a(s);
    }

    public final void b(String s)
    {
        Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append("roominfo touxiang :notifyChanged ").append(s).toString());
        if(s != null && !s.equals("") && s.equals(e))
        {
            g.notifyChanged();
            b.notifyDataSetChanged();
        }
    }

    public final int d_()
    {
        return 0x7f05001d;
    }

    public final void o()
    {
        if(d)
        {
            String s1 = Util.a(ChatroomMembersLogic.c(e), ",");
            Intent intent1 = new Intent();
            intent1.setClass(this, com/tencent/mm/ui/AddressUI);
            intent1.putExtra("Contact_Compose", true);
            intent1.putExtra("List_Type", 1);
            intent1.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
            intent1.putExtra("Block_list", s1);
            startActivityForResult(intent1, 1);
        } else
        {
            LinkedList linkedlist = new LinkedList();
            linkedlist.add(e);
            linkedlist.add(ConfigStorageLogic.b());
            String s = Util.a(linkedlist, ",");
            Intent intent = new Intent();
            intent.setClass(this, com/tencent/mm/ui/AddressUI);
            intent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
            intent.putExtra("List_Type", 0);
            intent.putExtra("Block_list", s);
            startActivity(intent);
        }
    }

    protected void onActivityResult(int l, int i1, Intent intent)
    {
        super.onActivityResult(l, i1, intent);
        if(i1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(l)
        {
        case 1: // '\001'
            if(intent != null)
            {
                String s = intent.getStringExtra("Select_Contact");
                if(!ContactStorageLogic.a(s))
                {
                    MMAlert.a(this, getString(0x7f0a0386), getString(0x7f0a0010));
                } else
                {
                    boolean flag;
                    if(Util.h(ConfigStorageLogic.b()).equals(s))
                    {
                        flag = true;
                    } else
                    {
                        List list = ChatroomMembersLogic.c(e);
                        if(list == null)
                        {
                            flag = false;
                        } else
                        {
                            Iterator iterator = list.iterator();
                            flag = false;
                            while(iterator.hasNext()) 
                            {
                                boolean flag1;
                                List list1;
                                NetSceneAddChatRoomMember netsceneaddchatroommember;
                                if(((String)iterator.next()).equals(s))
                                    flag1 = true;
                                else
                                    flag1 = flag;
                                flag = flag1;
                            }
                        }
                    }
                    if(flag)
                    {
                        Object aobj[] = new Object[2];
                        aobj[0] = Integer.valueOf(0);
                        aobj[1] = Integer.valueOf(0);
                        MMAlert.a(this, getString(0x7f0a0366, aobj), getString(0x7f0a0010));
                    } else
                    {
                        list1 = Util.a(s.split(","));
                        if(list1 != null)
                        {
                            netsceneaddchatroommember = new NetSceneAddChatRoomMember(e, list1);
                            a = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0361), true, new _cls8(netsceneaddchatroommember));
                            MMCore.g().b(netsceneaddchatroommember);
                        }
                    }
                }
            }
            break;

        case 2: // '\002'
            if(i1 == -1)
                finish();
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.g().a(17, this);
        MMCore.g().a(68, this);
        MMCore.f().h().a(this);
        MMCore.f().y().a(this);
        d(0x7f0a0360);
        b = q();
        c = getSharedPreferences((new StringBuilder()).append(getPackageName()).append("_preferences").toString(), 0);
        d = getIntent().getBooleanExtra("Is_Chatroom", true);
        e = getIntent().getStringExtra("RoomInfo_Id");
        if(e == null)
            e = getIntent().getStringExtra("Single_Chat_Talker");
        f = MMCore.f().h().c(e);
        if(d)
        {
            k = f.H();
            h = b.a("room_name");
            i = (CheckBoxPreference)b.a("room_msg_notify");
            g = (RoomInfoContPreference)b.a("roominfo_contact");
        } else
        {
            k = 1;
            b.a();
            PreferenceCategory preferencecategory = new PreferenceCategory(this);
            b.a(preferencecategory);
            g = new RoomInfoContPreference(this);
            g.setTitle(0x7f0a000f);
            g.setKey("roominfo_contact");
            g.setLayoutResource(0x7f0300cb);
            b.a(g);
            PreferenceCategory preferencecategory1 = new PreferenceCategory(this);
            b.a(preferencecategory1);
            Preference preference = new Preference(this);
            preference.setTitle(0x7f0a0378);
            preference.setKey("room_set_chatting_background");
            preference.setLayoutResource(0x7f030076);
            preference.setWidgetLayoutResource(0x7f03008f);
            b.a(preference);
            PreferenceCategory preferencecategory2 = new PreferenceCategory(this);
            b.a(preferencecategory2);
            Preference preference1 = new Preference(this);
            preference1.setTitle(0x7f0a0379);
            preference1.setKey("room_clear_chatting_history");
            preference1.setLayoutResource(0x7f030076);
            preference1.setWidgetLayoutResource(0x7f03008f);
            b.a(preference1);
            b.notifyDataSetChanged();
        }
        if(g != null)
        {
            g.a(e, d, 0);
            g.a(new _cls1());
            g.a(new _cls2());
        }
        b(new _cls3());
        j = new _cls4();
    }

    public void onDestroy()
    {
        MMCore.g().b(17, this);
        MMCore.g().b(68, this);
        if(MMCore.f().b())
        {
            MMCore.f().h().b(this);
            MMCore.f().y().b(this);
        }
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        if(f != null && h != null)
        {
            f = MMCore.f().h().c(e);
            if(t())
            {
                String s = f.A();
                if(s.length() <= 0)
                    s = getString(0x7f0a0195);
                android.text.SpannableString spannablestring = SpanUtil.a(this, s, -2);
                h.setSummary(spannablestring);
            } else
            {
                h.setSummary(getString(0x7f0a036b));
            }
        }
        u();
        b.notifyDataSetChanged();
        super.onResume();
    }

    private ProgressDialog a;
    private IPreferenceScreen b;
    private SharedPreferences c;
    private boolean d;
    private String e;
    private Contact f;
    private RoomInfoContPreference g;
    private Preference h;
    private CheckBoxPreference i;
    private Handler j;
    private int k;

    private class _cls5
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneDelChatRoomMember a;
        private RoomInfoUI b;

        _cls5(NetSceneDelChatRoomMember netscenedelchatroommember)
        {
            b = RoomInfoUI.this;
            a = netscenedelchatroommember;
            super();
        }
    }


    private class _cls9
        implements Runnable
    {

        public void run()
        {
            MMCore.g().b(new NetSceneSync(5));
        }

        private RoomInfoUI a;

        _cls9()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls10
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int l)
        {
            int i1 = 0;
            RoomInfoUI roominfoui = b;
            List list = a;
            int j1;
            LinkedList linkedlist;
            if(list.size() > 0)
                j1 = 1;
            else
                j1 = i1;
            Assert.assertTrue(j1);
            linkedlist = new LinkedList();
            for(; i1 < list.size(); i1++)
                linkedlist.add(Integer.valueOf(3));

            (new SendVerifyRequest(roominfoui, roominfoui. new _cls11())).a(list, linkedlist);
        }

        private List a;
        private RoomInfoUI b;

        _cls10(List list)
        {
            b = RoomInfoUI.this;
            a = list;
            super();
        }

        private class _cls11
            implements SendVerifyRequest.IOnSendVerifyRequest
        {

            public final void a()
            {
            }

            private RoomInfoUI a;

            _cls11()
            {
                a = RoomInfoUI.this;
                super();
            }
        }

    }


    private class _cls7
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int l)
        {
            l;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            MsgInfoStorageLogic.d(RoomInfoUI.e(a).s());
            RoomInfoUI.d(a);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private RoomInfoUI a;

        _cls7()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls6
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int l)
        {
            l;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ChatroomMembersLogic.f(RoomInfoUI.c(a));
            RoomInfoUI.d(a);
            Intent intent = new Intent(a.c(), com/tencent/mm/ui/MainTabUI);
            intent.addFlags(0x4000000);
            a.startActivity(intent);
            a.finish();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private RoomInfoUI a;

        _cls6()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneAddChatRoomMember a;
        private RoomInfoUI b;

        _cls8(NetSceneAddChatRoomMember netsceneaddchatroommember)
        {
            b = RoomInfoUI.this;
            a = netsceneaddchatroommember;
            super();
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int l, long l1)
        {
            if(!RoomInfoUI.a(a).b(l))
                Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append("roomPref ").append(l).toString());
            return true;
        }

        private RoomInfoUI a;

        _cls1()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int l, long l1)
        {
            if(RoomInfoUI.a(a).a(l)) goto _L2; else goto _L1
_L1:
            if(!RoomInfoUI.a(a).d(l)) goto _L4; else goto _L3
_L3:
            Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append("roomPref add ").append(l).toString());
            a.o();
_L2:
            return;
_L4:
            if(RoomInfoUI.a(a).a() && RoomInfoUI.a(a).c(l))
            {
                String s1 = RoomInfoUI.a(a).e(l);
                Log.d("MicroMsg.RoomInfoUI", (new StringBuilder()).append("roomPref del ").append(l).append(" userName : ").append(s1).toString());
                RoomInfoUI.a(a, s1);
            } else
            if(!RoomInfoUI.a(a).a() && RoomInfoUI.a(a).c(l))
            {
                String s = RoomInfoUI.a(a).e(l);
                Intent intent = new Intent();
                intent.setClass(a, com/tencent/mm/ui/contact/ContactInfoUI);
                intent.putExtra("Contact_User", s);
                intent.putExtra("Contact_RoomMember", true);
                if(RoomInfoUI.b(a))
                    intent.putExtra("Contact_Scene", 8);
                else
                    intent.putExtra("Kdel_from", 0);
                a.startActivityForResult(intent, 0);
            }
            if(true) goto _L2; else goto _L5
_L5:
        }

        private RoomInfoUI a;

        _cls2()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private RoomInfoUI a;

        _cls3()
        {
            a = RoomInfoUI.this;
            super();
        }
    }


    private class _cls4 extends Handler
    {

        public void handleMessage(Message message)
        {
        }

        private RoomInfoUI a;

        _cls4()
        {
            a = RoomInfoUI.this;
            super();
        }
    }

}
