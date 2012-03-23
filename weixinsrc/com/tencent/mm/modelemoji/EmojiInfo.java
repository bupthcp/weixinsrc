// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.graphics.Bitmap;
import b.a.e;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.ui.MMActivity;
import java.io.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfoStorage

public class EmojiInfo
{

    public EmojiInfo()
    {
        m = -1;
        K = MMCore.f().N();
        q();
    }

    public EmojiInfo(String s1)
    {
        m = -1;
        K = s1;
        q();
    }

    public static boolean b(int i1)
    {
        boolean flag;
        if(i1 == e || i1 == d)
            flag = true;
        else
            flag = false;
        return flag;
    }

    private void q()
    {
        x = "";
        y = "";
        z = a;
        A = h;
        B = 0;
        C = 0;
        D = k;
        E = "";
        F = "";
        G = "";
        H = "";
        I = 0;
        J = 0;
    }

    public final ContentValues a()
    {
        ContentValues contentvalues = new ContentValues();
        if((1 & m) != 0)
            contentvalues.put("md5", f());
        if((2 & m) != 0)
            contentvalues.put("svrid", h());
        if((4 & m) != 0)
            contentvalues.put("catalog", Integer.valueOf(z));
        if((8 & m) != 0)
            contentvalues.put("type", Integer.valueOf(A));
        if((0x10 & m) != 0)
            contentvalues.put("size", Integer.valueOf(B));
        if((0x20 & m) != 0)
            contentvalues.put("start", Integer.valueOf(C));
        if((0x40 & m) != 0)
            contentvalues.put("state", Integer.valueOf(D));
        if((0x80 & m) != 0)
            contentvalues.put("name", n());
        if((0x100 & m) != 0)
            contentvalues.put("content", o());
        if((0x200 & m) != 0)
            contentvalues.put("reserved1", p());
        if((0x400 & m) != 0)
        {
            String s1;
            if(H == null)
                s1 = "";
            else
                s1 = H;
            contentvalues.put("reserved2", s1);
        }
        if((0x800 & m) != 0)
            contentvalues.put("reserved3", Integer.valueOf(I));
        if((0x1000 & m) != 0)
            contentvalues.put("reserved4", Integer.valueOf(J));
        return contentvalues;
    }

    public final Bitmap a(int i1)
    {
        Bitmap bitmap = null;
        Object obj = new FileInputStream((new StringBuilder()).append(K).append(f()).append("_").append(i1).toString());
        Bitmap bitmap1 = b.a.e.a(((InputStream) (obj)), MMActivity.k());
        FileNotFoundException filenotfoundexception;
        Exception exception;
        bitmap = bitmap1;
        IOException ioexception1;
        Exception exception1;
        try
        {
            ((FileInputStream) (obj)).close();
        }
        catch(IOException ioexception2) { }
        return bitmap;
        filenotfoundexception;
        obj = bitmap;
_L4:
        Log.a("MicroMsg.EmojiInfo", filenotfoundexception.getMessage());
        G = "";
        MMCore.f().l().a(this);
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception1) { }
        break MISSING_BLOCK_LABEL_59;
        exception1;
        obj = bitmap;
        exception = exception1;
_L2:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception) { }
        throw exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
        filenotfoundexception;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final Bitmap a(Context context)
    {
        Object obj = null;
        if(z != a && z != e && z != d) goto _L2; else goto _L1
_L1:
        String s1 = n();
        if(A != i) goto _L4; else goto _L3
_L3:
        if(!Util.i(o())) goto _L6; else goto _L5
_L5:
        s1 = n();
_L4:
        InputStream inputstream = context.getAssets().open((new StringBuilder()).append(w).append(s1).toString());
        Bitmap bitmap1;
        if(MMActivity.k() != 2F)
            break MISSING_BLOCK_LABEL_144;
        bitmap1 = b.a.e.a(inputstream, 2F);
        Exception exception;
        Object obj1;
        Object obj3;
        FileNotFoundException filenotfoundexception;
        Exception exception1;
        Object obj2 = bitmap1;
        IOException ioexception1;
        Bitmap bitmap;
        IOException ioexception4;
        String s2;
        IOException ioexception7;
        Bitmap bitmap2;
        IOException ioexception8;
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception5) { }
        return ((Bitmap) (obj2));
