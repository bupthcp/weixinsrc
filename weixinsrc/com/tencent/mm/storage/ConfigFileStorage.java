// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import java.io.*;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.tencent.mm.storage:
//            IConfigStorage

class ConfigFileStorage
    implements IConfigStorage
{

    public ConfigFileStorage(String s)
    {
        b = false;
        c = "";
        c = s;
        File file;
        file = new File(c);
        if(!file.exists())
            file.createNewFile();
        if(file.length() != 0L) goto _L2; else goto _L1
_L1:
        a = new HashMap();
_L4:
        b = false;
        return;
_L2:
        try
        {
            FileInputStream fileinputstream = new FileInputStream(file);
            ObjectInputStream objectinputstream = new ObjectInputStream(fileinputstream);
            a = (Map)objectinputstream.readObject();
            objectinputstream.close();
            fileinputstream.close();
        }
        catch(Exception exception)
        {
            a = new HashMap();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final Object a(int i)
    {
        return a.get(Integer.valueOf(i));
    }

    public final void a(int i, Object obj)
    {
        a.put(Integer.valueOf(i), obj);
        if(b)
            break MISSING_BLOCK_LABEL_70;
        FileOutputStream fileoutputstream = new FileOutputStream(c);
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(fileoutputstream);
        objectoutputstream.writeObject(a);
        objectoutputstream.close();
        fileoutputstream.flush();
        fileoutputstream.close();
_L2:
        return;
        IOException ioexception;
        ioexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private Map a;
    private boolean b;
    private String c;
}
