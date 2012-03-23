// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelverify.NetSceneVerifyUser;
import com.tencent.mm.platformtools.Log;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui:
//            MMAlert

public class SendVerifyRequest extends LinearLayout
    implements IOnSceneEnd
{

    public SendVerifyRequest(Context context, IOnSendVerifyRequest ionsendverifyrequest)
    {
        super(context);
        b = null;
        d = context;
        c = ionsendverifyrequest;
    }

    static AlertDialog a(SendVerifyRequest sendverifyrequest)
    {
        return sendverifyrequest.b;
    }

    private void a()
    {
        MMCore.g().b(30, this);
        if(b != null)
        {
            b.dismiss();
            b = null;
        }
    }

    static void a(SendVerifyRequest sendverifyrequest, String s)
    {
        sendverifyrequest.a = MMAlert.a(sendverifyrequest.d, sendverifyrequest.d.getString(0x7f0a0010), sendverifyrequest.d.getString(0x7f0a031d), true, sendverifyrequest. new _cls3());
        MMCore.g().b(new NetSceneVerifyUser(2, sendverifyrequest.f, sendverifyrequest.g, s));
    }

    static AlertDialog b(SendVerifyRequest sendverifyrequest)
    {
        sendverifyrequest.b = null;
        return null;
    }

    static View c(SendVerifyRequest sendverifyrequest)
    {
        return sendverifyrequest.e;
    }

    static void d(SendVerifyRequest sendverifyrequest)
    {
        sendverifyrequest.a();
    }

    static IOnSendVerifyRequest e(SendVerifyRequest sendverifyrequest)
    {
        return sendverifyrequest.c;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(netscenebase.b() != 30)
        {
            Log.b("MicroMsg.SendVerifyRequest", (new StringBuilder()).append("not expected scene,  type = ").append(netscenebase.b()).toString());
        } else
        {
            if(a != null)
            {
                a.dismiss();
                a = null;
            }
            a();
            if(i == 0 && j == 0)
            {
                Toast.makeText(d, d.getString(0x7f0a031e), 1).show();
                c.a();
            } else
            {
                Toast.makeText(d, d.getString(0x7f0a031f), 1).show();
                c.a();
            }
        }
    }

    public final void a(List list, List list1)
    {
        boolean flag = true;
        boolean flag1;
        _cls1 _lcls1;
        _cls2 _lcls2;
        if(list.size() > 0)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(list1.size() <= 0)
            flag = false;
        Assert.assertTrue(flag);
        MMCore.g().a(30, this);
        f = list;
        g = list1;
        e = inflate(d, 0x7f0300d7, null);
        _lcls1 = new _cls1();
        _lcls2 = new _cls2();
        b = MMAlert.a(d, d.getString(0x7f0a031b), e, _lcls1, _lcls2);
    }

    private ProgressDialog a;
    private AlertDialog b;
    private IOnSendVerifyRequest c;
    private Context d;
    private View e;
    private List f;
    private List g;

    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            SendVerifyRequest.d(a);
            SendVerifyRequest.e(a).a();
        }

        private SendVerifyRequest a;

        _cls3()
        {
            a = SendVerifyRequest.this;
            super();
        }
    }


    private class IOnSendVerifyRequest
    {

        public abstract void a();
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(SendVerifyRequest.a(a) != null)
            {
                SendVerifyRequest.a(a).dismiss();
                SendVerifyRequest.b(a);
            }
            if(SendVerifyRequest.c(a) != null)
                SendVerifyRequest.a(a, ((EditText)SendVerifyRequest.c(a).findViewById(0x7f070241)).getText().toString().trim());
        }

        private SendVerifyRequest a;

        _cls1()
        {
            a = SendVerifyRequest.this;
            super();
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(SendVerifyRequest.a(a) != null)
            {
                SendVerifyRequest.a(a).dismiss();
                SendVerifyRequest.b(a);
            }
            SendVerifyRequest.d(a);
            if(SendVerifyRequest.e(a) != null)
                SendVerifyRequest.e(a).a();
        }

        private SendVerifyRequest a;

        _cls2()
        {
            a = SendVerifyRequest.this;
            super();
        }
    }

}
