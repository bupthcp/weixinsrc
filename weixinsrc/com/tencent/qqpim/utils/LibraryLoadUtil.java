// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import java.io.File;

// Referenced classes of package com.tencent.qqpim.utils:
//            QQPimUtils

public class LibraryLoadUtil
{

    public LibraryLoadUtil()
    {
    }

    public static boolean loadLibrary(String s, Context context)
    {
        String s4;
        int i;
        s4 = context.getCacheDir().toString();
        if(s4.endsWith("/"))
            s4 = s4.substring(0, -2 + s4.length());
        i = s4.lastIndexOf('/');
        if(i == -1) goto _L2; else goto _L1
_L1:
        String s5 = (new StringBuilder(String.valueOf(s4.substring(0, i)))).append("/lib/").toString();
        String s1 = s5;
_L10:
        if(s1.length() == 0) goto _L4; else goto _L3
_L3:
        if(!(new File((new StringBuilder(String.valueOf(s1))).append(s).toString())).exists()) goto _L6; else goto _L5
_L5:
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("try to load library: ")).append(s1).append(s).toString());
        System.load((new StringBuilder(String.valueOf(s1))).append(s).toString());
        boolean flag1 = true;
_L11:
        String s2;
        if(flag1 || s.endsWith(".so"))
            break MISSING_BLOCK_LABEL_670;
        s2 = (new StringBuilder(String.valueOf(s))).append(".so").toString();
        if(!(new File((new StringBuilder(String.valueOf(s1))).append(s2).toString())).exists())
            break MISSING_BLOCK_LABEL_287;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("try to load library: ")).append(s1).append(s2).toString());
        System.load((new StringBuilder(String.valueOf(s1))).append(s2).toString());
        flag1 = true;
_L12:
        if(flag1 || s2.startsWith("lib")) goto _L8; else goto _L7
_L7:
        String s3 = (new StringBuilder("lib")).append(s2).toString();
        if(!(new File((new StringBuilder(String.valueOf(s1))).append(s3).toString())).exists()) goto _L8; else goto _L9
_L9:
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("try to load library: ")).append(s1).append(s3).toString());
        System.load((new StringBuilder(String.valueOf(s1))).append(s3).toString());
        boolean flag2 = true;
_L13:
        if(flag2)
            break MISSING_BLOCK_LABEL_439;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("try to load library: ")).append(s).append(" with default path").toString());
        System.loadLibrary(s);
_L15:
        boolean flag = true;
_L14:
        return flag;
_L2:
        try
        {
            s1 = "";
        }
        catch(Exception exception)
        {
            s1 = (new StringBuilder("/data/data/")).append(context.getPackageName()).append("/lib/").toString();
        }
          goto _L10
        UnsatisfiedLinkError unsatisfiedlinkerror4;
        unsatisfiedlinkerror4;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("cannot load library ")).append(s1).append(s).toString());
_L6:
        flag1 = false;
          goto _L11
        UnsatisfiedLinkError unsatisfiedlinkerror3;
        unsatisfiedlinkerror3;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("cannot load library ")).append(s1).append(s2).toString());
          goto _L12
        UnsatisfiedLinkError unsatisfiedlinkerror2;
        unsatisfiedlinkerror2;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("cannot load library ")).append(s1).append(s3).toString());
_L8:
        flag2 = flag1;
          goto _L13
        UnsatisfiedLinkError unsatisfiedlinkerror1;
        unsatisfiedlinkerror1;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("cannot load library ")).append(s).toString());
        flag = false;
          goto _L14
_L4:
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("try to load library: ")).append(s).append(" with default path").toString());
        System.loadLibrary(s);
          goto _L15
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        QQPimUtils.writeToLog("loadLibrary", (new StringBuilder("cannot load library ")).append(s).toString());
        flag = false;
          goto _L14
        s2 = s;
          goto _L12
    }
}
