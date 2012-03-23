// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelbase;

import com.tencent.mm.algorithm.Base64;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.network.IAccInfo;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.storage.ConstantsStorage;
import com.tencent.mm.test.Test;
import java.io.*;

public class MMUncaughtExceptionHandler
    implements Thread.UncaughtExceptionHandler
{

    public MMUncaughtExceptionHandler(IAccInfo iaccinfo, String s)
    {
        a = null;
        b = iaccinfo;
        a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
        c = s;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        int i;
        i = 0;
        Log.a("MicroMsg.UEH", (new StringBuilder()).append("uncaught exception error, threadId=").append(thread.getId()).append(", err=").append(throwable.getMessage()).toString());
        ByteArrayOutputStream bytearrayoutputstream;
        PrintStream printstream;
        StringBuilder stringbuilder;
        if(c.equals("ui_worker"))
        {
            File file = new File((new StringBuilder()).append(ConstantsStorage.b).append("crash_record_file").toString());
            if(!file.exists())
                file.createNewFile();
        }
        bytearrayoutputstream = new ByteArrayOutputStream();
        printstream = new PrintStream(bytearrayoutputstream);
        printstream.println((new StringBuilder()).append("#client.version=").append(ConstantsProtocal.b).toString());
        stringbuilder = (new StringBuilder()).append("#accinfo.uin=");
        if(b != null)
            break MISSING_BLOCK_LABEL_324;
_L1:
        boolean flag;
        printstream.println(stringbuilder.append(i).toString());
        throwable.printStackTrace(printstream);
        FileOperation.a("/data/data/com.tencent.mm/MicroMsg/", "errLog.cfg", "", Base64.a(bytearrayoutputstream.toByteArray()));
        flag = Test.e;
        if(flag)
            try
            {
                String s = ConstantsStorage.a;
                String s1 = bytearrayoutputstream.toString();
                FileOutputStream fileoutputstream = new FileOutputStream((new StringBuilder()).append(s).append("/tencent/").append("crashlog").toString(), false);
                OutputStreamWriter outputstreamwriter = new OutputStreamWriter(fileoutputstream, "utf-8");
                outputstreamwriter.write(s1);
                outputstreamwriter.write("\n");
                outputstreamwriter.flush();
                outputstreamwriter.close();
                fileoutputstream.close();
            }
            catch(Exception exception1)
            {
                Log.d("MicroMsg.UEH", "file write error");
            }
        try
        {
            bytearrayoutputstream.close();
        }
        catch(Exception exception) { }
        if(Test.f)
            a.uncaughtException(thread, throwable);
        else
            System.exit(-1);
        return;
        i = b.g();
          goto _L1
    }

    private Thread.UncaughtExceptionHandler a;
    private IAccInfo b;
    private final String c;
}
