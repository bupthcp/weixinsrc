// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.media.AudioRecord;
import java.io.File;
import java.io.RandomAccessFile;

public class PcmRecorder
{

    public PcmRecorder()
    {
        a = Status.d;
        b = null;
        c = null;
        d = null;
        f = 0;
        g = 960;
        h = (1 * (16 * (2 * g))) / 8;
        i = null;
    }

    static int a(PcmRecorder pcmrecorder)
    {
        pcmrecorder.f = 0;
        return 0;
    }

    static int a(PcmRecorder pcmrecorder, int j)
    {
        int k = j + pcmrecorder.f;
        pcmrecorder.f = k;
        return k;
    }

    static AudioRecord b(PcmRecorder pcmrecorder)
    {
        return pcmrecorder.b;
    }

    static byte[] c(PcmRecorder pcmrecorder)
    {
        return pcmrecorder.e;
    }

    private int d()
    {
        int j = 0;
        try
        {
            d = new RandomAccessFile(c, "rw");
            d.setLength(0L);
            d.writeBytes("RIFF");
            d.writeInt(0);
            d.writeBytes("WAVE");
            d.writeBytes("fmt ");
            d.writeInt(Integer.reverseBytes(16));
            d.writeShort(Short.reverseBytes((short)1));
            d.writeShort(Short.reverseBytes((short)1));
            d.writeInt(Integer.reverseBytes(8000));
            d.writeInt(Integer.reverseBytes(16000));
            d.writeShort(Short.reverseBytes((short)2));
            d.writeShort(Short.reverseBytes((short)16));
            d.writeBytes("data");
            d.writeInt(0);
        }
        catch(Exception exception)
        {
            j = -1;
        }
        return j;
    }

    static RandomAccessFile d(PcmRecorder pcmrecorder)
    {
        return pcmrecorder.d;
    }

    static int e(PcmRecorder pcmrecorder)
    {
        return pcmrecorder.f;
    }

    static AudioRecord f(PcmRecorder pcmrecorder)
    {
        pcmrecorder.b = null;
        return null;
    }

    static RandomAccessFile g(PcmRecorder pcmrecorder)
    {
        pcmrecorder.d = null;
        return null;
    }

    static String h(PcmRecorder pcmrecorder)
    {
        pcmrecorder.c = null;
        return null;
    }

    public final int a()
    {
        byte byte0;
        if(a != Status.a)
        {
            byte0 = -1;
        } else
        {
            i.start();
            a = Status.b;
            byte0 = 0;
        }
        return byte0;
    }

    public final int a(String s)
    {
        if(a == Status.d) goto _L2; else goto _L1
_L1:
        byte byte0 = -1;
_L4:
        return byte0;
_L2:
        a = Status.c;
        if(s == null)
        {
            byte0 = -2;
            continue; /* Loop/switch isn't completed */
        }
        c = s;
        int j = AudioRecord.getMinBufferSize(8000, 2, 2);
        if(h < j)
        {
            h = j;
            g = h / 4;
        }
        if(h <= 0 || g <= 0)
        {
            byte0 = -3;
            continue; /* Loop/switch isn't completed */
        }
        e = new byte[(1 * (16 * (2 * g))) / 8];
        b = new AudioRecord(1, 8000, 2, 2, h);
        Exception exception;
        if(b.getState() != 1)
            byte0 = -5;
        else
        if(d() < 0)
        {
            b.release();
            byte0 = -5;
        } else
        {
            i = new ThreadRecord();
            a = Status.a;
            byte0 = 0;
        }
        continue; /* Loop/switch isn't completed */
        exception;
        byte0 = -4;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final int b()
    {
        byte byte0;
        if(a != Status.b)
        {
            byte0 = -1;
        } else
        {
            i.a();
            try
            {
                i.join();
            }
            catch(InterruptedException interruptedexception) { }
            a = Status.d;
            byte0 = 0;
        }
        return byte0;
    }

    public final void c()
    {
        if(a == Status.b && b != null)
            b.stop();
        if(b != null)
        {
            b.release();
            b = null;
        }
        if(d != null)
        {
            try
            {
                d.close();
            }
            catch(Exception exception) { }
            d = null;
        }
        if(c != null)
        {
            (new File(c)).delete();
            c = null;
        }
        a = Status.d;
    }

    private Status a;
    private AudioRecord b;
    private String c;
    private RandomAccessFile d;
    private byte e[];
    private int f;
    private int g;
    private int h;
    private ThreadRecord i;

    private class Status extends Enum
    {

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/tencent/mm/modelvideo/PcmRecorder$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])e.clone();
        }

        public static final Status a;
        public static final Status b;
        public static final Status c;
        public static final Status d;
        private static final Status e[];

        static 
        {
            a = new Status("READY", 0);
            b = new Status("RECORDING", 1);
            c = new Status("ERROR", 2);
            d = new Status("STOPPED", 3);
            Status astatus[] = new Status[4];
            astatus[0] = a;
            astatus[1] = b;
            astatus[2] = c;
            astatus[3] = d;
            e = astatus;
        }

        private Status(String s, int j)
        {
            super(s, j);
        }
    }


    private class ThreadRecord extends Thread
    {

        public final void a()
        {
            a = true;
        }

        public void run()
        {
            PcmRecorder.a(b);
            Exception exception;
            PcmRecorder.b(b).startRecording();
            PcmRecorder.b(b).read(PcmRecorder.c(b), 0, PcmRecorder.c(b).length / 2);
            while(!a) 
            {
                PcmRecorder.b(b).read(PcmRecorder.c(b), 0, PcmRecorder.c(b).length / 2);
                PcmRecorder.a(b, PcmRecorder.c(b).length / 2);
                PcmRecorder.d(b).write(PcmRecorder.c(b), 0, PcmRecorder.c(b).length / 2);
            }
              goto _L1
_L3:
            return;
_L1:
            try
            {
                PcmRecorder.b(b).stop();
                PcmRecorder.b(b).release();
                PcmRecorder.d(b).seek(4L);
                PcmRecorder.d(b).writeInt(Integer.reverseBytes(36 + PcmRecorder.e(b)));
                PcmRecorder.d(b).seek(40L);
                PcmRecorder.d(b).writeInt(Integer.reverseBytes(PcmRecorder.e(b)));
                PcmRecorder.d(b).close();
                PcmRecorder.f(b);
                PcmRecorder.g(b);
                PcmRecorder.h(b);
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception)
            {
                b.c();
            }
            if(true) goto _L3; else goto _L2
_L2:
        }

        private boolean a;
        private PcmRecorder b;

        ThreadRecord()
        {
            this((byte)0);
        }

        private ThreadRecord(byte byte0)
        {
            b = PcmRecorder.this;
            super();
            a = false;
        }
    }

}
