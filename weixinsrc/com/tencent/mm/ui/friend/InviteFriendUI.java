// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import b.a.o;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.AddrUpload;
import com.tencent.mm.modelfriend.AddrUploadStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class InviteFriendUI extends MMActivity
    implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged, IOnSceneEnd
{

    public InviteFriendUI()
    {
        e = null;
    }

    static int a(InviteFriendUI invitefriendui)
    {
        return invitefriendui.a;
    }

    static ProgressDialog a(InviteFriendUI invitefriendui, ProgressDialog progressdialog)
    {
        invitefriendui.e = progressdialog;
        return progressdialog;
    }

    static void a(InviteFriendUI invitefriendui, Class class1, Intent intent)
    {
        invitefriendui.a(class1, intent);
    }

    static String b(InviteFriendUI invitefriendui)
    {
        return invitefriendui.b;
    }

    static String c(InviteFriendUI invitefriendui)
    {
        return invitefriendui.c;
    }

    protected final int a()
    {
        return 0x7f030056;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.InviteFriendUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(e != null)
        {
            e.dismiss();
            e = null;
        }
        if(i == 0 && j == 0)
        {
            Log.c("MicroMsg.InviteFriendUI", "dealSendInviteEmailSuccess");
            MMAlert.a(this, 0x7f0a0311, 0x7f0a0010, new _cls4());
        } else
        {
            Log.c("MicroMsg.InviteFriendUI", "dealSendInviteEmailFail");
        }
    }

    public final void b(String s)
    {
        if(b != null && !b.equals("")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        long l = AvatarLogic.d(s);
        if(l > 0L && b.equals((new StringBuilder()).append("").append(l).toString()) && a == 0)
            d.setImageBitmap(AvatarLogic.i(s));
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a030a);
        MMCore.g().a(14, this);
        a = getIntent().getIntExtra("friend_type", -1);
        c = getIntent().getStringExtra("friend_nick");
        b = getIntent().getStringExtra("friend_num");
        b = Util.h(b);
        d = (ImageView)findViewById(0x7f07011b);
        TextView textview = (TextView)findViewById(0x7f07011c);
        TextView textview1 = (TextView)findViewById(0x7f07012c);
        TextView textview2 = (TextView)findViewById(0x7f07011d);
        Button button = (Button)findViewById(0x7f07012d);
        Button button1 = (Button)findViewById(0x7f07012e);
        textview.setText(c);
        Object aobj[] = new Object[1];
        aobj[0] = c;
        textview2.setText(getString(0x7f0a030b, aobj));
        if(a == 1)
        {
            d.setBackgroundDrawable(a(0x7f020102));
            textview1.setText((new StringBuilder()).append(getString(0x7f0a003b)).append(b).toString());
            String s = MD5.a(b.getBytes());
            long l;
            android.graphics.Bitmap bitmap1;
            if(!MMCore.f().c())
            {
                bitmap1 = MMCore.f().y().a(MMCore.c().getResources());
            } else
            {
                AddrUpload addrupload = MMCore.f().t().d(s);
                if(addrupload != null)
                    bitmap1 = o.b(addrupload.c(), this);
                else
                    bitmap1 = null;
            }
            if(bitmap1 != null)
                d.setImageBitmap(bitmap1);
            else
                d.setImageDrawable(a(0x7f020102));
        }
        if(a == 0)
        {
            d.setBackgroundDrawable(a(0x7f020103));
            textview1.setText((new StringBuilder()).append(getString(0x7f0a0038)).append(b).toString());
            l = UIN.a(b);
            android.graphics.Bitmap bitmap;
            if(l != 0L)
                bitmap = AvatarLogic.a(l);
            else
                bitmap = null;
            if(bitmap == null)
                d.setImageDrawable(a(0x7f020103));
            else
                d.setImageBitmap(bitmap);
            button1.setVisibility(0);
        }
        button.setOnClickListener(new _cls1());
        button1.setOnClickListener(new _cls2());
        b(new _cls3());
    }

    protected void onDestroy()
    {
        MMCore.g().b(14, this);
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.f().y().b(this);
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.f().y().a(this);
    }

    private int a;
    private String b;
    private String c;
    private ImageView d;
    private ProgressDialog e;

    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            a.finish();
        }

        private InviteFriendUI a;

        _cls4()
        {
            a = InviteFriendUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            InviteFriendUI.a(a);
            JVM INSTR tableswitch 0 1: default 28
        //                       0 151
        //                       1 29;
               goto _L1 _L2 _L3
_L1:
            return;
_L3:
            Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse((new StringBuilder()).append("smsto:").append(InviteFriendUI.b(a)).toString()));
            InviteFriendUI invitefriendui = a;
            Object aobj[] = new Object[1];
            aobj[0] = MMCore.f().f().a(2);
            intent.putExtra("sms_body", invitefriendui.getString(0x7f0a00c6, aobj));
            if(Util.a(a, intent))
                a.startActivity(intent);
            else
                Toast.makeText(a, 0x7f0a00c4, 1).show();
            continue; /* Loop/switch isn't completed */
_L2:
            int ai[] = new int[1];
            ai[0] = UIN.a(InviteFriendUI.b(a));
            NetSceneSendInviteEmail netscenesendinviteemail = new NetSceneSendInviteEmail(ai);
            MMCore.g().b(netscenesendinviteemail);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneSendInviteEmail a;
                private _cls1 b;

                _cls1(NetSceneSendInviteEmail netscenesendinviteemail)
                {
                    b = _cls1.this;
                    a = netscenesendinviteemail;
                    super();
                }
            }

            InviteFriendUI.a(a, MMAlert.a(a, a.getString(0x7f0a030f), a.getString(0x7f0a0312), true, new _cls1(netscenesendinviteemail)));
            if(true) goto _L1; else goto _L4
_L4:
        }

        private InviteFriendUI a;

        _cls1()
        {
            a = InviteFriendUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            QMsgExtension.a((new StringBuilder()).append(InviteFriendUI.b(a)).append("@qqim").toString(), InviteFriendUI.c(a));
            InviteFriendUI.a(a, com/tencent/mm/ui/chatting/ChattingUI, (new Intent()).putExtra("Chat_User", (new StringBuilder()).append(InviteFriendUI.b(a)).append("@qqim").toString()));
            a.finish();
        }

        private InviteFriendUI a;

        _cls2()
        {
            a = InviteFriendUI.this;
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

        private InviteFriendUI a;

        _cls3()
        {
            a = InviteFriendUI.this;
            super();
        }
    }

}