_L6:
        s2 = o();
        s1 = s2;
          goto _L4
        bitmap = b.a.e.a(inputstream, 1.5F);
        obj2 = bitmap;
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception4) { }
        break MISSING_BLOCK_LABEL_128;
        ioexception1;
        obj1 = obj;
_L13:
        if(obj1 != null)
            try
            {
                ((InputStream) (obj1)).close();
            }
            catch(IOException ioexception2) { }
_L7:
        obj2 = obj;
        break MISSING_BLOCK_LABEL_128;
        exception;
_L11:
        if(obj != null)
            try
            {
                ((InputStream) (obj)).close();
            }
            catch(IOException ioexception) { }
        throw exception;
_L2:
        obj3 = new FileInputStream((new StringBuilder()).append(K).append(f()).toString());
        bitmap2 = b.a.e.a(((InputStream) (obj3)), 1.5F);
        obj2 = bitmap2;
        try
        {
            ((FileInputStream) (obj3)).close();
        }
        // Misplaced declaration of an exception variable
        catch(IOException ioexception8) { }
        break MISSING_BLOCK_LABEL_128;
        filenotfoundexception;
        obj3 = obj;
_L10:
        Log.a("MicroMsg.EmojiInfo", filenotfoundexception.getMessage());
        if(obj3 != null)
            try
            {
                ((FileInputStream) (obj3)).close();
            }
            // Misplaced declaration of an exception variable
            catch(IOException ioexception7) { }
          goto _L7
        exception1;
_L9:
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            catch(IOException ioexception6) { }
        throw exception1;
        exception1;
        obj = obj3;
        if(true) goto _L9; else goto _L8
_L8:
        filenotfoundexception;
          goto _L10
        exception;
        obj = inputstream;
          goto _L11
        IOException ioexception3;
        ioexception3;
        obj1 = inputstream;
        if(true) goto _L13; else goto _L12
_L12:
    }

    public final void a(Cursor cursor)
    {
        x = cursor.getString(0);
        y = cursor.getString(1);
        z = cursor.getInt(2);
        A = cursor.getInt(3);
        B = cursor.getInt(4);
        C = cursor.getInt(5);
        D = cursor.getInt(6);
        E = cursor.getString(7);
        F = cursor.getString(8);
        G = cursor.getString(9);
        H = cursor.getString(10);
        I = cursor.getInt(11);
        J = cursor.getInt(12);
    }

    public final void a(String s1)
    {
        x = s1;
    }

    public final boolean a(byte abyte0[])
    {
        FileOperation.a(K, f(), "", abyte0);
        return true;
    }

    public final byte[] a(int i1, int j1)
    {
        boolean flag = false;
        if(i1 >= 0 && j1 >= 0)
            flag = true;
        Assert.assertTrue(flag);
        if(z != a && z != e && z != d) goto _L2; else goto _L1
_L1:
        InputStream inputstream = null;
        InputStream inputstream2 = MMCore.c().getAssets().open((new StringBuilder()).append(w).append(n()).toString());
        InputStream inputstream1;
        long l1;
        inputstream1 = inputstream2;
        l1 = i1;
        byte abyte0[];
        inputstream1.skip(l1);
        abyte0 = new byte[j1];
        inputstream1.read(abyte0, 0, j1);
        Exception exception;
        Exception exception1;
        IOException ioexception1;
        if(inputstream1 != null)
            try
            {
                inputstream1.close();
            }
            catch(IOException ioexception4) { }
        return abyte0;
        ioexception1;
_L6:
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception2) { }
_L2:
        abyte0 = FileOperation.a((new StringBuilder()).append(K).append(f()).toString(), C, j1);
        break MISSING_BLOCK_LABEL_124;
        exception;
        inputstream1 = inputstream;
        exception1 = exception;
