// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import com.tencent.mm.algorithm.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import com.tencent.mm.ui.MMActivity;
import java.io.IOException;
import java.io.InputStream;
import java.util.*;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import junit.framework.Assert;
import org.w3c.dom.*;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfo

public class EmojiInfoStorage extends MStorage
{

    public EmojiInfoStorage(SqliteDB sqlitedb, String s)
    {
        b = new LRUMap(20);
        String as[] = new String[16];
        as[0] = "c0059fa4f781a2a500ec03fade10e9b1";
        as[1] = "e6f269a19ff2fb61fdb847b39c86ebca";
        as[2] = "d629cb3c544fb719405f2b9f16ed6e6c";
        as[3] = "e2e2e96798bfbd55b35c3111d89b2e17";
        as[4] = "d13e21be9fd71777f727e0c34b0d3994";
        as[5] = "68f9864ca5c0a5d823ed7184e113a4aa";
        as[6] = "1483ce786912099e29551915e0bc2125";
        as[7] = "31574013280aac3897722cc7e3e49ee4";
        as[8] = "a00d1de64298d9eaa145ec848a9cc8af";
        as[9] = "6257411b26d5aa873762490769625bb9";
        as[10] = "5a7fc462d63ef845e6d99c1523bbc91e";
        as[11] = "72ebfa527add152c6872219044b151c3";
        as[12] = "6a9284bc5ce0bf059375e970a49fa2c5";
        as[13] = "6ae79b62bab61132981f1e85ad7070c4";
        as[14] = "aab84584b5a3f262286cb38bb107b53e";
        as[15] = "bb82ce58f5ed6fdd2b5e34fc2a8e347a";
        e = as;
        String as1[] = new String[16];
        as1[0] = "846f30447c5c4c9beefeb5a61bec0ba3";
        as1[1] = "5883b606506766a8733afde516166dad";
        as1[2] = "b25b5a719caeaca7525dd9d0ef0be4bb";
        as1[3] = "8690f2ec5676b9d2d70f7cba012e772e";
        as1[4] = "5ce1249c690762727b97efa75b685e2b";
        as1[5] = "b51826394461eb67e2ecbdd8900a25d9";
        as1[6] = "a13aac17bb8c649dc7797dd5ad0bf97f";
        as1[7] = "5462d752e528d1635816e38469ce4151";
        as1[8] = "ed18d9a312413ea32838bb4d7bb8317c";
        as1[9] = "3cdca9051658348b5a11ba14dc6a3aca";
        as1[10] = "0e1dcfa77dbbdfe984edd644cfb5da79";
        as1[11] = "7590a6e186522063b994eaf8f45673bf";
        as1[12] = "1280edfca8cb1dcf78e44789358e35d6";
        as1[13] = "c6345f716d706b8b9df53b0b6fff82cd";
        as1[14] = "ca17f472025f0943917b443faeaee999";
        as1[15] = "9cf03d450b27e8011bba02a652bc357a";
        f = as1;
        c = sqlitedb;
        d = s;
    }

