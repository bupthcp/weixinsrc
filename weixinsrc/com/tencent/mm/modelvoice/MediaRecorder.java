// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import android.media.AudioRecord;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.pointers.PByteArray;

public class MediaRecorder
{

    public MediaRecorder(RECMODE recmode)
    {
        c = 0;
        d = null;
        e = null;
        f = 0L;
        g = 0L;
        n = 0;
        o = 0;
        p = 0;
        q = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        r = new _cls2();
        l = recmode;
        if(recmode != RECMODE.b) goto _L2; else goto _L1
_L1:
        k = 7;
        j = new android.media.MediaRecorder();
_L4:
        return;
_L2:
        int j1;
        c = 0;
        d = null;
        e = null;
        o = 960;
        int i1 = (1 * (16 * (2 * o))) / 8;
        j1 = AudioRecord.getMinBufferSize(8000, 2, 2);
        if(i1 >= j1)
            j1 = i1;
        Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("init bufferSize(2):").append(i1).append(" framePeriod:").append(o).append(" forSystemBufSize:").append(j1).toString());
        n = i1 / 2;
        Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("!!out mutex :").append(h.hashCode()).toString());
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("!!in mutex :").append(h.hashCode()).append(" :").append(i).toString());
        if(i != null)
        {
            i.release();
            i = null;
        }
        AudioRecord audiorecord = new AudioRecord(1, 8000, 2, 2, j1);
        i = audiorecord;
        if(audiorecord.getState() != 1)
            throw new Exception("AudioRecord initialization failed");
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        try
        {
            throw exception1;
        }
        catch(Exception exception)
        {
            if(exception.getMessage() != null)
                Log.a("MicroMsg.MediaRecorder", exception.getMessage());
            else
                Log.a("MicroMsg.MediaRecorder", "Unknown error occured while initializing recording");
        }
        m = State.d;
        k = 1;
        if(true) goto _L4; else goto _L3
