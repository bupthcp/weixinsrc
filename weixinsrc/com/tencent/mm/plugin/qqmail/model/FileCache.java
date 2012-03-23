// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.platformtools.Log;
import java.io.*;
import java.util.*;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

public class FileCache
{

    public FileCache(String s, int i)
    {
        b = null;
        c = a;
        Log.c("Msg.Plugin.HttpRequestCache", (new StringBuilder()).append("HttpRequestCache constructor, path = ").append(s).append(", maxCount = ").append(i).toString());
        b = s;
        File file = new File(b);
        if(!file.exists())
            file.mkdir();
        if(i <= 0)
            i = a;
        c = i;
    }

    public static boolean a(String s, byte abyte0[])
    {
        FileOutputStream fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(s);
        fileoutputstream1.write(abyte0);
        fileoutputstream1.flush();
        Exception exception2;
        boolean flag;
        Exception exception3;
        try
        {
            fileoutputstream1.close();
        }
        catch(IOException ioexception2) { }
        flag = true;
_L2:
        return flag;
        exception3;
        fileoutputstream1 = fileoutputstream;
_L5:
        if(fileoutputstream1 != null)
            try
            {
                fileoutputstream1.close();
            }
            catch(IOException ioexception) { }
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
        exception2;
_L4:
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch(IOException ioexception1) { }
        throw exception2;
        Exception exception1;
        exception1;
        fileoutputstream = fileoutputstream1;
        exception2 = exception1;
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
          goto _L5
    }

    public static byte[] a(String s)
    {
        byte abyte0[] = null;
        File file = new File(s);
        if(file.exists()) goto _L2; else goto _L1
_L2:
        Object obj;
        int i;
        i = (int)file.length();
        obj = new FileInputStream(file);
        byte abyte2[];
        int j;
        abyte2 = new byte[i];
        j = ((FileInputStream) (obj)).read(abyte2);
        Exception exception1;
        byte abyte1[];
        if(j != i)
        {
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception3) { }
        } else
        {
            Exception exception;
            Exception exception2;
            IOException ioexception1;
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception2) { }
            abyte0 = abyte2;
        }
          goto _L1
        exception2;
        abyte1 = abyte0;
_L5:
        if(abyte1 != null)
            try
            {
                abyte1.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception1) { }
        break; /* Loop/switch isn't completed */
        exception;
        obj = abyte0;
        exception1 = exception;
_L4:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception) { }
        throw exception1;
        exception1;
        if(true) goto _L4; else goto _L3
_L3:
        Exception exception3;
        exception3;
        abyte1 = ((byte []) (obj));
        if(true) goto _L5; else goto _L1
_L1:
        return abyte0;
    }

    private static byte[] a(byte abyte0[], byte abyte1[])
    {
        byte abyte3[];
        DESKeySpec deskeyspec = new DESKeySpec(abyte1);
        javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
        Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        cipher.init(1, secretkey, new IvParameterSpec("12345678".getBytes()));
        abyte3 = cipher.doFinal(abyte0);
        byte abyte2[] = abyte3;
_L2:
        return abyte2;
        Exception exception;
        exception;
        abyte2 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private static String b(String s, Map map)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(s);
        if(map != null)
        {
            String s2;
            for(Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); stringbuffer.append(s2))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                String s1 = (String)entry.getKey();
                s2 = (String)entry.getValue();
                stringbuffer.append(s1);
            }

        }
        return MD5.a(stringbuffer.toString().getBytes());
    }

    private static byte[] b(String s)
    {
        return MD5.a(s.toString().getBytes()).substring(8, 16).getBytes();
    }

    private static byte[] b(byte abyte0[], byte abyte1[])
    {
        byte abyte3[];
        DESKeySpec deskeyspec = new DESKeySpec(abyte1);
        javax.crypto.SecretKey secretkey = SecretKeyFactory.getInstance("DES").generateSecret(deskeyspec);
        Cipher cipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
        cipher.init(2, secretkey, new IvParameterSpec("12345678".getBytes()));
        abyte3 = cipher.doFinal(abyte0);
        byte abyte2[] = abyte3;
_L2:
        return abyte2;
        Exception exception;
        exception;
        abyte2 = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final String a()
    {
        return b;
    }

    public final String a(String s, Map map)
    {
        String s1 = null;
        if(s == null || s.length() == 0)
        {
            Log.a("Msg.Plugin.HttpRequestCache", "getCache, invalid argument");
        } else
        {
            String s2 = b(s, map);
            byte abyte0[] = a((new StringBuilder()).append(b).append(s2).toString());
            if(abyte0 == null)
            {
                Log.c("Msg.Plugin.HttpRequestCache", "readFromFile fail, cipherText is null, read error or cache not exist");
            } else
            {
                byte abyte1[] = b(abyte0, b(s2));
                if(abyte1 == null)
                    Log.a("Msg.Plugin.HttpRequestCache", "decrypt fail, plaintText is null");
                else
                    s1 = new String(abyte1);
            }
        }
        return s1;
    }

    public final boolean a(String s, Map map, byte abyte0[])
    {
        boolean flag = false;
        if(s == null || s.length() == 0 || abyte0 == null || abyte0.length == 0)
        {
            Log.a("Msg.Plugin.HttpRequestCache", "setCache, invalid argument");
        } else
        {
            b();
            String s1 = b(s, map);
            byte abyte1[] = a(abyte0, b(s1));
            if(abyte1 == null)
                Log.a("Msg.Plugin.HttpRequestCache", "encrypt fail, cipherText is null");
            else
                flag = a((new StringBuilder()).append(b).append(s1).toString(), abyte1);
        }
        return flag;
    }

    public final void b()
    {
        if((new File(b)).list().length >= c) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String as[] = (new File(b)).list();
        File file = null;
        int i = as.length;
        for(int j = 0; j < i; j++)
        {
            file = new File(as[j]);
            file.lastModified();
        }

        if(file.exists())
            file.delete();
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static int a = 100;
    private String b;
    private int c;

}
