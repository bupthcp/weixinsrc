// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.text.format.DateFormat;
import com.tencent.mm.algorithm.TypeTransform;
import java.io.PrintStream;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

// Referenced classes of package com.tencent.mm.platformtools:
//            Util

final class LogHelper
{

    private LogHelper()
    {
    }

    public static void a(PrintStream printstream, byte abyte0[], String s, String s1)
    {
        if(printstream != null && !Util.b(abyte0) && !Util.i(s) && !Util.i(s1))
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append(DateFormat.format("MM-dd kk:mm:ss", System.currentTimeMillis()));
            stringbuffer.append(" ").append(s).append(" ").append(s1);
            String s2 = stringbuffer.toString();
            try
            {
                DESKeySpec deskeyspec = new DESKeySpec(abyte0);
                javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
                Cipher cipher = Cipher.getInstance("DES");
                cipher.init(1, secretkey);
                byte abyte1[] = cipher.doFinal(s2.getBytes());
                printstream.write(TypeTransform.a(abyte1.length));
                printstream.write(abyte1);
            }
            catch(Exception exception) { }
            printstream.flush();
        }
    }
}
