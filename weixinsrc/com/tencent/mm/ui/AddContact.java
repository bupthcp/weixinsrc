// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.ProgressDialog;
import android.content.Context;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelverify.NetSceneVerifyUser;
import com.tencent.mm.platformtools.Log;
import java.util.LinkedList;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            SendVerifyRequest, MMAlert

public class AddContact extends LinearLayout
    implements IOnSceneEnd
{

    public AddContact(Context context, IOnAddContact ionaddcontact)
    {
        super(context);
        b = context;
        a = ionaddcontact;
        d = new LinkedList();
        c = null;
    }

    private void a()
    {
        MMCore.g().b(30, this);
    }

    static void a(AddContact addcontact)
    {
        addcontact.a(false);
    }

    private void a(boolean flag)
    {
        a();
        a.a(flag);
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() != 30)
        {
            Log.b("MicroMsg.AddContact", (new StringBuilder()).append("not expected scene,  type = ").append(netscenebase.b()).toString());
        } else
        {
            if(c != null)
            {
                c.dismiss();
                c = null;
            }
            if(i == 0 && j == 0)
                a(true);
            else
            if(j == -44)
            {
                SendVerifyRequest sendverifyrequest = new SendVerifyRequest(b, new _cls2());
                a();
                sendverifyrequest.a(d, e);
            } else
            {
                if(i == 4 && j == -22)
                    Toast.makeText(b, b.getString(0x7f0a0321), 1).show();
                else
                    Toast.makeText(b, b.getString(0x7f0a0320), 1).show();
                a(false);
            }
        }
    }

    public final void a(String s, List list)
    {
        boolean flag = false;
        boolean flag1;
        if(s != null && s.length() > 0)
            flag1 = true;
        else
            flag1 = flag;
        Assert.assertTrue(flag1);
        if(list != null)
            flag = true;
        Assert.assertTrue(flag);
        MMCore.g().a(30, this);
        c = MMAlert.a(b, b.getString(0x7f0a0010), b.getString(0x7f0a0260), true, new _cls1());
        e = list;
        d.add(s);
        MMCore.g().b(new NetSceneVerifyUser(1, d, list, ""));
    }

    private IOnAddContact a;
    private Context b;
    private ProgressDialog c;
    private List d;
    private List e;

    private class IOnAddContact
    {

        public abstract void a(boolean flag);
    }


    private class _cls2
        implements SendVerifyRequest.IOnSendVerifyRequest
    {

        public final void a()
        {
            AddContact.a(a);
        }

        private AddContact a;

        _cls2()
        {
            a = AddContact.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            AddContact.a(a);
        }

        private AddContact a;

        _cls1()
        {
            a = AddContact.this;
            super();
        }
    }

}
