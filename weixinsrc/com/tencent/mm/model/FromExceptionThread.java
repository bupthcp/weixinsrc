// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import android.os.Handler;
import com.tencent.mm.platformtools.Log;
import java.io.*;

// Referenced classes of package com.tencent.mm.model:
//            ErrLog

class FromExceptionThread extends Thread
{

    public FromExceptionThread(String s, Runnable runnable, ErrLog errlog)
    {
        super(s);
        a = s;
        c = runnable;
        d = errlog;
        b = new Handler();
    }

    public void run()
    {
        try
        {
            File file = new File(a);
            if(file.exists() && file.length() > 0L)
            {
                Log.d("MicroMsg.FromExceptionThread", (new StringBuilder()).append("try extract exception from file: thread=").append(Thread.currentThread()).toString());
                BufferedReader bufferedreader = new BufferedReader(new FileReader(file));
                for(String s = bufferedreader.readLine(); s != null; s = bufferedreader.readLine())
                    d.a("exception", s);

                bufferedreader.close();
                file.delete();
            }
        }
        catch(IOException ioexception) { }
        b.post(c);
    }

    private final String a;
    private Handler b;
    private Runnable c;
    private ErrLog d;
}
