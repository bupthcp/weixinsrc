// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.*;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelmulti.NetSceneSendMsg;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.Contact;
import com.tencent.mm.storage.ContactStorage;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.List;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MemberCardInfoAdapter

public class SendContactCardUI extends MMActivity
{

    public SendContactCardUI()
    {
    }

    static ListView a(SendContactCardUI sendcontactcardui)
    {
        return sendcontactcardui.a;
    }

    private String b()
    {
        ImgFlag imgflag = MMCore.f().B().a(f);
        Contact contact = MMCore.f().h().c(f);
        int i = contact.I();
        if(imgflag != null)
            i = imgflag.d();
        return (new StringBuilder()).append("<msg username=\"").append(contact.s()).append("\" nickname=\"").append(contact.t()).append("\" fullpy=\"").append(contact.z()).append("\" shortpy=\"").append(contact.w()).append("\" imagestatus=\"").append(i).append("\" scene=\"").append("17").append("\" province=\"").append(contact.L()).append("\" city=\"").append(contact.M()).append("\" sign=\"").append(contact.K()).append("\" percard=\"").append(contact.J()).append("\" sex=\"").append(contact.p()).append("\" />").toString();
    }

    static boolean b(SendContactCardUI sendcontactcardui)
    {
        return sendcontactcardui.g;
    }

    static void c(SendContactCardUI sendcontactcardui)
    {
        String s = sendcontactcardui.b();
        NetSceneSendMsg netscenesendmsg = new NetSceneSendMsg(ConfigStorageLogic.b(), sendcontactcardui.d, s, 42, 0);
        MMCore.g().b(netscenesendmsg);
    }

    static void d(SendContactCardUI sendcontactcardui)
    {
        String s = sendcontactcardui.b();
        for(int i = 0; i < sendcontactcardui.c.size(); i++)
        {
            String s1 = (String)sendcontactcardui.c.get(i);
            NetSceneSendMsg netscenesendmsg = new NetSceneSendMsg(ConfigStorageLogic.b(), s1, s, 42, 0);
            MMCore.g().b(netscenesendmsg);
        }

    }

    protected final int a()
    {
        return 0x7f0300d5;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        f = getIntent().getStringExtra("be_send_card_name");
        g = getIntent().getBooleanExtra("Is_Chatroom", false);
        Contact contact;
        TextView textview;
        TextView textview1;
        TextView textview2;
        ImageView imageview;
        List list;
        if(g)
            d = Util.a(getIntent().getStringExtra("received_card_name"), "");
        else
            c = Util.a(Util.a(getIntent().getStringExtra("received_card_name"), "").split(","));
        d(0x7f0a0319);
        e = getLayoutInflater().inflate(0x7f0300d4, null);
        contact = MMCore.f().h().c(f);
        textview = (TextView)e.findViewById(0x7f07023b);
        textview1 = (TextView)e.findViewById(0x7f070239);
        textview2 = (TextView)e.findViewById(0x7f07023a);
        imageview = (ImageView)e.findViewById(0x7f070238);
        textview2.setText(getString(0x7f0a0039));
        textview1.setText(SpanUtil.a(this, contact.t(), (int)textview1.getTextSize()));
        imageview.setImageBitmap(AvatarLogic.i(contact.s()));
        textview.setText(contact.s());
        b(new _cls1());
        a(new _cls2());
        a(getString(0x7f0a0016), new _cls3());
        a = (ListView)findViewById(0x7f07023c);
        if(!g)
            list = c;
        else
            list = ChatroomMembersLogic.c(d);
        b = new MemberCardInfoAdapter(this, list);
        a.addHeaderView(e);
        a.setAdapter(b);
        b.a_(null);
        MMCore.f().y().a(b);
    }

    public void onDestroy()
    {
        MMCore.f().y().b(b);
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        b.a_(null);
    }

    private ListView a;
    private MemberCardInfoAdapter b;
    private List c;
    private String d;
    private View e;
    private String f;
    private boolean g;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private SendContactCardUI a;

        _cls1()
        {
            a = SendContactCardUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(SendContactCardUI.a(a));
        }

        private SendContactCardUI a;

        _cls2()
        {
            a = SendContactCardUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(com.tencent.mm.ui.SendContactCardUI.b(a))
                SendContactCardUI.c(a);
            else
                SendContactCardUI.d(a);
            a.finish();
        }

        private SendContactCardUI a;

        _cls3()
        {
            a = SendContactCardUI.this;
            super();
        }
    }

}
