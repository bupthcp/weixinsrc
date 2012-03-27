// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelsimple.NetSceneCreateChatRoom;
import com.tencent.mm.modelsimple.NetSceneSwitchPushMail;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.masssend.ui.MassSendHistoryUI;
import com.tencent.mm.plugin.readerapp.ui.ReaderAppUI;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.chatting.ChattingUI;
import com.tencent.mm.ui.chatting.SpanUtil;
import com.tencent.mm.ui.contact.ContactInfoUI;
import com.tencent.mm.ui.contact.ContactWidgetFloatBottle;
import com.tencent.mm.ui.contact.ContactWidgetLBS;
import com.tencent.mm.ui.contact.ContactWidgetQQMail;
import com.tencent.mm.ui.contact.ContactWidgetShake;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMAlert, AlphabetScrollBar, SendContactCardUI, 
//            AddressAdapter, AvatarDrawable, TConversationUI, QConversationUI, 
//            QQSyncUI, AvatarWrapperScrollListener, MMImageButton

public class AddressUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd
{

    public AddressUI()
    {
        a = null;
        i = null;
        k = false;
        l = false;
        q = null;
        z = "";
        A = "";
        B = false;
        C = new _cls13();
        D = new _cls14();
        E = new _cls15();
        F = new _cls16();
    }

    static ProgressDialog a(AddressUI addressui, ProgressDialog progressdialog)
    {
        addressui.r = progressdialog;
        return progressdialog;
    }

    static PopupWindow a(AddressUI addressui, PopupWindow popupwindow)
    {
        addressui.s = popupwindow;
        return popupwindow;
    }

    static AddressAdapter a(AddressUI addressui)
    {
        return addressui.d;
    }

    static String a(AddressUI addressui, String s1)
    {
        addressui.A = s1;
        return s1;
    }

    private void a(int i1, boolean flag)
    {
        NetSceneSync netscenesync = new NetSceneSync(i1);
        (new Handler()).post(new _cls17(netscenesync));
        if(flag)
            i = MMAlert.a(this, getString(0x7f0a0010), getString(0x7f0a0027), true, new _cls18(netscenesync));
    }

    static void a(AddressUI addressui, int i1)
    {
        if(!"@black.android".equals(addressui.e) || i1 > 0) goto _L2; else goto _L1
_L1:
        addressui.c.setVisibility(0);
        addressui.b.setVisibility(8);
_L4:
        if("@black.android".equals(addressui.e) && addressui.p != null)
            addressui.p.setVisibility(8);
        return;
_L2:
        addressui.c.setVisibility(8);
        addressui.b.setVisibility(0);
        if(addressui.p != null)
            addressui.p.setVisibility(0);
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void a(AddressUI addressui, String s1, String s2)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(s2);
        addressui.a(s1, ((List) (linkedlist)));
    }

    static void a(AddressUI addressui, String s1, List list)
    {
        addressui.a(s1, list);
    }

    private void a(String s1, List list)
    {
        if(list.size() > 0)
        {
            Intent intent = new Intent();
            intent.setClass(this, com/tencent/mm/ui/SendContactCardUI);
            boolean flag;
            if(m != null)
                flag = true;
            else
                flag = false;
            Assert.assertTrue("cardNameToSend is null", flag);
            intent.putExtra("be_send_card_name", s1);
            intent.putExtra("received_card_name", Util.a(list, ","));
            intent.putExtra("Is_Chatroom", false);
            intent.addFlags(0x4000000);
            startActivity(intent);
            finish();
        }
    }

    static boolean a(AddressUI addressui, boolean flag)
    {
        addressui.k = flag;
        return flag;
    }

    private void b()
    {
        if(d != null)
            d.a_(null);
    }

    static void b(AddressUI addressui)
    {
        if(addressui.d != null)
            addressui.d.c(addressui.A);
    }

