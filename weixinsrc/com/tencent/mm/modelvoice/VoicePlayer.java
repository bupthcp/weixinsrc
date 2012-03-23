// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import com.tencent.mm.platformtools.Log;

public class VoicePlayer
{

    public VoicePlayer()
    {
        b = "";
        c = null;
        d = null;
        e = 0;
        a = new MediaPlayer();
        d();
        e();
    }

    static int a(VoicePlayer voiceplayer, int i)
    {
        voiceplayer.e = i;
        return i;
    }

    static OnCompletionListener a(VoicePlayer voiceplayer)
    {
        return voiceplayer.c;
    }

    private void a(boolean flag, int i)
    {
        MediaPlayer mediaplayer = a;
        byte byte0;
        if(flag)
            byte0 = 3;
        else
            byte0 = 0;
        mediaplayer.setAudioStreamType(byte0);
        a.setDataSource(b);
        a.prepare();
        if(i > 0)
            a.seekTo(i);
        a.start();
    }

    public static boolean a(Context context, boolean flag)
    {
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        if(audiomanager != null)
        {
            int i = audiomanager.getMode();
            Log.d("VoicePlayer", (new StringBuilder()).append("START Mode:").append(i).toString());
            boolean flag1;
            if(i == 0)
                flag1 = true;
            else
                flag1 = false;
            if(flag1 != flag)
                if(flag)
                    audiomanager.setMode(0);
                else
                    audiomanager.setMode(2);
        }
        return flag;
    }

    private boolean a(String s, boolean flag, int i)
    {
        boolean flag1 = false;
        if(e == 0) goto _L2; else goto _L1
_L1:
        Log.a("VoicePlayer", (new StringBuilder()).append("startPlay error status:").append(e).toString());
_L6:
        return flag1;
_L2:
        b = s;
        a(flag, i);
_L4:
        e = 1;
        flag1 = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        a(true, i);
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        Log.a("VoicePlayer", (new StringBuilder()).append("startPlay File[").append(b).append("] failed").toString());
        e = -1;
        if(true) goto _L6; else goto _L5
_L5:
    }

    static MediaPlayer b(VoicePlayer voiceplayer)
    {
        return voiceplayer.a;
    }

    static String c(VoicePlayer voiceplayer)
    {
        return voiceplayer.b;
    }

    static OnErrorListener d(VoicePlayer voiceplayer)
    {
        return voiceplayer.d;
    }

    private void d()
    {
        a.setOnCompletionListener(new _cls1());
    }

    private void e()
    {
        a.setOnErrorListener(new _cls2());
    }

    public final int a()
    {
        return e;
    }

    public final void a(OnCompletionListener oncompletionlistener)
    {
        c = oncompletionlistener;
    }

    public final void a(OnErrorListener onerrorlistener)
    {
        d = onerrorlistener;
    }

    public final void a(boolean flag)
    {
        Log.d("VoicePlayer", (new StringBuilder()).append("setSpeakerOn=").append(flag).toString());
        if(a != null)
        {
            int i = a.getCurrentPosition();
            c();
            a = new MediaPlayer();
            d();
            e();
            a(b, flag, i);
        }
    }

    public final boolean a(String s, boolean flag)
    {
        return a(s, flag, 0);
    }

    public final boolean b()
    {
        boolean flag = true;
        if(e != flag)
            flag = false;
        return flag;
    }

    public final boolean c()
    {
        boolean flag = false;
        if(e == 1 || e == 2) goto _L2; else goto _L1
_L1:
        Log.a("VoicePlayer", (new StringBuilder()).append("stop not STATUS_PLAYING or STATUS_PAUSE error status:").append(e).toString());
_L4:
        return flag;
_L2:
        a.stop();
        a.release();
        e = ((flag) ? 1 : 0);
        flag = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("VoicePlayer", (new StringBuilder()).append("stop File[").append(b).append("] ErrMsg[").append(exception.getStackTrace()).append("]").toString());
        e = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private MediaPlayer a;
    private String b;
    private OnCompletionListener c;
    private OnErrorListener d;
    private int e;

    private class _cls1
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public void onCompletion(MediaPlayer mediaplayer)
        {
            if(VoicePlayer.a(a) != null)
                VoicePlayer.a(a).a();
            VoicePlayer.b(a).release();
            VoicePlayer.a(a, 0);
_L1:
            return;
            Exception exception;
            exception;
            Log.a("VoicePlayer", (new StringBuilder()).append("setCompletion File[").append(VoicePlayer.c(a)).append("] ErrMsg[").append(exception.getStackTrace()).append("]").toString());
              goto _L1
        }

        private VoicePlayer a;

        _cls1()
        {
            a = VoicePlayer.this;
            super();
        }

        private class OnCompletionListener
        {

            public abstract void a();
        }

    }


    private class _cls2
        implements android.media.MediaPlayer.OnErrorListener
    {

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            if(VoicePlayer.d(a) != null)
                VoicePlayer.d(a).a();
            try
            {
                VoicePlayer.b(a).release();
                VoicePlayer.a(a, -1);
            }
            catch(Exception exception)
            {
                Log.a("VoicePlayer", (new StringBuilder()).append("setErrorListener File[").append(VoicePlayer.c(a)).append("] ErrMsg[").append(exception.getStackTrace()).append("]").toString());
            }
            return false;
        }

        private VoicePlayer a;

        _cls2()
        {
            a = VoicePlayer.this;
            super();
        }

        private class OnErrorListener
        {

            public abstract void a();
        }

    }

}
