// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelqrcode.QRCodeStorage;
import com.tencent.mm.modelsimple.NetSceneGetQRCode;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;

public class ShowQRCodeStep1UI extends MMActivity
    implements IOnSceneEnd
{

    public ShowQRCodeStep1UI()
    {
        a = null;
        b = null;
        c = 1;
    }

    static int a(ShowQRCodeStep1UI showqrcodestep1ui)
    {
        return showqrcodestep1ui.c;
    }

    static void a(ShowQRCodeStep1UI showqrcodestep1ui, Class class1)
    {
        showqrcodestep1ui.a(class1);
    }

    protected final int a()
    {
        return 0x7f0300e9;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.ShowQRCodeStep1UI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        if(a != null)
        {
            a.dismiss();
            a = null;
        }
        if(!com.tencent.mm.ui.MMErrorProcessor.CertainError.a(c(), i, j, 3))
            if(i != 0 || j != 0)
            {
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i);
                aobj[1] = Integer.valueOf(j);
                Toast.makeText(this, getString(0x7f0a0338, aobj), 0).show();
            } else
            {
                b.setImageBitmap(MMCore.f().A().a());
            }
    }

    final void b()
    {
        NetSceneGetQRCode netscenegetqrcode = new NetSceneGetQRCode();
        MMCore.g().b(netscenegetqrcode);
        a = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0337), true, new _cls5(netscenegetqrcode));
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a033a);
        b = (ImageView)findViewById(0x7f070235);
        c = getIntent().getIntExtra("show_to", 1);
        TextView textview = (TextView)findViewById(0x7f07027c);
        android.graphics.Bitmap bitmap;
        if(c == 3)
        {
            Object aobj3[] = new Object[1];
            aobj3[0] = getString(0x7f0a0344);
            textview.setText(getString(0x7f0a0342, aobj3));
        } else
        if(c == 4)
        {
            Object aobj2[] = new Object[1];
            aobj2[0] = getString(0x7f0a0343);
            textview.setText(getString(0x7f0a0342, aobj2));
        } else
        if(c == 2)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = getString(0x7f0a0346);
            textview.setText(getString(0x7f0a0342, aobj1));
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = getString(0x7f0a0345);
            textview.setText(getString(0x7f0a0342, aobj));
        }
        bitmap = MMCore.f().A().a();
        if(bitmap == null)
            b();
        else
            b.setImageBitmap(bitmap);
        b(new _cls1());
        c(0x7f0201e8, new _cls2());
        ((Button)findViewById(0x7f070236)).setOnClickListener(new _cls3());
        MMCore.g().a(61, this);
    }

    public void onDestroy()
    {
        MMCore.g().b(61, this);
        super.onDestroy();
    }

    private ProgressDialog a;
    private ImageView b;
    private int c;

    private class _cls5
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneGetQRCode a;
        private ShowQRCodeStep1UI b;

        _cls5(NetSceneGetQRCode netscenegetqrcode)
        {
            b = ShowQRCodeStep1UI.this;
            a = netscenegetqrcode;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private ShowQRCodeStep1UI a;

        _cls1()
        {
            a = ShowQRCodeStep1UI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ShowQRCodeStep1UI showqrcodestep1ui = a;
            String as[] = new String[2];
            as[0] = showqrcodestep1ui.getString(0x7f0a033f);
            as[1] = showqrcodestep1ui.getString(0x7f0a0340);
            MMAlert.a(showqrcodestep1ui, "", as, "", showqrcodestep1ui. new _cls4());
        }

        private ShowQRCodeStep1UI a;

        _cls2()
        {
            a = ShowQRCodeStep1UI.this;
            super();
        }

        private class _cls4
            implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
        {

            public final void a(int i)
            {
                i;
                JVM INSTR tableswitch 0 1: default 24
            //                           0 25
            //                           1 35;
                   goto _L1 _L2 _L3
_L1:
                return;
_L2:
                a.b();
                continue; /* Loop/switch isn't completed */
_L3:
                ShowQRCodeStep1UI showqrcodestep1ui = a;
                byte abyte0[] = MMCore.f().A().a(ConfigStorageLogic.b(), Util.a((Integer)MMCore.f().f().a(0x10401)));
                if(abyte0 != null && abyte0.length > 0)
                {
                    String s = (new StringBuilder()).append(ConstantsStorage.c).append("mmqrcode").append(System.currentTimeMillis()).append(".png").toString();
                    try
                    {
                        FileOutputStream fileoutputstream = new FileOutputStream(s);
                        fileoutputstream.write(abyte0);
                        fileoutputstream.close();
                        Object aobj[] = new Object[1];
                        aobj[0] = s;
                        Toast.makeText(showqrcodestep1ui, showqrcodestep1ui.getString(0x7f0a0317, aobj), 1).show();
                        showqrcodestep1ui.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder()).append("file://").append(Environment.getExternalStorageDirectory()).toString())));
                    }
                    catch(Exception exception) { }
                }
                if(true) goto _L1; else goto _L4
_L4:
            }

            private ShowQRCodeStep1UI a;

            _cls4()
            {
                a = ShowQRCodeStep1UI.this;
                super();
            }
        }

    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ShowQRCodeStep1UI.a(a) == 3)
            {
                String s = Util.h((String)MMCore.f().f().a(1));
                String s1 = ConfigStorageLogic.b();
                int i = Util.a((Integer)MMCore.f().f().a(0x10401));
                String s2 = (new StringBuilder()).append("http://weixin.qq.com/cgi-bin/rweibourl?sid=").append(MD5.a(s.getBytes())).append("&u=").append(s1).append("&qr=").append(i).append("&device=").append(ConstantsProtocal.a).append("&version=").append(ConstantsProtocal.b).toString();
                Log.d("MicroMsg.ShowQRCodeStep1UI", (new StringBuilder()).append("[").append(s2).append("]").toString());
                Util.b(a.c(), s2);
                a.finish();
            } else
            if(ShowQRCodeStep1UI.a(a) == 4)
            {
                if(ConfigStorageLogic.m())
                {
                    Intent intent2 = new Intent(a, com/tencent/mm/ui/qrcode/ShareToQQUI);
                    intent2.putExtra("show_to", 4);
                    a.startActivity(intent2);
                } else
                {
                    ShowQRCodeStep1UI.a(a, com/tencent/mm/ui/facebook/FacebookAuthUI);
                }
                a.finish();
            } else
            if(ShowQRCodeStep1UI.a(a) == 2)
            {
                Intent intent = new Intent(a, com/tencent/mm/ui/qrcode/ShareToQQUI);
                intent.putExtra("show_to", 2);
                a.startActivity(intent);
                a.finish();
            } else
            {
                Intent intent1 = new Intent(a, com/tencent/mm/ui/qrcode/ShareToQQUI);
                intent1.putExtra("show_to", 1);
                a.startActivity(intent1);
                a.finish();
            }
        }

        private ShowQRCodeStep1UI a;

        _cls3()
        {
            a = ShowQRCodeStep1UI.this;
            super();
        }
    }

}
