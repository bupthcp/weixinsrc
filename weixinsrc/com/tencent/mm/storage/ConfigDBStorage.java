// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storagebase.SqliteDB;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.storage:
//            IConfigStorage

class ConfigDBStorage
    implements IConfigStorage
{

    public ConfigDBStorage(SqliteDB sqlitedb)
    {
        a = sqlitedb;
    }

    private static Object a(int i, String s)
    {
        i;
        JVM INSTR tableswitch 1 6: default 40
    //                   1 44
    //                   2 52
    //                   3 42
    //                   4 60
    //                   5 68
    //                   6 76;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L4:
        break; /* Loop/switch isn't completed */
_L1:
        s = null;
_L8:
        return s;
_L2:
        s = Integer.valueOf(s);
          goto _L8
_L3:
        s = Long.valueOf(s);
          goto _L8
_L5:
        s = Boolean.valueOf(s);
          goto _L8
_L6:
        s = Float.valueOf(s);
          goto _L8
_L7:
        Double double1 = Double.valueOf(s);
        s = double1;
          goto _L8
        Exception exception;
        exception;
        if(true) goto _L1; else goto _L9
_L9:
    }

    public final Object a(int i)
    {
        TypeVal typeval = (TypeVal)b.get(Integer.valueOf(i));
        if(typeval == null)
        {
            typeval = new TypeVal();
            Cursor cursor = a.a("userinfo", (new StringBuilder()).append("id=").append(i).toString(), null, null);
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                typeval.a = cursor.getInt(1);
                typeval.b = cursor.getString(2);
            }
            cursor.close();
            b.put(Integer.valueOf(i), typeval);
        }
        Object obj;
        if(typeval.a != -1)
            obj = a(typeval.a, typeval.b);
        else
            obj = null;
        return obj;
    }

    public final void a(int i, Object obj)
    {
        int j;
        j = 1;
        b.remove(Integer.valueOf(i));
        if(obj != null) goto _L2; else goto _L1
_L1:
        a.a("userinfo", (new StringBuilder()).append("id=").append(i).toString(), null);
_L4:
        return;
_L2:
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("id", Integer.valueOf(i));
        if(obj instanceof Integer)
            contentvalues.put("type", Integer.valueOf(j));
        else
        if(obj instanceof Long)
            contentvalues.put("type", Integer.valueOf(2));
        else
        if(obj instanceof String)
            contentvalues.put("type", Integer.valueOf(3));
        else
        if(obj instanceof Boolean)
            contentvalues.put("type", Integer.valueOf(4));
        else
        if(obj instanceof Float)
        {
            contentvalues.put("type", Integer.valueOf(5));
        } else
        {
label0:
            {
                if(!(obj instanceof Double))
                    break label0;
                contentvalues.put("type", Integer.valueOf(6));
            }
        }
        contentvalues.put("value", obj.toString());
        do
        {
            if(j != 0)
                a.b("userinfo", "id", contentvalues);
            if(true)
                continue;
            Log.a("MicroMsg.ConfigDBStorage", (new StringBuilder()).append("unresolve failed, unknown type=").append(obj.getClass().toString()).toString());
            j = 0;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private SqliteDB a;
    private final Map b = new HashMap();

    private class TypeVal
    {

        public int a;
        public String b;

        TypeVal()
        {
            a = -1;
            b = null;
        }
    }

}