    static void b(AddressUI addressui, String s1)
    {
        byte byte0 = 8;
        if(Util.i(s1)) goto _L2; else goto _L1
_L1:
        int k1;
        int l1;
        if(addressui.t == null)
            break MISSING_BLOCK_LABEL_176;
        k1 = addressui.t.getChildCount();
        l1 = 0;
_L7:
        if(l1 >= k1 + -1) goto _L4; else goto _L3
_L3:
        if(!s1.equals(addressui.t.getChildAt(l1).getTag())) goto _L6; else goto _L5
_L5:
        addressui.t.removeViewAt(l1);
_L2:
        return;
_L6:
        l1++;
          goto _L7
_L4:
        ImageView imageview = new ImageView(addressui);
        AvatarDrawable avatardrawable = new AvatarDrawable(imageview, AvatarDrawable.b(), AvatarDrawable.b());
        avatardrawable.a(s1);
        imageview.setImageDrawable(avatardrawable);
        imageview.setTag(s1);
        imageview.setPadding(5, 0, 5, 0);
        imageview.setOnClickListener(addressui.C);
        addressui.t.addView(imageview, k1 + -1);
        ((HorizontalScrollView)addressui.t.getParent()).smoothScrollTo(addressui.t.getMeasuredWidth(), 0);
          goto _L2
        if(addressui.u != null)
        {
            if(addressui.v == null)
            {
                addressui.v = (Button)addressui.findViewById(0x7f07000c);
                addressui.w = (Button)addressui.findViewById(0x7f07000d);
                addressui.x = (Button)addressui.findViewById(0x7f07000a);
                addressui.y = (Button)addressui.findViewById(0x7f07000b);
                addressui.v.setOnClickListener(addressui.D);
                addressui.w.setOnClickListener(addressui.E);
            }
            String s2 = (new StringBuilder()).append("(").append(addressui.d.h()).append(")").toString();
            boolean flag = addressui.d.f();
            Button button = addressui.v;
            int i1;
            Button button1;
            int j1;
            Button button2;
            byte byte1;
            Button button3;
            if(flag)
                i1 = 0;
            else
                i1 = byte0;
            button.setVisibility(i1);
            button1 = addressui.w;
            if(flag)
                j1 = 0;
            else
                j1 = byte0;
            button1.setVisibility(j1);
            button2 = addressui.x;
            if(flag)
                byte1 = byte0;
            else
                byte1 = 0;
            button2.setVisibility(byte1);
            button3 = addressui.y;
            if(!flag)
                byte0 = 0;
            button3.setVisibility(byte0);
            addressui.v.setText((new StringBuilder()).append(addressui.getString(0x7f0a0231)).append(s2).toString());
            addressui.w.setText((new StringBuilder()).append(addressui.getString(0x7f0a0232)).append(s2).toString());
        }
          goto _L2
    }

    static void b(AddressUI addressui, boolean flag)
    {
        addressui.c(flag);
    }

    static int c(AddressUI addressui)
    {
        return addressui.o;
    }

    static String c(AddressUI addressui, String s1)
    {
        addressui.z = s1;
        return s1;
    }

