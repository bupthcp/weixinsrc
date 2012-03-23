// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelsimple.NetSceneSearchContact;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.contact.ContactInfoUI;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity, MMAlert

public class ContactSearchUI extends MMActivity
    implements IOnSceneEnd
{

    public ContactSearchUI()
    {
        b = null;
    }

    static void a(ContactSearchUI contactsearchui)
    {
        String s = contactsearchui.a.getText().toString().trim();
        if(s == null || s.length() <= 0)
            MMAlert.a(contactsearchui.c(), 0x7f0a00b8, 0x7f0a0010);
        else
        if(s.equals((String)MMCore.f().f().a(2)))
        {
            MMAlert.a(contactsearchui.c(), 0x7f0a02a1, 0x7f0a0010);
        } else
        {
            Contact contact = MMCore.f().h().c(s);
            if(contact != null && contact.o() != 0 && contact.l())
            {
                Intent intent = new Intent();
                intent.putExtra("Contact_User", contact.s());
                intent.setClass(contactsearchui, com/tencent/mm/ui/contact/ContactInfoUI);
                contactsearchui.startActivity(intent);
            } else
            {
                NetSceneSearchContact netscenesearchcontact = new NetSceneSearchContact(s);
                MMCore.g().b(netscenesearchcontact);
                contactsearchui.b = MMAlert.a(contactsearchui.c(), contactsearchui.getString(0x7f0a0010), contactsearchui.getString(0x7f0a022a), true, contactsearchui. new _cls5(netscenesearchcontact));
            }
        }
    }

    protected final int a()
    {
        return 0x7f030043;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        byte byte0;
        byte0 = 2;
        Log.c("MicroMsg.ContactSearchUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
        if(!MMErrorProcessor.CertainError.a(c(), i, j, 3)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        com.tencent.mm.protocal.MMSearchContact.Resp resp;
        Intent intent;
        String s1;
        if(i == 4 && j == -4)
        {
            MMAlert.a(c(), 0x7f0a022b, 0x7f0a0010);
            continue; /* Loop/switch isn't completed */
        }
        if(i != 0 || j != 0)
        {
            Object aobj[] = new Object[byte0];
            aobj[0] = Integer.valueOf(i);
            aobj[1] = Integer.valueOf(j);
            Toast.makeText(this, getString(0x7f0a007f, aobj), 0).show();
            continue; /* Loop/switch isn't completed */
        }
        resp = ((NetSceneSearchContact)netscenebase).f();
        Contact contact = MMCore.f().h().c(resp.d());
        if(contact != null && contact.o() != 0)
        {
            Intent intent1 = new Intent();
            intent1.putExtra("Contact_User", contact.s());
            intent1.setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
            if(Util.h(contact.s()).length() > 0)
                startActivity(intent1);
            continue; /* Loop/switch isn't completed */
        }
        intent = new Intent();
        intent.putExtra("Contact_User", resp.d());
        intent.putExtra("Contact_Alias", resp.b());
        intent.putExtra("Contact_Nick", resp.e());
        intent.putExtra("Contact_PyInitial", resp.f());
        intent.putExtra("Contact_QuanPin", resp.g());
        intent.putExtra("Contact_Sex", resp.i());
        intent.putExtra("Contact_VUser_Info", resp.o());
        intent.putExtra("Contact_VUser_Info_Flag", resp.n());
        intent.putExtra("Contact_KWeibo_flag", resp.q());
        intent.putExtra("Contact_KWeibo", resp.p());
        intent.putExtra("Contact_KWeiboNick", resp.r());
        s1 = a.getText().toString().trim();
        if(!Util.b(s1))
            break; /* Loop/switch isn't completed */
        byte0 = 1;
_L5:
        intent.putExtra("Contact_Scene", byte0);
        intent.putExtra("Contact_KHideExpose", true);
        intent.putExtra("Contact_Province", resp.m());
        intent.putExtra("Contact_City", resp.l());
        MMCore.f().y().a(resp.d(), resp.h());
        intent.setClass(this, com/tencent/mm/ui/contact/ContactInfoUI);
        if(Util.h(resp.d()).length() > 0)
            startActivity(intent);
        if(true) goto _L1; else goto _L3
_L3:
        if(Util.c(s1)) goto _L5; else goto _L4
_L4:
        Util.d(s1);
        byte0 = 3;
          goto _L5
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a029e);
        a = (EditText)findViewById(0x7f070104);
        a.addTextChangedListener(new _cls1());
        a(getString(0x7f0a001d), new _cls2());
        b(new _cls3());
        ((Button)findViewById(0x7f070105)).setOnClickListener(new _cls4());
        MMCore.g().a(5, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(5, this);
        super.onDestroy();
    }

    private EditText a;
    private ProgressDialog b;

    private class _cls5
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneSearchContact a;
        private ContactSearchUI b;

        _cls5(NetSceneSearchContact netscenesearchcontact)
        {
            b = ContactSearchUI.this;
            a = netscenesearchcontact;
            super();
        }
    }


    private class _cls1
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
            ContactSearchUI contactsearchui = a;
            boolean flag;
            if(editable.length() > 0)
                flag = true;
            else
                flag = false;
            contactsearchui.b(flag);
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        private ContactSearchUI a;

        _cls1()
        {
            a = ContactSearchUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ContactSearchUI.a(a);
        }

        private ContactSearchUI a;

        _cls2()
        {
            a = ContactSearchUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private ContactSearchUI a;

        _cls3()
        {
            a = ContactSearchUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent();
            intent.setClass(a, com/tencent/mm/ui/friend/InviteRecommendChoiceUI);
            a.startActivity(intent);
        }

        private ContactSearchUI a;

        _cls4()
        {
            a = ContactSearchUI.this;
            super();
        }
    }

}
