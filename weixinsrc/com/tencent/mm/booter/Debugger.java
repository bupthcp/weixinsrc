// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.protocal.ConstantsProtocal;
import com.tencent.mm.test.Test;
import java.io.File;
import java.io.FileOutputStream;
import java.util.HashMap;

// Referenced classes of package com.tencent.mm.booter:
//            Resolver

public final class Debugger
{

    public Debugger(Context context)
    {
        String as[] = new String[4];
        as[0] = "_id";
        as[1] = "key";
        as[2] = "type";
        as[3] = "value";
        a = as;
        Cursor cursor = context.getContentResolver().query(com.tencent.mm.coolassist.DebugProviderConstants.Config.a, a, null, null, null);
        if(cursor != null)
        {
            Log.b("MicroMsg.Debugger", "debugger attached");
            int i = cursor.getColumnIndex("key");
            int j = cursor.getColumnIndex("type");
            int k = cursor.getColumnIndex("value");
            Object obj;
            for(; cursor.moveToNext(); b.put(cursor.getString(i), obj))
                obj = Resolver.a(cursor.getInt(j), cursor.getString(k));

            cursor.close();
        }
    }

    public final void a(String s)
    {
        Log.a(Util.a(c(".com.tencent.mm.debug.log.level"), 0), true);
        Test.a = Util.a(d(".com.tencent.mm.debug.test.display_errcode"), false);
        Test.b = Util.a(d(".com.tencent.mm.debug.test.display_msgstate"), false);
        Test.c = Util.a(d(".com.tencent.mm.debug.test.network.simulate_fault"), false);
        Test.d = Util.a(d(".com.tencent.mm.debug.test.network.force_touch"), false);
        Test.e = Util.a(d(".com.tencent.mm.debug.test.outputToSdCardlog"), false);
        Test.f = Util.a(d(".com.tencent.mm.debug.test.crashIsExit"), false);
        Test.g = Util.a(d(".com.tencent.mm.debug.test.uploadLog"), false);
        Test.h = Util.a(d(".com.tencent.mm.debug.test.show_full_version"), false);
        try
        {
            Log.b("MicroMsg.Debugger", "try set test protocal version");
            int i = Integer.decode(b(".com.tencent.mm.debug.log.setversion")).intValue();
            ConstantsProtocal.a(i);
            Log.b("MicroMsg.Debugger", (new StringBuilder()).append("set up test protocal version = ").append(Integer.toHexString(i)).toString());
        }
        catch(Exception exception)
        {
            Log.c("MicroMsg.Debugger", "no debugger was got");
        }
        if(Test.g)
        {
            File file = new File("/sdcard/tencent/");
            if(!file.exists())
                file.mkdirs();
            File file1 = new File("/sdcard/tencent/", "mm.log");
            try
            {
                (new FileOutputStream(file1, true)).close();
            }
            catch(Exception exception1) { }
            if(s == null)
                s = "(null)";
            Log.a("/sdcard/tencent/mm.log", "mm.log", s, ConstantsProtocal.b);
        }
    }

    public final String b(String s)
    {
        Object obj = b.get(s);
        String s1;
        if(obj instanceof String)
        {
            Log.d("MicroMsg.Debugger", (new StringBuilder()).append("getString(): key=").append(s).append(", value=").append(obj.toString()).toString());
            s1 = (String)obj;
        } else
        {
            s1 = null;
        }
        return s1;
    }

    public final Integer c(String s)
    {
        Object obj = b.get(s);
        Integer integer;
        if(obj instanceof Integer)
        {
            Log.d("MicroMsg.Debugger", (new StringBuilder()).append("getInteger(): key=").append(s).append(", value=").append(obj.toString()).toString());
            integer = (Integer)obj;
        } else
        {
            integer = null;
        }
        return integer;
    }

    public final Boolean d(String s)
    {
        Object obj = b.get(s);
        Boolean boolean1;
        if(obj instanceof Boolean)
        {
            Log.d("MicroMsg.Debugger", (new StringBuilder()).append("getBoolean(): key=").append(s).append(", value=").append(obj.toString()).toString());
            boolean1 = (Boolean)obj;
        } else
        {
            boolean1 = null;
        }
        return boolean1;
    }

    private final String a[];
    private final HashMap b = new HashMap();
}
