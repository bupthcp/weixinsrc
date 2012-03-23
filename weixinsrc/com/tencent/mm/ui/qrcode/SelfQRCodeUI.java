// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.qrcode;

import android.app.ProgressDialog;
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

public class SelfQRCodeUI extends MMActivity
    implements IOnSceneEnd
{

    public SelfQRCodeUI()
    {
        a = null;
        b = null;
    }

    protected final int a()
    {
        return 0x7f0300d2;
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.SelfQRCodeUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
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
        a = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0337), true, new _cls4(netscenegetqrcode));
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0335);
        b = (ImageView)findViewById(0x7f070235);
        android.graphics.Bitmap bitmap = MMCore.f().A().a();
        if(bitmap == null)
            b();
        else
            b.setImageBitmap(bitmap);
        c(0x7f0201e8, new _cls1());
        b(new _cls2());
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

    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
            MMCore.g().a(a);
        }

        private NetSceneGetQRCode a;
        private SelfQRCodeUI b;

        _cls4(NetSceneGetQRCode netscenegetqrcode)
        {
            b = SelfQRCodeUI.this;
            a = netscenegetqrcode;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SelfQRCodeUI selfqrcodeui = a;
            String as[] = new String[2];
            as[0] = selfqrcodeui.getString(0x7f0a033f);
            as[1] = selfqrcodeui.getString(0x7f0a0340);
            MMAlert.a(selfqrcodeui, "", as, "", selfqrcodeui. new _cls5());
        }

        private SelfQRCodeUI a;

        _cls1()
        {
            a = SelfQRCodeUI.this;
            super();
        }

        private class _cls5
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
                SelfQRCodeUI selfqrcodeui = a;
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
                        Toast.makeText(selfqrcodeui, selfqrcodeui.getString(0x7f0a0317, aobj), 1).show();
                        selfqrcodeui.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder()).append("file://").append(Environment.getExternalStorageDirectory()).toString())));
                    }
                    catch(Exception exception) { }
                }
                if(true) goto _L1; else goto _L4
_L4:
            }

            private SelfQRCodeUI a;

            _cls5()
            {
                a = SelfQRCodeUI.this;
                super();
            }
        }

    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private SelfQRCodeUI a;

        _cls2()
        {
            a = SelfQRCodeUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            SelfQRCodeUI selfqrcodeui = a;
            com.tencent.mm.storage.RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
            boolean flag;
            ArrayList arraylist;
            String as[];
            if(Util.a((Integer)MMCore.f().f().a(9)) != 0)
                flag = true;
            else
                flag = false;
            arraylist = new ArrayList();
            if(roleinfo != null && flag)
                arraylist.add(selfqrcodeui.getString(0x7f0a033b));
            if(flag)
                arraylist.add(selfqrcodeui.getString(0x7f0a033c));
            arraylist.add(selfqrcodeui.getString(0x7f0a033d));
            if(ConfigStorageLogic.l())
                arraylist.add(selfqrcodeui.getString(0x7f0a033e));
            as = (String[])arraylist.toArray(new String[arraylist.size()]);
            MMAlert.a(selfqrcodeui, "", as, "", selfqrcodeui. new _cls6(as));
        }

        private SelfQRCodeUI a;

        _cls3()
        {
            a = SelfQRCodeUI.this;
            super();
        }

        private class _cls6
            implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
        {

            public final void a(int i)
            {
                if(i >= 0 && i < a.length) goto _L2; else goto _L1
_L1:
                return;
_L2:
                byte byte0;
                byte0 = -1;
                if(!a[i].equals(b.getString(0x7f0a033b)))
                    break; /* Loop/switch isn't completed */
                byte0 = 1;
_L4:
                if(byte0 > 0)
                {
                    Intent intent = new Intent(b, com/tencent/mm/ui/qrcode/ShowQRCodeStep1UI);
                    intent.putExtra("show_to", byte0);
                    b.startActivity(intent);
                }
                if(true) goto _L1; else goto _L3
_L3:
                if(a[i].equals(b.getString(0x7f0a033c)))
                    byte0 = 2;
                else
                if(a[i].equals(b.getString(0x7f0a033d)))
                    byte0 = 3;
                else
                if(a[i].equals(b.getString(0x7f0a033e)))
                    byte0 = 4;
                  goto _L4
                if(true) goto _L1; else goto _L5
_L5:
            }

            private String a[];
            private SelfQRCodeUI b;

            _cls6(String as[])
            {
                b = SelfQRCodeUI.this;
                a = as;
                super();
            }
        }

    }

}