_L3:
        Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("@@@@@@@@@@@@!!in mutex :").append(h.hashCode()).append(" :").append(i).toString());
        i.setRecordPositionUpdateListener(r);
        i.setPositionNotificationPeriod(o);
        obj;
        JVM INSTR monitorexit ;
        m = State.a;
        break MISSING_BLOCK_LABEL_374;
    }

    static int a(MediaRecorder mediarecorder, int i1)
    {
        int j1 = i1 + mediarecorder.p;
        mediarecorder.p = j1;
        return j1;
    }

    static AMRWriter a(MediaRecorder mediarecorder, AMRWriter amrwriter)
    {
        mediarecorder.e = amrwriter;
        return amrwriter;
    }

    static OnErrorListener a(MediaRecorder mediarecorder)
    {
        return mediarecorder.b;
    }

    static boolean a(int i1, byte abyte0[], PByteArray pbytearray, int j1)
    {
        return native_pcm2amr(i1, abyte0, pbytearray, j1);
    }

    static int b(MediaRecorder mediarecorder, int i1)
    {
        mediarecorder.c = i1;
        return i1;
    }

    static android.media.MediaRecorder b(MediaRecorder mediarecorder)
    {
        return mediarecorder.j;
    }

    static State c(MediaRecorder mediarecorder)
    {
        return mediarecorder.m;
    }

    static long d(MediaRecorder mediarecorder)
    {
        return mediarecorder.g;
    }

    static long e(MediaRecorder mediarecorder)
    {
        return mediarecorder.f;
    }

    static int f(MediaRecorder mediarecorder)
    {
        return mediarecorder.n;
    }

    static com.tencent.mm.algorithm.CodeInfo.TestTime g(MediaRecorder mediarecorder)
    {
        return mediarecorder.q;
    }

    static int h(MediaRecorder mediarecorder)
    {
        return mediarecorder.p;
    }

    static AMRWriter i(MediaRecorder mediarecorder)
    {
        return mediarecorder.e;
    }

    static int j(MediaRecorder mediarecorder)
    {
        return mediarecorder.k;
    }

    static Object j()
    {
        return h;
    }

    static AudioRecord k()
    {
        return i;
    }

    static String k(MediaRecorder mediarecorder)
    {
        return mediarecorder.d;
    }

    static int l(MediaRecorder mediarecorder)
    {
        return mediarecorder.c;
    }

    static boolean l()
    {
        return native_init(true);
    }

    static boolean m()
    {
        return native_release();
    }

    private static native boolean native_init(boolean flag);

    private static native boolean native_pcm2amr(int i1, byte abyte0[], PByteArray pbytearray, int j1);

    private static native boolean native_release();

    public final void a()
    {
        if(l == RECMODE.b)
        {
            if(j != null)
                j.setMaxDuration(0x11170);
        } else
        {
            f = 0x11170L;
        }
    }

    public final void a(OnErrorListener onerrorlistener)
    {
        if(l != RECMODE.b) goto _L2; else goto _L1
_L1:
        if(j != null)
        {
            b = onerrorlistener;
            j.setOnErrorListener(new _cls1());
            m = State.d;
        }
_L4:
        return;
_L2:
        try
        {
            if(m == State.a)
                b = onerrorlistener;
        }
        catch(Exception exception)
        {
            if(exception.getMessage() != null)
                Log.a("MicroMsg.MediaRecorder", exception.getMessage());
            else
                Log.a("MicroMsg.MediaRecorder", "Unknown error occured while setting output path");
            m = State.d;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(String s)
    {
        if(l == RECMODE.b)
        {
            if(j != null)
            {
                j.setOutputFile(s);
                d = s;
            }
        } else
        if(m == State.a)
            d = s;
        else
            m = State.d;
    }

    public final void b()
    {
        if(l == RECMODE.b && j != null)
            j.setAudioEncoder(1);
    }

    public final void c()
    {
        if(l == RECMODE.b && j != null)
            j.setAudioSource(1);
    }

    public final void d()
    {
        if(l == RECMODE.b && j != null)
            j.setOutputFormat(3);
    }

    public final int e()
    {
        int i1 = 0;
        if(l != RECMODE.b) goto _L2; else goto _L1
_L1:
        if(j != null)
            i1 = j.getMaxAmplitude();
_L4:
        return i1;
_L2:
        if(m == State.c)
        {
            int j1 = c;
            c = i1;
            i1 = j1;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void f()
    {
        if(l == RECMODE.b)
        {
            if(j != null)
                j.start();
        } else
        {
            Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("Start now  state:").append(m).toString());
            if(m == State.b)
            {
                g = System.currentTimeMillis();
                m = State.c;
                byte abyte0[] = new byte[n];
                int i1;
                synchronized(h)
                {
                    i.startRecording();
                    i1 = i.read(abyte0, 0, n);
                }
                Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("in Start Read:").append(i1).toString());
            } else
            {
                Log.a("MicroMsg.MediaRecorder", "start() called on illegal state");
                m = State.d;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public final void g()
    {
        if(l == RECMODE.b)
        {
            if(j != null)
                j.prepare();
        } else
        if(m != State.a || i.getState() != 1 || d == null)
        {
            m = State.d;
            h();
        } else
        {
            m = State.b;
        }
    }

    public final void h()
    {
        if(l != RECMODE.b) goto _L2; else goto _L1
_L1:
        if(j != null)
            j.release();
_L4:
        return;
_L2:
        if(m == State.c)
            i();
        Object obj = h;
        obj;
        JVM INSTR monitorenter ;
        if(i != null)
        {
            i.release();
            i = null;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean i()
    {
        boolean flag = true;
        if(l == RECMODE.b)
        {
            if(j != null)
            {
                j.stop();
                j.release();
                j = null;
            }
        } else
        {
            com.tencent.mm.algorithm.CodeInfo.TestTime testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
            Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("Stop now  state:").append(m).toString());
            if(m != State.c)
            {
                Log.a("MicroMsg.MediaRecorder", "stop() called on illegal state");
                m = State.d;
            } else
            {
                synchronized(h)
                {
                    i.stop();
                    i.setRecordPositionUpdateListener(null);
                }
                long l1 = testtime.b();
                Log.d("MicroMsg.MediaRecorder", "stop clean data");
                int i1;
                do
                {
                    byte abyte0[] = new byte[n];
                    synchronized(h)
                    {
                        i1 = i.read(abyte0, 0, n);
                    }
                    Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("stop clean data read:").append(i1).toString());
                    e.a(abyte0, i1);
                } while(i1 > 0);
                m = State.e;
                long l2 = testtime.b();
                e.a();
                Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("Wait Stop Time Media:").append(l1).append(" Read:").append(l2).append(" Thr:").append(testtime.b()).toString());
                flag = false;
            }
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public static final int a[];
    private static Object h = new Object();
    private static AudioRecord i = null;
    private OnErrorListener b;
    private int c;
    private String d;
    private AMRWriter e;
    private long f;
    private long g;
    private android.media.MediaRecorder j;
    private int k;
    private RECMODE l;
    private State m;
    private int n;
    private int o;
    private int p;
    private com.tencent.mm.algorithm.CodeInfo.TestTime q;
    private android.media.AudioRecord.OnRecordPositionUpdateListener r;

    static 
    {
        int ai[] = new int[8];
        ai[0] = 13;
        ai[1] = 14;
        ai[2] = 16;
        ai[3] = 18;
        ai[4] = 20;
        ai[5] = 21;
        ai[6] = 27;
        ai[7] = 32;
        a = ai;
    }

    private class _cls2
        implements android.media.AudioRecord.OnRecordPositionUpdateListener
    {

        private void a(byte abyte0[], int i1)
        {
            for(int j1 = 0; j1 < i1 / 2; j1++)
            {
                byte byte0 = abyte0[j1 * 2];
                byte byte1 = abyte0[1 + j1 * 2];
                short word0 = (short)(byte0 & 0xff | byte1 << 8);
                if(word0 > MediaRecorder.l(a))
                    MediaRecorder.b(a, word0);
            }

        }

        public void onMarkerReached(AudioRecord audiorecord)
        {
        }

        public void onPeriodicNotification(AudioRecord audiorecord)
        {
            if(MediaRecorder.c(a) != State.e) goto _L2; else goto _L1
_L1:
            Log.b("MicroMsg.MediaRecorder", "recorder has been stopped");
_L4:
            return;
_L2:
            byte abyte0[];
            long l1 = Util.e(MediaRecorder.d(a));
            if(MediaRecorder.e(a) > 0L && l1 > MediaRecorder.e(a))
            {
                Log.b("MicroMsg.MediaRecorder", (new StringBuilder()).append("Stop now ! expire duration ms:").append(l1).toString());
                a.i();
                MediaRecorder.a(a).a();
                continue; /* Loop/switch isn't completed */
            }
            abyte0 = new byte[MediaRecorder.f(a)];
            Object obj = MediaRecorder.j();
            obj;
            JVM INSTR monitorenter ;
            if(MediaRecorder.k() == null)
                continue; /* Loop/switch isn't completed */
            break MISSING_BLOCK_LABEL_144;
            Exception exception;
            exception;
            throw exception;
            int i1 = MediaRecorder.k().read(abyte0, 0, MediaRecorder.f(a));
            obj;
            JVM INSTR monitorexit ;
            Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("read :").append(i1).append(" time: ").append(MediaRecorder.g(a).b()).append(" inPer:").append(MediaRecorder.h(a)).toString());
            if(i1 < 0)
            {
                if(MediaRecorder.c(a) == State.e)
                {
                    Log.b("MicroMsg.MediaRecorder", "recorder has been stopped");
                } else
                {
                    a.i();
                    MediaRecorder.a(a).a();
                }
            } else
            {
                MediaRecorder.a(a, i1);
                a(abyte0, i1);
                if(MediaRecorder.i(a) == null)
                {
                    MediaRecorder.a(a, new AMRWriter());
                    AMRWriter.a(MediaRecorder.i(a), MediaRecorder.j(a), MediaRecorder.k(a));
                }
                MediaRecorder.i(a).a(abyte0, i1);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MediaRecorder a;

        _cls2()
        {
            a = MediaRecorder.this;
            super();
        }

        private class OnErrorListener
        {

            public abstract void a();
        }

    }


    private class RECMODE extends Enum
    {

        public static RECMODE valueOf(String s)
        {
            return (RECMODE)Enum.valueOf(com/tencent/mm/modelvoice/MediaRecorder$RECMODE, s);
        }

        public static RECMODE[] values()
        {
            return (RECMODE[])c.clone();
        }

        public static final RECMODE a;
        public static final RECMODE b;
        private static final RECMODE c[];

        static 
        {
            a = new RECMODE("PCM", 0);
            b = new RECMODE("AMR", 1);
            RECMODE arecmode[] = new RECMODE[2];
            arecmode[0] = a;
            arecmode[1] = b;
            c = arecmode;
        }

        private RECMODE(String s, int i1)
        {
            super(s, i1);
        }
    }


    private class State extends Enum
    {

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/tencent/mm/modelvoice/MediaRecorder$State, s);
        }

        public static State[] values()
        {
            return (State[])f.clone();
        }

        public static final State a;
        public static final State b;
        public static final State c;
        public static final State d;
        public static final State e;
        private static final State f[];

        static 
        {
            a = new State("INITIALIZING", 0);
            b = new State("READY", 1);
            c = new State("RECORDING", 2);
            d = new State("ERROR", 3);
            e = new State("STOPPED", 4);
            State astate[] = new State[5];
            astate[0] = a;
            astate[1] = b;
            astate[2] = c;
            astate[3] = d;
            astate[4] = e;
            f = astate;
        }

        private State(String s, int i1)
        {
            super(s, i1);
        }
    }


    private class _cls1
        implements android.media.OnErrorListener
    {

        public void onError(android.media.MediaRecorder mediarecorder, int i1, int j1)
        {
            if(MediaRecorder.a(a) != null)
                MediaRecorder.a(a).a();
            MediaRecorder.b(a).release();
_L1:
            return;
            Exception exception;
            exception;
            Log.a("MicroMsg.MediaRecorder", exception.getMessage());
              goto _L1
        }

        private MediaRecorder a;

        _cls1()
        {
            a = MediaRecorder.this;
            super();
        }
    }


    private class AMRWriter
    {

        static int a(AMRWriter amrwriter, int i1)
        {
            amrwriter.h = i1;
            return i1;
        }

        static void a(AMRWriter amrwriter, ByteBuffer bytebuffer, int i1)
        {
            class ByteBuffer
            {

                public byte a[];
                public int b;

                public ByteBuffer(byte abyte0[], int i1)
                {
                    b = 0;
                    a = abyte0;
                    b = i1;
                }
            }

            byte abyte0[] = bytebuffer.a;
            if(bytebuffer.b < bytebuffer.a.length)
            {
                abyte0 = new byte[bytebuffer.b];
                System.arraycopy(abyte0, 0, abyte0, 0, bytebuffer.b);
            }
            PByteArray pbytearray = new PByteArray();
            com.tencent.mm.algorithm.CodeInfo.TestTime testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
            if(!MediaRecorder.a(amrwriter.e, abyte0, pbytearray, i1) || pbytearray.value == null)
            {
                Log.a("MicroMsg.MediaRecorder", "pcm2amr failed, native failed");
            } else
            {
                long l1 = testtime.b();
                class StatFloatTime
                {

                    public int a;
                    public long b;

                StatFloatTime()
                {
                    a = 0;
                    b = 0L;
                }
                }

                if(i1 == 1)
                {
                    StatFloatTime statfloattime = i;
                    statfloattime.b = (l1 + statfloattime.b * (long)statfloattime.a) / (long)(1 + statfloattime.a);
                    statfloattime.a = 1 + statfloattime.a;
                }
                Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("append2amrfile AmrTime:").append(l1).append(" useFloat:").append(i1).append(" nowqueue:").append(amrwriter.h).append(" avg:").append(i.b).append(" cnt:").append(i.a).toString());
                try
                {
                    amrwriter.c.write(pbytearray.value);
                    amrwriter.c.flush();
                }
                catch(IOException ioexception)
                {
                    Log.a("MicroMsg.MediaRecorder", (new StringBuilder()).append("Write File Error file:").append(amrwriter.d).toString());
                }
            }
        }

        private boolean a(int i1, String s)
        {
            boolean flag = false;
            if(s != null) goto _L2; else goto _L1
_L1:
            return flag;
_L2:
            e = i1;
            d = s;
            c = new FileOutputStream(d);
            c.write("#!AMR\n".getBytes());
            c.flush();
            MediaRecorder.l();
            flag = true;
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            Log.a("MicroMsg.MediaRecorder", (new StringBuilder()).append("init Amr out file Error").append(exception.getMessage()).toString());
            if(true) goto _L1; else goto _L3
_L3:
        }

        static boolean a(AMRWriter amrwriter)
        {
            return amrwriter.f;
        }

        static boolean a(AMRWriter amrwriter, int i1, String s)
        {
            return amrwriter.a(i1, s);
        }

        static int b(AMRWriter amrwriter, int i1)
        {
            amrwriter.g = i1;
            return i1;
        }

        static StatFloatTime b()
        {
            return i;
        }

        static boolean b(AMRWriter amrwriter)
        {
            return amrwriter.b;
        }

        static BlockingQueue c(AMRWriter amrwriter)
        {
            return amrwriter.a;
        }

        static String d(AMRWriter amrwriter)
        {
            return amrwriter.d;
        }

        static int e(AMRWriter amrwriter)
        {
            return amrwriter.h;
        }

        static int f(AMRWriter amrwriter)
        {
            return amrwriter.g;
        }

        static FileOutputStream g(AMRWriter amrwriter)
        {
            return amrwriter.c;
        }

        public final void a(byte abyte0[], int i1)
        {
            Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("push into queue queueLen:").append(a.size()).append(" buf:").append(i1).toString());
            if(i1 > 0)
            {
                if(j == null)
                {
                    class ThreadAmr extends Thread
                    {

                        public final void run()
                        {
_L2:
                            boolean flag;
                            if(AMRWriter.a(a))
                                break; /* Loop/switch isn't completed */
                            synchronized(a)
                            {
                                flag = AMRWriter.b(a);
                            }
                            Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("ThreadAmr in :").append(flag).append(" cnt :").append(AMRWriter.c(a).size()).toString());
                            if(flag && AMRWriter.c(a).isEmpty())
                                break; /* Loop/switch isn't completed */
                            ByteBuffer bytebuffer = (ByteBuffer)AMRWriter.c(a).poll(200L, TimeUnit.MILLISECONDS);
                            InterruptedException interruptedexception;
                            if(bytebuffer == null)
                            {
                                Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("poll byte null file:").append(AMRWriter.d(a)).toString());
                            } else
                            {
                                AMRWriter.a(a, AMRWriter.c(a).size());
                                if(AMRWriter.e(a) > 10 || flag)
                                {
                                    Log.b("MicroMsg.MediaRecorder", (new StringBuilder()).append("speed up amrcodec queue:").append(AMRWriter.e(a)).append(" stop:").append(flag).toString());
                                    AMRWriter.b(a, 0);
                                } else
                                if(AMRWriter.e(a) < 9)
                                    AMRWriter.b(a, 1);
                                if(AMRWriter.b().a >= 10 && AMRWriter.b().b > 240L)
                                    AMRWriter.b(a, 0);
                                AMRWriter.a(a, bytebuffer, AMRWriter.f(a));
                            }
                            continue; /* Loop/switch isn't completed */
                            exception1;
                            amrwriter;
                            JVM INSTR monitorexit ;
                            throw exception1;
                            interruptedexception;
                            Log.d("MicroMsg.MediaRecorder", "ThreadAmr poll null");
                            if(true) goto _L2; else goto _L1
_L1:
                            try
                            {
                                AMRWriter.g(a).close();
                            }
                            catch(Exception exception)
                            {
                                Log.a("MicroMsg.MediaRecorder", (new StringBuilder()).append("close amr file:").append(AMRWriter.d(a)).append("msg:").append(exception.getMessage()).toString());
                            }
                            if(!AMRWriter.a(a))
                            {
                                MediaRecorder.m();
                                Log.d("MicroMsg.MediaRecorder", (new StringBuilder()).append("finish Thread :").append(AMRWriter.d(a)).toString());
                            }
                            return;
                        }

                        private AMRWriter a;

                ThreadAmr()
                {
                    this((byte)0);
                }

                private ThreadAmr(byte byte0)
                {
                    a = AMRWriter.this;
                    super();
                }
                    }

                    j = new ThreadAmr();
                    j.start();
                }
                a.add(new ByteBuffer(abyte0, i1));
            }
        }

        public final boolean a()
        {
            Log.d("MicroMsg.MediaRecorder", "wait finish");
            this;
            JVM INSTR monitorenter ;
            b = true;
            this;
            JVM INSTR monitorexit ;
            Exception exception;
            try
            {
                j.join();
            }
            catch(InterruptedException interruptedexception) { }
            return false;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private static StatFloatTime i = new StatFloatTime();
        private BlockingQueue a;
        private boolean b;
        private FileOutputStream c;
        private String d;
        private int e;
        private boolean f;
        private int g;
        private int h;
        private ThreadAmr j;


        AMRWriter()
        {
            a = new ArrayBlockingQueue(1024);
            b = false;
            f = false;
            g = 1;
            h = 0;
            j = null;
        }
    }

}
