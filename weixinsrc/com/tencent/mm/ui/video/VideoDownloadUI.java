// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.video;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelvideo.*;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMProgressBar;

public class VideoDownloadUI extends MMActivity
    implements com.tencent.mm.modelvideo.VideoInfoStorage.IOnVideoInfoChanged
{

    public VideoDownloadUI()
    {
    }

    static TextView a(VideoDownloadUI videodownloadui)
    {
        return videodownloadui.e;
    }

    static void a(VideoDownloadUI videodownloadui, Class class1, Intent intent)
    {
        videodownloadui.a(class1, intent);
    }

    static String b(VideoDownloadUI videodownloadui)
    {
        return videodownloadui.b;
    }

    protected final int a()
    {
        return 0x7f0300f9;
    }

    public final void a(String s)
    {
        if(s != null && !s.equals("") && s.equals(b))
        {
            VideoInfo videoinfo = MMCore.f().p().a(s);
            a.a(VideoLogic.b(videoinfo));
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        b = getIntent().getStringExtra("file_name");
        c = (TextView)findViewById(0x7f0702a3);
        d = (TextView)findViewById(0x7f0702a4);
        e = (TextView)findViewById(0x7f0702a2);
        VideoInfo videoinfo = MMCore.f().p().a(b);
        TextView textview = e;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(VideoLogic.b(videoinfo));
        textview.setText(getString(0x7f0a00a6, aobj));
        d.setText(Util.b(videoinfo.m()));
        c.setText(Util.b(videoinfo.g()));
        b(new _cls1());
        a = (MMProgressBar)findViewById(0x7f0702a0);
        a.a(new _cls2());
    }

    protected void onPause()
    {
        MMCore.f().p().b(this);
        a.a(false);
        super.onPause();
    }

    protected void onResume()
    {
        MMCore.f().p().a(this);
        a.a(true);
        super.onResume();
    }

    private MMProgressBar a;
    private String b;
    private TextView c;
    private TextView d;
    private TextView e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private VideoDownloadUI a;

        _cls1()
        {
            a = VideoDownloadUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMProgressBar.IOnProgressChanged
    {

        public final void a(MMProgressBar mmprogressbar, int i)
        {
            TextView textview = VideoDownloadUI.a(a);
            VideoDownloadUI videodownloadui = a;
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            textview.setText(videodownloadui.getString(0x7f0a00a6, aobj));
            if(i >= mmprogressbar.a()) goto _L2; else goto _L1
_L1:
            return;
_L2:
            VideoInfo videoinfo;
            videoinfo = MMCore.f().p().a(VideoDownloadUI.b(a));
            if(videoinfo.j() != 199)
                continue; /* Loop/switch isn't completed */
            if(videoinfo.r() != 0) goto _L4; else goto _L3
_L3:
            Intent intent = new Intent();
            intent.putExtra("VideoRecorder_VideoSize", videoinfo.g());
            intent.putExtra("VideoRecorder_VideoLength", videoinfo.m());
            intent.putExtra("VideoPlayer_File_nam", VideoDownloadUI.b(a));
            VideoDownloadUI.a(a, com/tencent/mm/ui/video/VideoPlayerUI, intent);
_L6:
            a.finish();
            continue; /* Loop/switch isn't completed */
_L4:
            if(VideoPlayerUI.a(VideoDownloadUI.b(a), a)) goto _L6; else goto _L5
_L5:
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    a.a.finish();
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            MMAlert.a(a, 0x7f0a032e, 0x7f0a0010, new _cls1());
            if(true) goto _L1; else goto _L7
_L7:
        }

        final VideoDownloadUI a;

        _cls2()
        {
            a = VideoDownloadUI.this;
            super();
        }
    }

}
