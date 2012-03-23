// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelfriend;

import android.database.Cursor;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorage;
import com.tencent.mm.storagebase.SqliteDB;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelfriend:
//            FacebookFriend

public class FacebookFriendStorage extends MStorage
{

    public FacebookFriendStorage(SqliteDB sqlitedb)
    {
        b = sqlitedb;
    }

    public final Cursor a()
    {
        return b.a("select facebookfriend.fbid,facebookfriend.fbname,facebookfriend.fbimgkey,facebookfriend.status,facebookfriend.username,facebookfriend.nickname,facebookfriend.nicknamepyinitial,facebookfriend.nicknamequanpin,facebookfriend.sex,facebookfriend.personalcard,facebookfriend.province,facebookfriend.city,facebookfriend.signature,facebookfriend.alias,facebookfriend.type,facebookfriend.email from facebookfriend   order by status , nicknamepyinitial", null);
    }

    public final boolean a(FacebookFriend facebookfriend)
    {
        boolean flag;
        flag = true;
        boolean flag1;
        long l;
        String s;
        Cursor cursor;
        int i;
        android.content.ContentValues contentvalues1;
        if(facebookfriend.c() == -1)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue("Func Set always conv_flag == flag_all", flag1);
        l = facebookfriend.d();
        s = (new StringBuilder()).append("select facebookfriend.fbid,facebookfriend.fbname,facebookfriend.fbimgkey,facebookfriend.status,facebookfriend.username,facebookfriend.nickname,facebookfriend.nicknamepyinitial,facebookfriend.nicknamequanpin,facebookfriend.sex,facebookfriend.personalcard,facebookfriend.province,facebookfriend.city,facebookfriend.signature,facebookfriend.alias,facebookfriend.type,facebookfriend.email from facebookfriend   where facebookfriend.fbid = \"").append(Util.a((new StringBuilder()).append("").append(l).toString())).append("\"").toString();
        cursor = b.a(s, null);
        if(cursor.getCount() > 0)
            i = ((flag) ? 1 : 0);
        else
            i = 0;
        cursor.close();
        if(i != 0) goto _L2; else goto _L1
_L1:
        if(facebookfriend == null) goto _L4; else goto _L3
_L3:
        facebookfriend.b();
        contentvalues1 = facebookfriend.a();
        if((int)b.a("facebookfriend", "fbid", contentvalues1) == -1) goto _L4; else goto _L5
_L5:
        return flag;
_L4:
        flag = false;
        continue; /* Loop/switch isn't completed */
_L2:
        android.content.ContentValues contentvalues = facebookfriend.a();
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(facebookfriend.d()).toString();
        int j = sqlitedb.a("facebookfriend", contentvalues, "fbid=?", as);
        if(j > 0)
            c();
        if(j <= 0)
            flag = false;
        if(true) goto _L5; else goto _L6
_L6:
    }

    public final boolean b()
    {
        return b.b("delete from facebookfriend");
    }

    public static final String a[];
    private SqliteDB b;

    static 
    {
        String as[] = new String[1];
        as[0] = "CREATE TABLE IF NOT EXISTS facebookfriend ( fbid long  PRIMARY KEY , fbname text  , fbimgkey int  , status int  , username text  , nickname text  , nicknamepyinitial text  , nicknamequanpin text  , sex int  , personalcard int  , province text  , city text  , signature text  , alias text  , type int  , email text  ) ";
        a = as;
    }
}