_L4:
        if(inputstream1 != null)
            try
            {
                inputstream1.close();
            }
            catch(IOException ioexception) { }
        throw exception1;
        exception1;
        if(true) goto _L4; else goto _L3
_L3:
        IOException ioexception3;
        ioexception3;
        inputstream = inputstream1;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final void b(Context context)
    {
        int i1;
        InputStream inputstream;
        i1 = 0;
        if(z != a && z != e && z != d)
            break MISSING_BLOCK_LABEL_142;
        inputstream = null;
        int j1;
        try
        {
            inputstream = context.getAssets().open((new StringBuilder()).append(w).append(n()).toString());
            j1 = inputstream.available();
        }
        catch(IOException ioexception1)
        {
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                catch(IOException ioexception2) { }
            continue;
        }
        i1 = j1;
        Exception exception;
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception3) { }
        if(i1 != 0 && i1 != B)
        {
            B = i1;
            MMCore.f().l().a(this);
        }
        return;
        exception;
        if(inputstream != null)
            try
            {
                inputstream.close();
            }
            catch(IOException ioexception) { }
        throw exception;
label0:
        {
            for(i1 = FileOperation.a((new StringBuilder()).append(K).append(f()).toString()); true;)
                break MISSING_BLOCK_LABEL_82;

            break label0;
        }
    }

    public final void b(String s1)
    {
        y = s1;
    }

    public final boolean b()
    {
        boolean flag;
        if(z == a || z == e || z == d)
            flag = true;
        else
            flag = (new File((new StringBuilder()).append(K).append(f()).toString())).exists();
        return flag;
    }

    public final void c(int i1)
    {
        z = i1;
    }

    public final void c(String s1)
    {
        E = s1;
    }

    public final boolean c()
    {
        boolean flag;
        if(A != i || p().length() > 0 && !p().equals(v))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void d(int i1)
    {
        A = i1;
    }

    public final void d(String s1)
    {
        F = s1;
    }

    public final boolean d()
    {
        boolean flag;
        if(z == e || z == d)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void e(int i1)
    {
        B = i1;
    }

    public final void e(String s1)
    {
        G = s1;
    }

    public final boolean e()
    {
        boolean flag;
        if(A == i)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String f()
    {
        String s1;
        if(x == null)
            s1 = "";
        else
            s1 = x;
        return s1;
    }

    public final void f(int i1)
    {
        C = i1;
    }

    public final void g(int i1)
    {
        D = i1;
    }

    public final boolean g()
    {
        boolean flag;
        if(f().length() == 32)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final String h()
    {
        String s1;
        if(y == null)
            s1 = "";
        else
            s1 = y;
        return s1;
    }

    public final int i()
    {
        return z;
    }

    public final int j()
    {
        return A;
    }

    public final int k()
    {
        return B;
    }

    public final int l()
    {
        return C;
    }

    public final int m()
    {
        return D;
    }

    public final String n()
    {
        String s1;
        if(E == null)
            s1 = "";
        else
            s1 = E;
        return s1;
    }

    public final String o()
    {
        String s1;
        if(F == null)
            s1 = "";
        else
            s1 = F;
        return s1;
    }

    public final String p()
    {
        String s1;
        if(G == null)
            s1 = "";
        else
            s1 = G;
        return s1;
    }

    public static int a = 17;
    public static int b = 32;
    public static int c = 33;
    public static int d = 49;
    public static int e = 50;
    public static int f = 65;
    public static int g = 81;
    public static int h = 1;
    public static int i = 2;
    public static int j = 4;
    public static int k = 0;
    public static int l = 3;
    private static int n = 34;
    private static int o = 35;
    private static int p = 36;
    private static int q = 37;
    private static int r = 38;
    private static int s = 3;
    private static int t = 1;
    private static int u = 2;
    private static String v = "0_0";
    private static String w = "custom_emoji/";
    private int A;
    private int B;
    private int C;
    private int D;
    private String E;
    private String F;
    private String G;
    private String H;
    private int I;
    private int J;
    private final String K;
    private int m;
    private String x;
    private String y;
    private int z;

}
