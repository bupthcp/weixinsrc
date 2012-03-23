// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import com.tencent.mm.platformtools.Log;

// Referenced classes of package com.tencent.mm.modelvoice:
//            MediaRecorder

public class VoiceRecorder
{

    public VoiceRecorder(MediaRecorder.RECMODE recmode)
    {
        c = "";
        d = null;
        e = 0;
        b = new MediaRecorder(recmode);
    }

    static OnErrorListener a(VoiceRecorder voicerecorder)
    {
        return voicerecorder.d;
    }

    static MediaRecorder b(VoiceRecorder voicerecorder)
    {
        return voicerecorder.b;
    }

    static int c(VoiceRecorder voicerecorder)
    {
        voicerecorder.e = -1;
        return -1;
    }

    public final int a()
    {
        return e;
    }

    public final void a(OnErrorListener onerrorlistener)
    {
        d = onerrorlistener;
    }

    public final boolean a(String s)
    {
        boolean flag;
        com.tencent.mm.algorithm.CodeInfo.TestTime testtime;
        flag = false;
        testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        if(c.length() <= 0) goto _L2; else goto _L1
_L1:
        Log.a("VoiceRecorder", "Duplicate Call startRecord , maybe Stop Fail Before");
_L4:
        return flag;
_L2:
        c = s;
        b.a(new _cls1());
        b.c();
        b.d();
        b.b();
        b.a(c);
        b.a();
        b.g();
        b.f();
        Log.d("VoiceRecorder", (new StringBuilder()).append("StartRecord File[").append(c).append("] start time:").append(testtime.b()).toString());
        e = 1;
        flag = true;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("VoiceRecorder", (new StringBuilder()).append("StartRecord File[").append(c).append("] ErrMsg[").append(exception.getMessage()).append("]").toString());
        e = -1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean b()
    {
        boolean flag = true;
        if(b != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        b.i();
        b.h();
        c = "";
        e = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("VoiceRecorder", (new StringBuilder()).append("StopRecord File[").append(c).append("] ErrMsg[").append(exception.getMessage()).append("]").toString());
        e = -1;
        flag = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final String c()
    {
        return c;
    }

    public final int d()
    {
        int i;
        if(e == 1)
        {
            int j = b.e();
            if(j > f)
                f = j;
            i = (j * 100) / f;
        } else
        {
            i = 0;
        }
        return i;
    }

    protected void finalize()
    {
        b = null;
        super.finalize();
    }

    public static final int a;
    private static int f = 100;
    private MediaRecorder b;
    private String c;
    private OnErrorListener d;
    private int e;

    static 
    {
        a = 3500 * MediaRecorder.a[7];
    }

    private class _cls1
        implements MediaRecorder.OnErrorListener
    {

        public final void a()
        {
            if(VoiceRecorder.a(a) != null)
                VoiceRecorder.a(a).a();
            VoiceRecorder.b(a).h();
            VoiceRecorder.c(a);
_L1:
            return;
            Exception exception;
            exception;
            Log.a("VoiceRecorder", (new StringBuilder()).append("setErrorListener File[").append(a.c()).append("] ErrMsg[").append(exception.getStackTrace()).append("]").toString());
              goto _L1
        }

        private VoiceRecorder a;

        _cls1()
        {
            a = VoiceRecorder.this;
            super();
        }

        private class OnErrorListener
        {

            public abstract void a();
        }

    }

}
