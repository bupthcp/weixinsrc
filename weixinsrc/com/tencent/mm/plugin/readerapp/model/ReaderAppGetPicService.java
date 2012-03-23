// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.model;

import android.os.Handler;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import java.io.File;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

public class ReaderAppGetPicService
{

    public ReaderAppGetPicService()
    {
        c = null;
        d = new ArrayBlockingQueue(80);
        a = null;
        b = new _cls1();
        c = null;
    }

    public static String a(String s, int i)
    {
        return (new StringBuilder()).append(MMCore.f().M()).append("/reader_").append(i).append("_").append(MD5.a(s.getBytes())).append(".jpg").toString();
    }

    static BlockingQueue a(ReaderAppGetPicService readerappgetpicservice)
    {
        return readerappgetpicservice.d;
    }

    public static void a(int i)
    {
        File file = new File(MMCore.f().M());
        if(file.exists() && file.isDirectory()) goto _L2; else goto _L1
_L1:
        File afile[];
        return;
_L2:
        if((afile = file.listFiles()) != null && afile.length > 0)
        {
            int j = 0;
            while(j < afile.length) 
            {
                if(afile[j].getName().startsWith((new StringBuilder()).append("reader_").append(i).append("_").toString()))
                    afile[j].delete();
                j++;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final String a(String s, int i, int j)
    {
        String s1;
        s1 = a(s, i);
        Log.d("MicroMsg.ReaderGetPic", (new StringBuilder()).append("getPicfileByUrl type:").append(i).append(" url:").append(s).toString());
        boolean flag = FileOperation.c(s1);
        if(!flag) goto _L2; else goto _L1
_L1:
        return s1;
        Exception exception;
        exception;
_L2:
        try
        {
            d.add(new QueueInfo(s, s1, j));
            if(c == null || !c.isAlive())
            {
                c = new ThrGetPic();
                c.start();
            }
        }
        catch(Exception exception1) { }
        s1 = null;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a()
    {
        if(c != null)
            c.a = true;
        c = null;
    }

    public final void a(OnDownSucc ondownsucc)
    {
        Log.d("MicroMsg.ReaderGetPic", (new StringBuilder()).append("removeListener :").append(ondownsucc.hashCode()).toString());
        a = null;
    }

    public final void b(OnDownSucc ondownsucc)
    {
        Log.d("MicroMsg.ReaderGetPic", (new StringBuilder()).append("addListener :").append(ondownsucc.hashCode()).toString());
        a = ondownsucc;
    }

    public OnDownSucc a;
    Handler b;
    private ThrGetPic c;
    private BlockingQueue d;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            if(a.a != null)
                a.a.a((String)message.obj, message.arg1);
_L2:
            return;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private ReaderAppGetPicService a;

        _cls1()
        {
            a = ReaderAppGetPicService.this;
            super();
        }

        private class OnDownSucc
        {

            public abstract void a(String s, int i);
        }

    }


    private class QueueInfo
    {

        String a;
        String b;
        int c;
        private ReaderAppGetPicService d;

        public QueueInfo(String s, String s1, int i)
        {
            d = ReaderAppGetPicService.this;
            super();
            a = s;
            b = s1;
            c = i;
        }
    }


    private class ThrGetPic extends Thread
    {

        public void run()
        {
            int i;
            a = false;
            i = 0;
_L2:
            int j;
label0:
            {
                if(!a)
                {
                    if(i <= 10)
                        break label0;
                    a = true;
                }
                return;
            }
label1:
            {
label2:
                {
                    QueueInfo queueinfo;
                    boolean flag;
                    URLConnection urlconnection;
                    InputStream inputstream;
                    byte abyte0[];
                    FileOutputStream fileoutputstream;
                    int k;
                    Message message;
                    try
                    {
                        queueinfo = (QueueInfo)ReaderAppGetPicService.a(b).poll(500L, TimeUnit.MILLISECONDS);
                        if(queueinfo == null)
                            break label2;
                        flag = Util.i(queueinfo.a);
                    }
                    catch(Exception exception)
                    {
                        j = i;
                        break MISSING_BLOCK_LABEL_388;
                    }
                    if(!flag)
                        break label1;
                }
                i++;
                continue; /* Loop/switch isn't completed */
            }
            Log.d("MicroMsg.ReaderGetPic", (new StringBuilder()).append("Thread get :").append(queueinfo.a).append(" file:").append(queueinfo.b).toString());
            if(FileOperation.c(queueinfo.b))
            {
                Log.d("MicroMsg.ReaderGetPic", (new StringBuilder()).append("Thread exist file:").append(queueinfo.b).toString());
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            urlconnection = (new URL(queueinfo.a)).openConnection();
            urlconnection.setUseCaches(true);
            urlconnection.setConnectTimeout(3000);
            urlconnection.setReadTimeout(3000);
            inputstream = urlconnection.getInputStream();
            abyte0 = new byte[1024];
            fileoutputstream = new FileOutputStream((new StringBuilder()).append(queueinfo.b).append(".tmp").toString());
            do
            {
                k = inputstream.read(abyte0);
                if(k == -1)
                    break;
                fileoutputstream.write(abyte0, 0, k);
            } while(true);
            fileoutputstream.close();
            inputstream.close();
            (new File((new StringBuilder()).append(queueinfo.b).append(".tmp").toString())).renameTo(new File(queueinfo.b));
            message = new Message();
            message.obj = queueinfo.a;
            message.arg1 = queueinfo.c;
            b.b.sendMessage(message);
            i = 0;
            continue; /* Loop/switch isn't completed */
            Exception exception1;
            exception1;
            j = 0;
            i = j;
            if(true) goto _L2; else goto _L1
_L1:
        }

        boolean a;
        private ReaderAppGetPicService b;

        ThrGetPic()
        {
            b = ReaderAppGetPicService.this;
            super();
            a = true;
        }
    }

}
