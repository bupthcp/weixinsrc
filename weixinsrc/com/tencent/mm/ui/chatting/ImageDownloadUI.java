// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelimage.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMProgressBar;
import com.tencent.mm.ui.tools.CropImageUI;

public class ImageDownloadUI extends MMActivity
    implements IOnSceneEnd, IOnSceneProgressEnd
{

    public ImageDownloadUI()
    {
    }

    static NetSceneGetMsgImg a(ImageDownloadUI imagedownloadui)
    {
        return imagedownloadui.g;
    }

    static void a(ImageDownloadUI imagedownloadui, String s)
    {
        if(s == null || s.equals("") || !FileOperation.c(s))
        {
            Log.d("ImageDownloadUI", "showImg : imgPath is null");
        } else
        {
            imagedownloadui.a(com/tencent/mm/ui/tools/CropImageUI, (new Intent()).putExtra("CropImage_ImgPath", s).putExtra("CropImage_bCrop", false));
            imagedownloadui.finish();
        }
    }

    static TextView b(ImageDownloadUI imagedownloadui)
    {
        return imagedownloadui.b;
    }

    protected final int a()
    {
        return 0x7f0300f9;
    }

    public final void a(int i, int j, NetSceneBase netscenebase)
    {
        Log.d("ImageDownloadUI", (new StringBuilder()).append("offset ").append(i).append("totaolLen  ").append(j).toString());
        if(netscenebase.b() == 8)
        {
            int k;
            if(j != 0)
                k = -1 + (i * 100) / j;
            else
                k = 0;
            a.a(k);
        }
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        netscenebase.b();
        JVM INSTR tableswitch 8 8: default 32
    //                   8 33;
           goto _L2 _L3
_L2:
        return;
_L3:
        a.a(a.a());
        if(true) goto _L2; else goto _L4
_L4:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        long l = getIntent().getLongExtra("img_msg_id", 0L);
        int i = getIntent().getIntExtra("img_server_id", 0);
        f = MMCore.f().k().b(i);
        b = (TextView)findViewById(0x7f0702a1);
        c = (TextView)findViewById(0x7f0702a2);
        d = (TextView)findViewById(0x7f0702a3);
        e = (TextView)findViewById(0x7f0702a4);
        h = (ImageView)findViewById(0x7f07029f);
        h.setImageResource(0x7f02014a);
        b.setVisibility(0);
        c.setVisibility(8);
        d.setVisibility(8);
        e.setVisibility(8);
        b(new _cls1());
        a = (MMProgressBar)findViewById(0x7f0702a0);
        a.a(new _cls2());
        g = new NetSceneGetMsgImg(f.f(), l, this);
        MMCore.g().b(g);
    }

    protected void onPause()
    {
        super.onPause();
        MMCore.g().b(8, this);
        a.a(false);
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.g().a(8, this);
        a.a(true);
    }

    private MMProgressBar a;
    private TextView b;
    private TextView c;
    private TextView d;
    private TextView e;
    private ImgInfo f;
    private NetSceneGetMsgImg g;
    private ImageView h;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MMCore.g().a(ImageDownloadUI.a(a));
            a.finish();
        }

        private ImageDownloadUI a;

        _cls1()
        {
            a = ImageDownloadUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMProgressBar.IOnProgressChanged
    {

        public final void a(MMProgressBar mmprogressbar, int i)
        {
            TextView textview = ImageDownloadUI.b(a);
            ImageDownloadUI imagedownloadui = a;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            textview.setText(imagedownloadui.getString(0x7f0a00a6, aobj));
            if(i >= mmprogressbar.a())
                ImageDownloadUI.a(a, (new StringBuilder()).append(MMCore.f().M()).append(MMCore.f().k().a(ImageDownloadUI.a(a).g()).j()).toString());
        }

        private ImageDownloadUI a;

        _cls2()
        {
            a = ImageDownloadUI.this;
            super();
        }
    }

}