    private EmojiInfo a(int i, int j, String s)
    {
        String s1 = MD5.a((new StringBuilder()).append(s).append(i).toString().getBytes());
        boolean flag;
        EmojiInfo emojiinfo;
        if(s1 != null && s1.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        emojiinfo = d(s1);
        if(emojiinfo == null)
        {
            emojiinfo = new EmojiInfo(d);
            emojiinfo.a(s1);
            emojiinfo.d(s);
            emojiinfo.c(i);
            emojiinfo.d(j);
            emojiinfo.g(EmojiInfo.l);
            b(emojiinfo);
        }
        return emojiinfo;
    }

    private List a(InputStream ainputstream[])
    {
        ArrayList arraylist;
        DocumentBuilderFactory documentbuilderfactory;
        arraylist = new ArrayList();
        documentbuilderfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentbuilder;
        int i;
        int j;
        documentbuilder = documentbuilderfactory.newDocumentBuilder();
        i = ainputstream.length;
        j = 0;
_L11:
        if(j >= i) goto _L2; else goto _L1
_L1:
        InputStream inputstream = ainputstream[j];
        if(inputstream == null) goto _L4; else goto _L3
_L3:
        NodeList nodelist;
        int k;
        nodelist = documentbuilder.parse(inputstream).getDocumentElement().getElementsByTagName("catalog");
        k = 0;
_L10:
        if(k >= nodelist.getLength()) goto _L4; else goto _L5
_L5:
        int l;
        NodeList nodelist1;
        int i1;
        EmojiInfo emojiinfo = new EmojiInfo(d);
        Element element = (Element)nodelist.item(k);
        l = Integer.decode(element.getAttribute("id")).intValue();
        emojiinfo.a(element.getAttribute("md5"));
        if(emojiinfo.g())
        {
            emojiinfo.c(l);
            emojiinfo.d(Integer.decode(element.getAttribute("type")).intValue());
            emojiinfo.c(element.getAttribute("name"));
            arraylist.add(emojiinfo);
        }
        nodelist1 = element.getElementsByTagName("emoji");
        i1 = 0;
_L13:
        if(i1 >= nodelist1.getLength()) goto _L7; else goto _L6
_L6:
        String s;
        String s1;
        EmojiInfo emojiinfo1 = new EmojiInfo(d);
        Element element1 = (Element)nodelist1.item(i1);
        emojiinfo1.a(element1.getAttribute("md5"));
        if(!emojiinfo1.g())
            break MISSING_BLOCK_LABEL_445;
        emojiinfo1.c(l);
        emojiinfo1.c(element1.getAttribute("name"));
        emojiinfo1.d(Integer.decode(element1.getAttribute("type")).intValue());
        org.w3c.dom.Node node = element1.getFirstChild();
        if(node instanceof CharacterData)
            s = ((CharacterData)node).getData();
        else
            s = "";
        if(emojiinfo1.j() != EmojiInfo.j) goto _L9; else goto _L8
_L8:
        s1 = new String(Base64.a(s));
_L12:
        emojiinfo1.d(s1);
        arraylist.add(emojiinfo1);
        break MISSING_BLOCK_LABEL_445;
_L7:
        k++;
          goto _L10
_L4:
        j++;
          goto _L11
        Exception exception;
        exception;
        Log.a("MicroMsg.EmojiInfoStorage", (new StringBuilder()).append("parse xml error; ").append(exception.getMessage()).toString());
_L2:
        return arraylist;
_L9:
        s1 = s;
          goto _L12
        i1++;
          goto _L13
    }

    private boolean b(EmojiInfo emojiinfo)
    {
        boolean flag = true;
        boolean flag1;
        android.content.ContentValues contentvalues;
        long l;
        if(emojiinfo != null && emojiinfo.g())
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        contentvalues = emojiinfo.a();
        l = c.b("emojiinfo", "md5", contentvalues);
        if(l != -1L)
            b(emojiinfo.f());
        if(l < 0L)
            flag = false;
        return flag;
    }

    private boolean d(int i)
    {
        boolean flag = true;
        SqliteDB sqlitedb = c;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        if(sqlitedb.a("emojiinfo", "catalog=?", as) < 0)
            flag = false;
        return flag;
    }

    private String f(String s)
    {
        if(MMActivity.k() == 2F && ChannelUtil.a()) goto _L2; else goto _L1
_L1:
        return s;
_L2:
        int i = 0;
        do
        {
            if(i < e.length)
            {
label0:
                {
                    if(!e[i].equals(s))
                        break label0;
                    s = f[i];
                }
            }
            if(true)
                continue;
            i++;
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final EmojiInfo a(String s, String s1, int i, int j, int k)
    {
        boolean flag;
        EmojiInfo emojiinfo;
        if(s != null && s.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        emojiinfo = new EmojiInfo(d);
        emojiinfo.a(s);
        emojiinfo.b(s1);
        emojiinfo.c(i);
        emojiinfo.d(j);
        emojiinfo.e(k);
        emojiinfo.g(EmojiInfo.k);
        if(!b(emojiinfo))
            emojiinfo = null;
        return emojiinfo;
    }

    public final List a()
    {
        ArrayList arraylist = new ArrayList();
        SqliteDB sqlitedb = c;
        String as[] = new String[2];
        as[0] = (new StringBuilder()).append("").append(EmojiInfo.a).toString();
        as[1] = (new StringBuilder()).append("").append(EmojiInfo.g).toString();
        Cursor cursor = sqlitedb.a("emojiinfo", "catalog=? OR catalog=?", as, null);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            do
            {
                EmojiInfo emojiinfo = new EmojiInfo(d);
                emojiinfo.a(cursor);
                arraylist.add(emojiinfo);
            } while(cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final List a(int i)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor = b(i);
        if(cursor.getCount() > 0)
        {
            cursor.moveToFirst();
            do
            {
                EmojiInfo emojiinfo = new EmojiInfo(d);
                emojiinfo.a(cursor);
                arraylist.add(emojiinfo);
            } while(cursor.moveToNext());
        }
        cursor.close();
        return arraylist;
    }

    public final void a(List list)
    {
        if(list != null && list.size() > 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i = 0;
_L6:
        if(i >= list.size()) goto _L1; else goto _L3
_L3:
        Map map = Util.b((String)list.get(i), "EmojiArtCatalog");
        if(map == null) goto _L5; else goto _L4
_L4:
        int j;
        EmojiInfo emojiinfo;
        EmojiInfo emojiinfo1;
        int k;
        int l;
        j = -1 + Integer.parseInt((String)map.get(".EmojiArtCatalog.$id"));
        String s = (String)map.get(".EmojiArtCatalog.$name");
        Log.e("MicroMsg.EmojiInfoStorage", (new StringBuilder()).append("art eomji updated, name:").append(s).toString());
        String s1 = new String(Base64.a((String)map.get(".EmojiArtCatalog.Icon")));
        Iterator iterator = a(EmojiInfo.b).iterator();
        do
        {
            if(!iterator.hasNext())
                break MISSING_BLOCK_LABEL_563;
            emojiinfo = (EmojiInfo)iterator.next();
        } while(!emojiinfo.n().equals((new StringBuilder()).append("").append(j).toString()));
        StringBuilder stringbuilder;
        String s3;
        String s4;
        String s5;
        String s6;
        EmojiInfo emojiinfo2;
        int i1;
        if(emojiinfo.o().length() > 0)
            i1 = Integer.parseInt(emojiinfo.o());
        else
            i1 = 0;
        if(i1 != EmojiInfo.c)
            d(i1);
_L7:
        if(emojiinfo == null)
            emojiinfo1 = a(EmojiInfo.b, EmojiInfo.h, (new StringBuilder()).append("").append(1 + (j + EmojiInfo.b)).toString());
        else
            emojiinfo1 = emojiinfo;
        stringbuilder = (new StringBuilder()).append("");
        if(j >= 6)
            k = 5;
        else
            k = j;
        emojiinfo1.c(stringbuilder.append(k).toString());
        emojiinfo1.e((new StringBuilder()).append(s).append(";").append("icon:").append(s1).toString());
        a(emojiinfo1);
        l = 0;
        do
        {
            if(l >= 1000)
                break;
            String s2;
            if(l == 0)
                s2 = "";
            else
                s2 = (new StringBuilder()).append("").append(l).toString();
            s3 = (new StringBuilder()).append(".EmojiArtCatalog.EmojiArt").append(s2).toString();
            s4 = (String)map.get(s3);
            if(s4 == null)
                break;
            s5 = (String)map.get((new StringBuilder()).append(s3).append(".$name").toString());
            s6 = new String(Base64.a(s4));
            emojiinfo2 = a(Integer.parseInt(emojiinfo1.o()), EmojiInfo.j, s6);
            emojiinfo2.e(s5);
            a(emojiinfo2);
            l++;
        } while(true);
_L5:
        i++;
          goto _L6
        emojiinfo = null;
          goto _L7
    }

    public final boolean a(Context context)
    {
        InputStream inputstream;
        int i;
        inputstream = null;
        EmojiInfo emojiinfo = d("86cb157e9c44b2c9934e4e430790776d");
        EmojiInfo emojiinfo1 = d("68f9864ca5c0a5d823ed7184e113a4aa");
        EmojiInfo emojiinfo2 = d("846f30447c5c4c9beefeb5a61bec0ba3");
        i = c(EmojiInfo.b);
        if(emojiinfo != null || emojiinfo1 != null && emojiinfo1.o().length() == 0 || ChannelUtil.a() && emojiinfo2 == null || i <= 2)
        {
            d(EmojiInfo.a);
            d(EmojiInfo.e);
            d(EmojiInfo.d);
        }
        if(c(EmojiInfo.a) == 0) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        InputStream inputstream2;
        Log.d("MicroMsg.EmojiInfoStorage", "init start.");
        inputstream2 = context.getAssets().open("custom_emoji/manifest.xml");
        InputStream inputstream1;
        inputstream1 = inputstream2;
        if(i != 0)
            break MISSING_BLOCK_LABEL_149;
        inputstream = context.getAssets().open("art_emoji/manifest.xml");
        InputStream ainputstream[] = new InputStream[2];
        ainputstream[0] = inputstream1;
        ainputstream[1] = inputstream;
        List list = a(ainputstream);
        if(list != null && list.size() > 0)
        {
            for(Iterator iterator = list.iterator(); iterator.hasNext(); b((EmojiInfo)iterator.next()));
        }
          goto _L3
        IOException ioexception;
        ioexception;
_L6:
        Log.a("MicroMsg.EmojiInfoStorage", (new StringBuilder()).append("init db error. ").append(ioexception.getMessage()).toString());
        if(inputstream1 != null && inputstream != null)
            try
            {
                inputstream1.close();
                inputstream.close();
            }
            catch(Exception exception2) { }
          goto _L1
_L3:
        Log.d("MicroMsg.EmojiInfoStorage", "init end.");
        if(inputstream1 != null && inputstream != null)
            try
            {
                inputstream1.close();
                inputstream.close();
            }
            catch(Exception exception3) { }
          goto _L1
        Exception exception;
        exception;
        inputstream1 = inputstream;
_L5:
        if(inputstream1 != null && inputstream != null)
            try
            {
                inputstream1.close();
                inputstream.close();
            }
            catch(Exception exception1) { }
        throw exception;
        exception;
        if(true) goto _L5; else goto _L4
_L4:
        ioexception;
        inputstream1 = inputstream;
          goto _L6
    }

    public final boolean a(EmojiInfo emojiinfo)
    {
        boolean flag = true;
        boolean flag1;
        SqliteDB sqlitedb;
        android.content.ContentValues contentvalues;
        String as[];
        int i;
        if(emojiinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("emoji info null", flag1);
        Assert.assertTrue("emoji info invalid", emojiinfo.g());
        sqlitedb = c;
        contentvalues = emojiinfo.a();
        as = new String[flag];
        as[0] = emojiinfo.f();
        i = sqlitedb.a("emojiinfo", contentvalues, "md5=?", as);
        if(i > 0)
            b(emojiinfo.f());
        if(i <= 0)
            flag = false;
        return flag;
    }

    public final boolean a(String s)
    {
        boolean flag;
        Cursor cursor;
        flag = false;
        String s1 = (new StringBuilder()).append("select content from emojiinfo where type = ").append(EmojiInfo.j).toString();
        cursor = c.a(s1, null);
        if(cursor != null && cursor.getCount() != 0) goto _L2; else goto _L1
_L1:
        Log.e("MicroMsg.EmojiInfoStorage", "isArtEmojiExist false");
        if(cursor != null)
            cursor.close();
_L4:
        return flag;
_L2:
        do
        {
            if(!cursor.moveToNext())
                break;
            if(!s.equals(cursor.getString(flag)))
                continue;
            flag = true;
            break;
        } while(true);
        Log.e("MicroMsg.EmojiInfoStorage", (new StringBuilder()).append("isArtEmojiExist ").append(flag).toString());
        cursor.close();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final Cursor b(int i)
    {
        SqliteDB sqlitedb = c;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        return sqlitedb.a("emojiinfo", "catalog=?", as, null);
    }

    public final int c(int i)
    {
        SqliteDB sqlitedb = c;
        String as[] = new String[1];
        as[0] = (new StringBuilder()).append("").append(i).toString();
        Cursor cursor = sqlitedb.a("select count(*) from emojiinfo where catalog= ?", as);
        cursor.moveToFirst();
        int j = cursor.getInt(0);
        cursor.close();
        return j;
    }

    public final EmojiInfo c(String s)
    {
        return a(EmojiInfo.c, EmojiInfo.j, s);
    }

    public final EmojiInfo d(String s)
    {
        EmojiInfo emojiinfo = null;
        if(s != null && s.length() == 32)
        {
            String s1 = f(s);
            SqliteDB sqlitedb = c;
            String as[] = new String[1];
            as[0] = s1;
            Cursor cursor = sqlitedb.a("emojiinfo", "md5=?", as, emojiinfo);
            if(cursor.getCount() > 0)
            {
                cursor.moveToFirst();
                emojiinfo = new EmojiInfo(d);
                emojiinfo.a(cursor);
            }
            cursor.close();
        }
        return emojiinfo;
    }

    public final boolean e(String s)
    {
        boolean flag = true;
        boolean flag1;
        String s1;
        SqliteDB sqlitedb;
        String as[];
        if(s != null && s.length() == 32)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        s1 = f(s);
        sqlitedb = c;
        as = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s1).toString();
        if(sqlitedb.a("emojiinfo", "md5=?", as) <= 0)
            flag = false;
        return flag;
    }

    public static final String a[];
    private LRUMap b;
    private SqliteDB c;
    private String d;
    private String e[];
    private String f[];

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS emojiinfo ( md5 TEXT PRIMARY KEY COLLATE NOCASE, svrid TEXT, catalog INT, type INT, size INT, start INT, state INT, name TEXT, content TEXT, reserved1 TEXT, reserved2 TEXT, reserved3 INT, reserved4 INT ) ";
        as[1] = "CREATE INDEX IF NOT EXISTS emojiGroupIndex ON emojiinfo ( catalog ) ";
        a = as;
    }
}