    private void c(boolean flag)
    {
        Contact contact = MMCore.f().h().c(z);
        contact.g();
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpAddContact(contact.s(), contact.t(), contact.w(), contact.x(), contact.p(), 63, contact.q(), contact.D(), contact.E(), contact.F(), contact.C(), contact.G(), contact.H(), contact.J(), contact.K(), contact.M(), contact.L(), contact.S(), contact.T()));
        MMCore.f().h().a(z, contact);
        if(ContactStorageLogic.b(z))
        {
            MMCore.f().h().f(z);
            MMCore.f().n().d(z);
        } else
        {
            MsgInfoStorageLogic.d(z);
            MMCore.f().h().a(z, contact);
            MMCore.f().j().a(z);
        }
        if(flag)
            MMCore.g().b(new NetSceneSync(5));
    }

    static String d(AddressUI addressui)
    {
        return addressui.g;
    }

    static void d(AddressUI addressui, String s1)
    {
        addressui.e(s1);
    }

    static String e(AddressUI addressui)
    {
        return addressui.n;
    }

    private void e(String s1)
    {
        Intent intent = new Intent();
        intent.setClass(this, com/tencent/mm/ui/chatting/ChattingUI);
        intent.putExtra("Chat_User", s1);
        intent.addFlags(0x4000000);
        startActivity(intent);
        finish();
    }

    static PopupWindow f(AddressUI addressui)
    {
        return addressui.s;
    }

    static boolean g(AddressUI addressui)
    {
        return addressui.l;
    }

    static String h(AddressUI addressui)
    {
        return addressui.m;
    }

    static boolean i(AddressUI addressui)
    {
        return addressui.k;
    }

    static void j(AddressUI addressui)
    {
        List list = addressui.d.e();
        list.remove(ConfigStorageLogic.b());
        addressui.q = new NetSceneCreateChatRoom("", list);
        MMCore.g().b(addressui.q);
        addressui.i = MMAlert.a(addressui, addressui.getString(0x7f0a0010), addressui.getString(0x7f0a035c), true, addressui. new _cls19());
    }

    static ListView k(AddressUI addressui)
    {
        return addressui.b;
    }

    static String l(AddressUI addressui)
    {
        return addressui.e;
    }

    static NetSceneCreateChatRoom m(AddressUI addressui)
    {
        return addressui.q;
    }

    static boolean n(AddressUI addressui)
    {
        addressui.B = true;
        return true;
    }

    protected final int a()
    {
        return 0x7f030003;
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        if(netscenebase.b() != 24) goto _L2; else goto _L1
_L1:
        if(r != null)
        {
            r.dismiss();
            r = null;
        }
        if(i1 == 0 && j1 == 0 && !((NetSceneSwitchPushMail)netscenebase).f()) goto _L4; else goto _L3
_L3:
        return;
_L4:
        MMCore.f().f().a(17, Integer.valueOf(2));
        if(B)
        {
            B = false;
            int k1 = 1 | ConfigStorageLogic.f();
            MMCore.f().f().a(34, Integer.valueOf(k1));
            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModUserInfo(2048, "", "", 0, "", "", "", 0, 0, 0, "", "", "", k1, "", 0, "", 0));
            MMCore.g().b(new NetSceneSync(5));
            ContactWidgetQQMail.b();
        }
        if(d != null)
        {
            d.a.add("qqmail");
            d.a_(null);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(netscenebase.b() == 16)
        {
            if(q == null)
                continue; /* Loop/switch isn't completed */
            q = null;
            k = false;
        }
        if(i != null)
        {
            i.dismiss();
            i = null;
        }
        if(!Util.c(this) || MMErrorProcessor.CertainError.a(this, i1, j1, 0))
            continue; /* Loop/switch isn't completed */
        if(i1 == 0 && j1 == 0)
            break; /* Loop/switch isn't completed */
        if(netscenebase.b() == 16)
        {
            NetSceneCreateChatRoom netscenecreatechatroom = (NetSceneCreateChatRoom)netscenebase;
            String s2 = "";
            String s3 = "";
            if(j1 == -23)
            {
                s2 = getString(0x7f0a0385);
                Object aobj5[] = new Object[1];
                aobj5[0] = Integer.valueOf(netscenecreatechatroom.g());
                s3 = getString(0x7f0a0384, aobj5);
            }
            List list = netscenecreatechatroom.k();
            if(list != null && list.size() > 0)
            {
                boolean flag;
                String s4;
                if(list != null && list.size() > 0)
                    flag = true;
                else
                    flag = false;
                Assert.assertTrue(flag);
                if(list.size() == 1)
                {
                    Object aobj4[] = new Object[1];
                    aobj4[0] = Util.a(list, "\u3001");
                    s4 = getString(0x7f0a009e, aobj4);
                } else
                {
                    Object aobj3[] = new Object[1];
                    aobj3[0] = Util.a(list, "\u3001");
                    s4 = getString(0x7f0a009d, aobj3);
                }
                MMAlert.a(this, s4, getString(0x7f0a035d), new _cls30(list));
            } else
            {
                List list1 = netscenecreatechatroom.j();
                if(list1 != null && list1.size() > 0)
                {
                    s2 = getString(0x7f0a035d);
                    StringBuilder stringbuilder1 = (new StringBuilder()).append(s3);
                    Object aobj2[] = new Object[1];
                    aobj2[0] = Util.a(list1, "\u3001");
                    s3 = stringbuilder1.append(getString(0x7f0a0092, aobj2)).toString();
                }
                List list2 = netscenecreatechatroom.i();
                if(list2 != null && list2.size() > 0)
                {
                    s2 = getString(0x7f0a035d);
                    StringBuilder stringbuilder = (new StringBuilder()).append(s3);
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Util.a(list2, "\u3001");
                    s3 = stringbuilder.append(getString(0x7f0a0093, aobj1)).toString();
                }
                if(s2 != null && s2.length() > 0)
                {
                    MMAlert.a(this, s3, s2);
                } else
                {
                    Object aobj[] = new Object[2];
                    aobj[0] = Integer.valueOf(i1);
                    aobj[1] = Integer.valueOf(j1);
                    Toast.makeText(this, getString(0x7f0a007d, aobj), 0).show();
                }
            }
        }
        if(true) goto _L3; else goto _L5
_L5:
        switch(netscenebase.b())
        {
        case 16: // '\020'
            j = ((NetSceneCreateChatRoom)netscenebase).h();
            MsgInfoStorageLogic.a(j, d.e());
            e(j);
            break;

        case 38: // '&'
            b();
            break;
        }
        if(true) goto _L3; else goto _L6
_L6:
    }

    public final void a(String s1)
    {
        if(s1 != null && s1.length() > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if(o == 0 || o == 1 || o == 3)
            d.a(MMCore.f().h().c(s1));
        else
        if(ContactStorageLogic.h(s1))
            a(com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", s1));
        else
        if(ContactStorageLogic.i(s1))
        {
            if(ConfigStorageLogic.i())
                a(com/tencent/mm/ui/TConversationUI);
            else
                startActivity((new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", s1));
        } else
        if(ContactStorageLogic.k(s1))
        {
            if(ConfigStorageLogic.g())
                a(com/tencent/mm/ui/QConversationUI);
            else
                startActivity((new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", s1));
        } else
        if(ContactStorageLogic.g(s1))
        {
            if(ConfigStorageLogic.n())
                a(com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", s1));
            else
                startActivity((new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", s1));
        } else
        if(ContactStorageLogic.o(s1))
        {
            if(ConfigStorageLogic.j())
                a(com/tencent/mm/ui/QQSyncUI);
            else
                startActivity((new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", s1));
        } else
        if(ContactStorageLogic.y(s1))
            a(com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", s1));
        else
        if(ContactStorageLogic.z(s1))
        {
            Intent intent = new Intent(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
            intent.addFlags(0x4000000);
            intent.putExtra("type", 20);
            startActivity(intent);
        } else
        if(ContactStorageLogic.A(s1))
        {
            Intent intent1 = new Intent(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppUI);
            intent1.addFlags(0x4000000);
            intent1.putExtra("type", 11);
            startActivity(intent1);
        } else
        if(ContactStorageLogic.n(s1))
        {
            startActivity(new Intent(this, com/tencent/mm/plugin/masssend/ui/MassSendHistoryUI));
        } else
        {
            Intent intent2 = new Intent();
            intent2.setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
            intent2.putExtra("Contact_User", s1);
            if(ContactStorageLogic.c(s1))
                intent2.putExtra("Is_group_card", true);
            if(s1 != null && s1.length() > 0)
                startActivity(intent2);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void b(String s1)
    {
        if(d != null)
            d.notifyDataSetChanged();
    }

    public boolean onContextItemSelected(MenuItem menuitem)
    {
        super.onContextItemSelected(menuitem);
        menuitem.getItemId();
        JVM INSTR tableswitch 1 3: default 40
    //                   1 42
    //                   2 42
    //                   3 54;
           goto _L1 _L2 _L2 _L3
_L1:
        return true;
_L2:
        c(true);
_L4:
        b();
        if(true) goto _L1; else goto _L3
_L3:
        android.app.Activity activity = getParent();
        String as[] = activity.getResources().getStringArray(0x7f060009);
        if(z.equals("qqmail"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls20(activity));
        else
        if(z.equals("tmessage"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls21());
        else
        if(z.equals("qmessage"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls22());
        else
        if(z.equals("qqsync"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls23());
        else
        if(z.equals("medianote"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls24());
        else
        if(z.equals("readerapp"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls25());
        else
        if(z.equals("blogapp"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls26());
        else
        if(z.equals("facebookapp"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls27());
        else
        if(z.equals("masssendapp"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls28());
        else
        if(z.equals("gmailapp"))
            MMAlert.a(activity, activity.getString(0x7f0a01aa), as, "", new _cls29());
        else
        if(z.equals("floatbottle"))
        {
            ContactWidgetFloatBottle.a(getParent(), false, d);
            d.a.add("floatbottle");
        } else
        if(z.equals("lbsapp"))
        {
            ContactWidgetLBS.a(getParent(), false, d);
            d.a.add("lbsapp");
        } else
        if(z.equals("shakeapp"))
        {
            ContactWidgetShake.a(getParent(), false, d);
            d.a.add("shakeapp");
        }
          goto _L4
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag = true;
        super.onCreate(bundle);
        MMCore.g().a(16, this);
        MMCore.g().a(30, this);
        MMCore.g().a(38, this);
        MMCore.g().a(24, this);
        AvatarDrawable.a(this);
        e = getIntent().getStringExtra("Contact_GroupFilter_Type");
        if(Util.h(e).length() <= 0)
            e = "@micromsg.qq.com";
        f = getIntent().getStringExtra("Contact_GroupFilter_Str");
        g = getIntent().getStringExtra("Contact_GroupFilter_DisplayName");
        h = getIntent().getStringExtra("Block_list");
        o = getIntent().getIntExtra("List_Type", 2);
        l = getIntent().getBooleanExtra("Add_SendCard", false);
        if(l)
        {
            m = Util.a(getIntent().getStringExtra("be_send_card_name"), "");
            n = Util.a(getIntent().getStringExtra("received_card_name"), "");
        }
        View view;
        EditText edittext;
        Button button;
        _cls12 _lcls12;
        if(o == 0 || o == 5)
            g = getString(0x7f0a0228);//address_title_select_contact
        else
        if(o == flag)
            g = getString(0x7f0a0229);//address_title_add_contact
        else
        if(o == 3)
            g = getString(0x7f0a0228);
        else
        if(o == 4)
            g = getString(0x7f0a0228);
        else
        if(Util.h(g).length() <= 0)
            g = getString(0x7f0a0045);
        b = (ListView)findViewById(0x7f070005);//address_contactlist
        c = (TextView)findViewById(0x7f070006);//empty_blacklist_tip_tv
        c.setText(0x7f0a022e);
        d = new AddressAdapter(this, e, f, o);
        d.a(new _cls1());
        view = View.inflate(this, 0x7f0300ce, null);//search_bar
        edittext = (EditText)view.findViewById(0x7f07022c);//search_bar_et
        button = (Button)view.findViewById(0x7f07022d);//search_clear_bt
        edittext.setCompoundDrawablesWithIntrinsicBounds(0x7f02026b, 0, 0, 0);//search_bar_icon_normal
        edittext.addTextChangedListener(new _cls2(button));
        button.setOnClickListener(new _cls3(edittext));
        b.addHeaderView(view);
        b.setAdapter(d);
        b.setOnItemClickListener(new _cls4());
        if(o == 2)
            registerForContextMenu(b);
        b.setOnItemLongClickListener(new _cls5());
        b.setOnTouchListener(new _cls6());
        b.setOnScrollListener(new AvatarWrapperScrollListener(new _cls7()));
        if(o == 2 && (e == null || e.equals("@micromsg.qq.com")))
            a(0x7f0a0230, new _cls8());//address_multi_select_opt
        if(o == 3 || o == 0 || o == flag)
            if(o == flag)
            {
                b(d.f());
                a(0x7f0a001c, new _cls9()).setBackgroundResource(0x7f0201b8);//mm_title_act_btn
            } else
            {
                b(d.f());
                a(0x7f0a001c, new _cls10()).setBackgroundResource(0x7f0201b8);//mm_title_act_btn
            }
        if(o == 3 || o == 0 || o == flag || o == 5)
            d((new StringBuilder()).append(g).append("(").append(d.e().size()).append(")").toString());
        else
            d(g);
        a(new _cls11());
        _lcls12 = new _cls12();
        if(o == 4 || o == 0 || o == flag || o == 3)
            b(0x7f0a0015, _lcls12);
        else
        if("@black.android".equals(e) || "@domain.android".equals(e) || "@t.qq.com".equals(e))
            b(_lcls12);
        else
        if(o == 5)
            a(0x7f0a0015, _lcls12);
        p = (AlphabetScrollBar)findViewById(0x7f070007);
        if("@black.android".equals(e))
        {
            p.setVisibility(8);
        } else
        {
            p.setVisibility(0);
            p.a(F);
        }
        if(o == 0 || o == flag || o == 3)
        {
            t = (LinearLayout)findViewById(0x7f070008);
            ((View)t.getParent()).setVisibility(0);
        } else
        if(o == 5)
        {
            u = (LinearLayout)findViewById(0x7f070009);
            u.setVisibility(0);
        }
        if("@t.qq.com".equals(e))
        {
            boolean flag1;
            if(!ContactStorageLogic.b())
                flag1 = flag;
            else
                flag1 = false;
            a(9, flag1);
        } else
        if("@qqim".equals(e))
        {
            if(ContactStorageLogic.c())
                flag = false;
            a(10, flag);
        }
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
        android.widget.AdapterView.AdapterContextMenuInfo adaptercontextmenuinfo;
        Contact contact;
        super.onCreateContextMenu(contextmenu, view, contextmenuinfo);
        adaptercontextmenuinfo = (android.widget.AdapterView.AdapterContextMenuInfo)contextmenuinfo;
        contact = MMCore.f().h().c(z);
        break MISSING_BLOCK_LABEL_28;
        while(true) 
        {
            do
                return;
            while("@domain.android".equals(e) || "@black.android".equals(e) || "@t.qq.com".equals(e) || ConfigStorageLogic.b().equals(contact.s()));
            if(ContactStorageLogic.c(z))
            {
                contextmenu.setHeaderTitle(SpanUtil.a(this, contact.A(), -1));
                contextmenu.add(adaptercontextmenuinfo.position, 2, 0, 0x7f0a022d);
            } else
            if(ContactStorageLogic.F(z))
            {
                if(!z.equals("fmessage"))
                {
                    contextmenu.setHeaderTitle(SpanUtil.a(this, contact.A(), -1));
                    contextmenu.add(adaptercontextmenuinfo.position, 3, 0, 0x7f0a01a6);
                }
            } else
            if(!ContactStorageLogic.v(z))
            {
                contextmenu.setHeaderTitle(SpanUtil.a(this, contact.A(), -1));
                contextmenu.add(adaptercontextmenuinfo.position, 1, 0, 0x7f0a022c);
            }
        }
    }

    public void onDestroy()
    {
        MMCore.g().b(16, this);
        MMCore.g().b(30, this);
        MMCore.g().b(38, this);
        MMCore.g().b(24, this);
        com.tencent.mm.ui.AvatarDrawable.b(this);
        p.a();
        d.n();
        d.m();
        if(a != null)
            a.dismiss();
        if(s != null)
            s.dismiss();
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        int i1 = 0;
        super.onResume();
        List list = null;
        if(h != null && !h.equals(""))
            list = Util.a(h.split(","));
        Object obj;
        Boolean boolean1;
        int j1;
        boolean flag;
        Contact contact;
        String as[];
        int k1;
        int l1;
        String as1[];
        int i2;
        if(list != null && list.size() != 0)
        {
            if(o == 0 || o == 1)
            {
                d.b(list);
                obj = list;
            } else
            if(o != 3 && o == 4)
                obj = list;
            else
                obj = list;
        } else
        {
            obj = new LinkedList();
        }
        o;
        JVM INSTR tableswitch 0 5: default 120
    //                   0 286
    //                   1 286
    //                   2 319
    //                   3 286
    //                   4 286
    //                   5 286;
           goto _L1 _L2 _L2 _L3 _L2 _L2 _L2
_L1:
        break; /* Loop/switch isn't completed */
_L3:
        break MISSING_BLOCK_LABEL_319;
_L4:
        d.a(((List) (obj)));
        if(o == 3 || o == 0 || o == 1)
            d((new StringBuilder()).append(g).append("(").append(d.e().size()).append(")").toString());
        else
            d(g);
        if(o == 2)
        {
            contact = MMCore.f().h().c(ConfigStorageLogic.b());
            if(!contact.l())
            {
                contact.f();
                MMCore.f().h().a(ConfigStorageLogic.b(), contact);
            }
        }
        b();
        return;
_L2:
        as1 = ContactStorageLogic.d;
        i2 = as1.length;
        while(i1 < i2) 
        {
            ((List) (obj)).add(as1[i1]);
            i1++;
        }
          goto _L4
        boolean1 = (Boolean)MMCore.f().f().a(35);
        if(boolean1 != null && !boolean1.booleanValue())
        {
            as = ContactStorageLogic.d;
            k1 = as.length;
            l1 = i1;
            while(l1 < k1) 
            {
                ((List) (obj)).add(as[l1]);
                l1++;
            }
        } else
        {
            ((List) (obj)).add("lbsapp");
            ((List) (obj)).add("shakeapp");
            ((List) (obj)).add("floatbottle");
            ((List) (obj)).add("qqfriend");
            ((List) (obj)).add("facebookapp");
            ((List) (obj)).add("gmailapp");
            ((List) (obj)).add("facebookapp");
            j1 = ConfigStorageLogic.f();
            if((j1 & 1) != 0)
                ((List) (obj)).add("qqmail");
            if(!ContactStorageLogic.e() || (j1 & 2) != 0)
                ((List) (obj)).add("tmessage");
            if((j1 & 0x20) != 0)
                ((List) (obj)).add("qmessage");
            if((j1 & 0x80) != 0)
                ((List) (obj)).add("qqsync");
            if((j1 & 0x10) != 0)
                ((List) (obj)).add("medianote");
            if((j1 & 0x4000) != 0)
                ((List) (obj)).add("readerapp");
            flag = ContactStorageLogic.d();
            if((0x40000 & j1) != 0 || !flag)
                ((List) (obj)).add("blogapp");
            if((j1 & 0x10000) != 0)
                ((List) (obj)).add("masssendapp");
        }
          goto _L4
    }

    private String A;
    private boolean B;
    private android.view.View.OnClickListener C;
    private android.view.View.OnClickListener D;
    private android.view.View.OnClickListener E;
    private AlphabetScrollBar.OnScollBarTouchListener F;
    private AlertDialog a;
    private ListView b;
    private TextView c;
    private AddressAdapter d;
    private String e;
    private String f;
    private String g;
    private String h;
    private ProgressDialog i;
    private String j;
    private boolean k;
    private boolean l;
    private String m;
    private String n;
    private int o;
    private AlphabetScrollBar p;
    private NetSceneCreateChatRoom q;
    private ProgressDialog r;
    private PopupWindow s;
    private LinearLayout t;
    private LinearLayout u;
    private Button v;
    private Button w;
    private Button x;
    private Button y;
    private String z;

    private class _cls13
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Object obj = view.getTag();
            if(obj != null)
            {
                AddressAdapter addressadapter = AddressUI.a(a);
                String s1 = (String)obj;
                Contact contact = MMCore.f().h().c(s1);
                if(contact != null)
                    addressadapter.a(contact);
                a.d((new StringBuilder()).append(AddressUI.d(a)).append("(").append(AddressUI.a(a).e().size()).append(")").toString());
                if(AddressUI.a(a).f())
                    a.b(true);
                else
                    a.b(false);
                com.tencent.mm.ui.AddressUI.b(a, (String)obj);
            }
        }

        private AddressUI a;

        _cls13()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls14
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            List list = AddressUI.a(a).e();
            if(list == null || list.size() == 0) goto _L2; else goto _L1
_L1:
            if(list.size() != 1) goto _L4; else goto _L3
_L3:
            AddressUI.d(a, (String)list.get(0));
_L2:
            return;
_L4:
            if(!AddressUI.i(a))
            {
                AddressUI.a(a, true);
                AddressUI.j(a);
            }
            if(true) goto _L2; else goto _L5
_L5:
        }

        private AddressUI a;

        _cls14()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls15
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements MMAlert.OnAlertSelectId
            {

                public final void a(int i1)
                {
                    if(i1 == 0)
                    {
                        List list = AddressUI.a(a.a).i();
                        Iterator iterator = list.iterator();
                        int j1 = 0;
                        while(iterator.hasNext()) 
                        {
                            AddressAdapter.SelectedContact selectedcontact = (AddressAdapter.SelectedContact)iterator.next();
                            AddressUI.c(a.a, selectedcontact.a);
                            AddressUI addressui = a.a;
                            int k1 = j1 + 1;
                            boolean flag;
                            if(k1 == list.size())
                                flag = true;
                            else
                                flag = false;
                            com.tencent.mm.ui.AddressUI.b(addressui, flag);
                            j1 = k1;
                        }
                        a.a.finish();
                    }
                }

                private _cls15 a;

                _cls1()
                {
                    a = _cls15.this;
                    super();
                }
            }

            MMAlert.a(a, null, null, a.getString(0x7f0a0232), new _cls1());
        }

        final AddressUI a;

        _cls15()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls16
        implements AlphabetScrollBar.OnScollBarTouchListener
    {

        public final void a(String s1)
        {
            int i1 = 0;
            if(!a.getString(0x7f0a0043).equals(s1)) goto _L2; else goto _L1 //scroll_bar_search
_L1:
            AddressUI.k(a).setSelection(i1);
_L4:
            return;
_L2:
            String as[];
            as = AddressUI.a(a).j();
            if(as == null)
                continue; /* Loop/switch isn't completed */
_L5:
            if(i1 < as.length)
            {
label0:
                {
                    if(!as[i1].equals(s1))
                        break label0;
                    int j1 = AddressUI.a(a).b(i1);
                    AddressUI.k(a).setSelection(j1 + 1);
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
            i1++;
              goto _L5
            if(true) goto _L4; else goto _L6
_L6:
        }

        private AddressUI a;

        _cls16()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls17
        implements Runnable
    {

        public void run()
        {
            MMCore.g().b(a);
        }

        private NetSceneSync a;
        private AddressUI b;

        _cls17(NetSceneSync netscenesync)
        {
            b = AddressUI.this;
            a = netscenesync;
            super();
        }
    }


    private class _cls18
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSync a;
        private AddressUI b;

        _cls18(NetSceneSync netscenesync)
        {
            b = AddressUI.this;
            a = netscenesync;
            super();
        }
    }


    private class _cls19
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            AddressUI.a(a, false);
            MMCore.g().a(AddressUI.m(a));
        }

        private AddressUI a;

        _cls19()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls30
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            int j1 = 0;
            AddressUI addressui = b;
            List list = a;
            int k1;
            LinkedList linkedlist;
            if(list.size() > 0)
                k1 = 1;
            else
                k1 = j1;
            Assert.assertTrue(k1);
            linkedlist = new LinkedList();
            for(; j1 < list.size(); j1++)
                linkedlist.add(new Integer(3));

            (new SendVerifyRequest(addressui, addressui. new _cls31())).a(list, linkedlist);
        }

        private List a;
        private AddressUI b;

        _cls30(List list)
        {
            b = AddressUI.this;
            a = list;
            super();
        }

        private class _cls31
            implements SendVerifyRequest.IOnSendVerifyRequest
        {

            public final void a()
            {
            }

            private AddressUI a;

            _cls31()
            {
                a = AddressUI.this;
                super();
            }
        }

    }


    private class _cls20
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            String s1 = a.getString(0x7f0a01a9);
            NetSceneSwitchPushMail netsceneswitchpushmail = new NetSceneSwitchPushMail(false, "");
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneSwitchPushMail a;
                private _cls20 b;

                _cls1(NetSceneSwitchPushMail netsceneswitchpushmail)
                {
                    b = _cls20.this;
                    a = netsceneswitchpushmail;
                    super();
                }
            }

            AddressUI.a(b, MMAlert.a(a, a.getString(0x7f0a0010), s1, true, new _cls1(netsceneswitchpushmail)));
            AddressUI.n(b);
            MMCore.g().b(netsceneswitchpushmail);
            if(true) goto _L1; else goto _L3
_L3:
        }

        private Context a;
        private AddressUI b;

        _cls20(Context context)
        {
            b = AddressUI.this;
            a = context;
            super();
        }
    }


    private class _cls21
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetTMessage.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("tmessage");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls21()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls22
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetQMessage.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("qmessage");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls22()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls23
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetQQSync.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("qqsync");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls23()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls24
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetMediaNote.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("medianote");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls24()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls25
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetReaderAppNews.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("readerapp");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls25()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls26
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetReaderAppWeibo.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("blogapp");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls26()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls27
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetFacebookapp.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("facebookapp");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls27()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls28
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetMassSend.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("masssendapp");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls28()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls29
        implements MMAlert.OnAlertSelectId
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 0 0: default 20
        //                       0 21;
               goto _L1 _L2
_L1:
            return;
_L2:
            ContactWidgetGmail.a(a.getParent(), false, AddressUI.a(a));
            AddressUI.a(a).a.add("gmailapp");
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls29()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls1
        implements MListAdapter.CallBack
    {

        public final void a()
        {
            AddressUI.a(a, AddressUI.a(a).getCount());
        }

        public final void b()
        {
        }

        private AddressUI a;

        _cls1()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls2
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
            AddressUI.a(b, Util.a(charsequence.toString()));
            com.tencent.mm.ui.AddressUI.b(b);
            Button button = a;
            int l1;
            if(charsequence.toString().length() > 0)
                l1 = 0;
            else
                l1 = 8;
            button.setVisibility(l1);
        }

        private Button a;
        private AddressUI b;

        _cls2(Button button)
        {
            b = AddressUI.this;
            a = button;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setText("");
        }

        private EditText a;
        private AddressUI b;

        _cls3(EditText edittext)
        {
            b = AddressUI.this;
            a = edittext;
            super();
        }
    }


    private class _cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            if(i1 != 0)
            {
                int j1 = i1 + -1;
                Contact contact = (Contact)AddressUI.a(a).getItem(j1);
                if(AddressUI.c(a) == 0 || AddressUI.c(a) == 1 || AddressUI.c(a) == 3)
                {
                    AddressUI.a(a).a(j1);
                    a.d((new StringBuilder()).append(AddressUI.d(a)).append("(").append(AddressUI.a(a).e().size()).append(")").toString());
                    if(AddressUI.a(a).f())
                        a.b(true);
                    else
                        a.b(false);
                    com.tencent.mm.ui.AddressUI.b(a, contact.s());
                } else
                if(AddressUI.c(a) == 5)
                {
                    AddressUI.a(a).a(j1);
                    com.tencent.mm.ui.AddressUI.b(a, contact.s());
                } else
                if(AddressUI.c(a) == 4)
                {
                    if(AddressUI.e(a).endsWith("@chatroom"))
                    {
                        AddressUI addressui = a;
                        String s2 = contact.s();
                        String s3 = AddressUI.e(a);
                        Intent intent = new Intent();
                        intent.setClass(addressui, com/tencent/mm/ui/SendContactCardUI);
                        boolean flag;
                        if(s2 != null)
                            flag = true;
                        else
                            flag = false;
                        Assert.assertTrue("cardNameToSend is null", flag);
                        intent.putExtra("be_send_card_name", s2);
                        intent.putExtra("received_card_name", s3);
                        intent.putExtra("Is_Chatroom", true);
                        intent.addFlags(0x4000000);
                        addressui.startActivity(intent);
                        addressui.finish();
                    } else
                    {
                        AddressUI.a(a, contact.s(), AddressUI.e(a));
                    }
                } else
                {
                    String s1 = contact.s();
                    a.a(s1);
                }
            }
        }

        private AddressUI a;

        _cls4()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls5
        implements android.widget.AdapterView.OnItemLongClickListener
    {

        public boolean onItemLongClick(AdapterView adapterview, View view, int i1, long l1)
        {
            boolean flag;
            flag = true;
            break MISSING_BLOCK_LABEL_3;
            if(AddressUI.c(a) != 0 && AddressUI.c(a) != flag && AddressUI.c(a) != 3 && AddressUI.c(a) != 4 && i1 != 0)
            {
                Contact contact = (Contact)AddressUI.a(a).getItem(i1 + -1);
                AddressUI.c(a, contact.s());
                flag = false;
            }
            return flag;
        }

        private AddressUI a;

        _cls5()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 0: default 24
        //                       0 26;
               goto _L1 _L2
_L1:
            return false;
_L2:
            Log.d("MicroMsg.AddressUI", " Action down");
            a.n();
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls6()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls7
        implements android.widget.AbsListView.OnScrollListener
    {

        public void onScroll(AbsListView abslistview, int i1, int j1, int k1)
        {
            if(i1 >= 2 && !Util.b((Boolean)MMCore.f().f().a(12296)))
            {
                MMCore.f().f().a(12296, Boolean.valueOf(true));
                if(AddressUI.f(a) != null)
                    AddressUI.f(a).dismiss();
                AddressUI.a(a, MMToast.a(a, a.getString(0x7f0a0131), 4000L));
            }
        }

        public void onScrollStateChanged(AbsListView abslistview, int i1)
        {
        }

        private AddressUI a;

        _cls7()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/ui/AddressUI);
            intent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
            intent.putExtra("List_Type", 5);
            a.startActivity(intent);
        }

        private AddressUI a;

        _cls8()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            List list = AddressUI.a(a).g();
            if(list == null || list.size() == 0)
            {
                a.setResult(0);
                a.finish();
            } else
            {
                intent.putExtra("Select_Contact", Util.a(list, ","));
                a.setResult(-1, intent);
                a.finish();
            }
        }

        private AddressUI a;

        _cls9()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(AddressUI.k(a));
        }

        private AddressUI a;

        _cls11()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(AddressUI.c(a) != 4 && AddressUI.c(a) != 3 && AddressUI.c(a) != 0 && AddressUI.c(a) != 1 && !"@t.qq.com".equals(AddressUI.l(a)) && AddressUI.c(a) != 5) goto _L2; else goto _L1
_L1:
            a.finish();
_L4:
            return;
_L2:
            if("@black.android".equals(AddressUI.l(a)) || "@domain.android".equals(AddressUI.l(a)))
            {
                a.n();
                SettingsUIGroup.a.b();
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls12()
        {
            a = AddressUI.this;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            List list = AddressUI.a(a).e();
            if(!AddressUI.g(a)) goto _L2; else goto _L1
_L1:
            AddressUI.a(a, AddressUI.h(a), list);
_L4:
            return;
_L2:
            if(list != null && list.size() != 0)
                if(list.size() == 1)
                    AddressUI.d(a, (String)list.get(0));
                else
                if(!AddressUI.i(a))
                {
                    AddressUI.a(a, true);
                    AddressUI.j(a);
                }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private AddressUI a;

        _cls10()
        {
            a = AddressUI.this;
            super();
        }
    }

}
