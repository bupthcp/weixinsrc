// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.algorithm.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorageEvent;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.File;
import java.io.RandomAccessFile;
import java.text.SimpleDateFormat;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoInfo

public class VideoInfoStorage
{

    public VideoInfoStorage(SqliteDB sqlitedb, String s)
    {
        c = null;
        d = new _cls1();
        b = sqlitedb;
        c = s;
    }

    public static int a(String s, int i, byte abyte0[])
    {
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        int j;
        Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" invalid fileName").toString());
        j = 0 - CodeInfo.b();
_L4:
        return j;
_L2:
        com.tencent.mm.algorithm.CodeInfo.TestTime testtime;
        if(i < 0)
        {
            Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append("[").append(s).append("] ").append(" invalid startOffset:").append(i).toString());
            j = 0 - CodeInfo.b();
            continue; /* Loop/switch isn't completed */
        }
        if(Util.b(abyte0))
        {
            Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append("[").append(s).append("] ").append(" invalid writeBuf").toString());
            j = 0 - CodeInfo.b();
            continue; /* Loop/switch isn't completed */
        }
        testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        long l;
        long l1;
        long l2;
        long l3;
        RandomAccessFile randomaccessfile = new RandomAccessFile(s, "rw");
        l = testtime.b();
        randomaccessfile.seek(i);
        l1 = testtime.b();
        randomaccessfile.write(abyte0, 0, abyte0.length);
        l2 = testtime.b();
        j = (int)randomaccessfile.getFilePointer();
        randomaccessfile.close();
        l3 = testtime.b();
        Log.d("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("FIN:").append(CodeInfo.a()).append("[").append(s).append("] ").append(" Offset:").append(i).append(" buf:").append(abyte0.length).toString());
        Log.d("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("FIN:").append(CodeInfo.a()).append("[").append(s).append("] open:").append(l).append(" seek:").append(l1).append(" write:").append(l2).append(" close:").append(l3).toString());
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append("[").append(s).append("] ").append("\t\tOffset:").append(i).append(" failed:[").append(exception.getMessage()).append("]").toString());
        j = 0 - CodeInfo.b();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static ReadRes a(String s, int i)
    {
        int j;
        ReadRes readres;
        j = 0;
        readres = new ReadRes();
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" invalid fileName").toString());
        readres.d = 0 - CodeInfo.b();
_L4:
        return readres;
_L2:
        com.tencent.mm.algorithm.CodeInfo.TestTime testtime;
        if(i < 0)
        {
            Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append("[").append(s).append("] ").append(" invalid readOffset:").append(i).toString());
            readres.d = 0 - CodeInfo.b();
            continue; /* Loop/switch isn't completed */
        }
        testtime = new com.tencent.mm.algorithm.CodeInfo.TestTime();
        readres.a = new byte[8000];
        long l;
        long l1;
        int k;
        long l2;
        long l3;
        RandomAccessFile randomaccessfile = new RandomAccessFile(s, "r");
        l = testtime.b();
        randomaccessfile.seek(i);
        l1 = testtime.b();
        k = randomaccessfile.read(readres.a, 0, 8000);
        l2 = testtime.b();
        randomaccessfile.close();
        l3 = testtime.b();
        Exception exception;
        if(k >= 0)
            j = k;
        readres.b = j;
        readres.c = j + i;
        Log.d("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("FIN:").append(CodeInfo.a()).append("[").append(s).append("] ").append(" Offset:").append(i).append(" readlen:").append(8000).toString());
        Log.d("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("FIN:").append(CodeInfo.a()).append("[").append(s).append("] open:").append(l).append(" seek:").append(l1).append(" write:").append(l2).append(" close:").append(l3).toString());
        continue; /* Loop/switch isn't completed */
        exception;
        Log.a("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append("[").append(s).append("] ").append("\t\tOffset:").append(readres.c).append(" failed:[").append(exception.getMessage()).append("]").toString());
        readres.d = 0 - CodeInfo.b();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String c(String s)
    {
        long l = System.currentTimeMillis();
        String s1 = (new SimpleDateFormat("HHmmssddMMyy")).format(new Date(l));
        if(s != null && s.length() > 1)
            s1 = (new StringBuilder()).append(s1).append(MD5.a(s.getBytes()).substring(0, 7)).toString();
        String s2 = (new StringBuilder()).append(s1).append(l % 10000L).toString();
        StringBuilder stringbuilder = (new StringBuilder()).append(s2);
        long l1 = e;
        e = 1L + l1;
        return stringbuilder.append(l1).toString();
    }

    public static int f(String s)
    {
        int i = 0;
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        File file = new File(s);
        if(file.exists())
        {
            int j = (int)file.length();
            if(j > 0)
                i = j;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final VideoInfo a(int i)
    {
        Object obj = null;
        String s = (new StringBuilder()).append("select videoinfo2.filename,videoinfo2.clientid,videoinfo2.msgsvrid,videoinfo2.netoffset,videoinfo2.filenowsize,videoinfo2.totallen,videoinfo2.thumbnetoffset,videoinfo2.thumblen,videoinfo2.status,videoinfo2.createtime,videoinfo2.lastmodifytime,videoinfo2.downloadtime,videoinfo2.videolength,videoinfo2.msglocalid,videoinfo2.nettimes,videoinfo2.cameratype,videoinfo2.user,videoinfo2.human,videoinfo2.reserved1,videoinfo2.reserved2,videoinfo2.reserved3,videoinfo2.reserved4 from videoinfo2  ").append(" WHERE msgsvrid=").append(i).toString();
        Cursor cursor = b.a(s, ((String []) (obj)));
        if(cursor.moveToFirst())
        {
            obj = new VideoInfo();
            ((VideoInfo) (obj)).a(cursor);
        }
        cursor.close();
        return ((VideoInfo) (obj));
    }

    public final VideoInfo a(String s)
    {
        VideoInfo videoinfo = null;
        String s1 = (new StringBuilder()).append("select videoinfo2.filename,videoinfo2.clientid,videoinfo2.msgsvrid,videoinfo2.netoffset,videoinfo2.filenowsize,videoinfo2.totallen,videoinfo2.thumbnetoffset,videoinfo2.thumblen,videoinfo2.status,videoinfo2.createtime,videoinfo2.lastmodifytime,videoinfo2.downloadtime,videoinfo2.videolength,videoinfo2.msglocalid,videoinfo2.nettimes,videoinfo2.cameratype,videoinfo2.user,videoinfo2.human,videoinfo2.reserved1,videoinfo2.reserved2,videoinfo2.reserved3,videoinfo2.reserved4 from videoinfo2   where videoinfo2.filename = \"").append(Util.a((new StringBuilder()).append("").append(s).toString())).append("\"").toString();
        Cursor cursor = b.a(s1, videoinfo);
        if(cursor != null)
        {
            if(cursor.moveToFirst())
            {
                videoinfo = new VideoInfo();
                videoinfo.a(cursor);
            }
            cursor.close();
        }
        return videoinfo;
    }

    public final List a()
    {
        Object obj = null;
        String s = (new StringBuilder()).append("select videoinfo2.filename,videoinfo2.clientid,videoinfo2.msgsvrid,videoinfo2.netoffset,videoinfo2.filenowsize,videoinfo2.totallen,videoinfo2.thumbnetoffset,videoinfo2.thumblen,videoinfo2.status,videoinfo2.createtime,videoinfo2.lastmodifytime,videoinfo2.downloadtime,videoinfo2.videolength,videoinfo2.msglocalid,videoinfo2.nettimes,videoinfo2.cameratype,videoinfo2.user,videoinfo2.human,videoinfo2.reserved1,videoinfo2.reserved2,videoinfo2.reserved3,videoinfo2.reserved4 from videoinfo2  ").append(" WHERE status<197  order by downloadtime desc").toString();
        Cursor cursor = b.a(s, ((String []) (obj)));
        int i = cursor.getCount();
        Log.d("MicroMsg.VideoInfoStorage", (new StringBuilder()).append("getUnfinishInfo resCount:").append(i).toString());
        if(i == 0)
        {
            cursor.close();
        } else
        {
            obj = new ArrayList();
            for(int j = 0; j < i; j++)
            {
                cursor.moveToPosition(j);
                VideoInfo videoinfo = new VideoInfo();
                videoinfo.a(cursor);
                ((List) (obj)).add(videoinfo);
            }

            cursor.close();
        }
        return ((List) (obj));
    }

    public final void a(IOnVideoInfoChanged ionvideoinfochanged)
    {
        d.a(ionvideoinfochanged);
    }

    public final boolean a(VideoInfo videoinfo)
    {
        boolean flag = false;
        if(videoinfo != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        videoinfo.a(-1);
        ContentValues contentvalues = videoinfo.a();
        if((int)b.a("videoinfo2", "filename", contentvalues) != -1)
        {
            d.b(videoinfo.c());
            d.a();
            flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final String b()
    {
        return c;
    }

    public final void b(IOnVideoInfoChanged ionvideoinfochanged)
    {
        d.c(ionvideoinfochanged);
    }

    public final boolean b(VideoInfo videoinfo)
    {
        boolean flag;
        ContentValues contentvalues;
        flag = true;
        boolean flag1;
        boolean flag2;
        if(videoinfo != null)
            flag1 = flag;
        else
            flag1 = false;
        Assert.assertTrue(flag1);
        if(videoinfo.c().length() > 0)
            flag2 = flag;
        else
            flag2 = false;
        Assert.assertTrue(flag2);
        contentvalues = videoinfo.a();
        if(contentvalues.size() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.VideoInfoStorage", "update failed, no values set");
_L6:
        flag = false;
_L4:
        return flag;
_L2:
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = videoinfo.c();
        if(sqlitedb.a("videoinfo2", contentvalues, "filename= ?", as) <= 0)
            continue; /* Loop/switch isn't completed */
        d.b(videoinfo.c());
        d.a();
        if(true) goto _L4; else goto _L3
_L3:
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final boolean b(String s)
    {
        boolean flag = true;
        SqliteDB sqlitedb = b;
        String as[] = new String[flag];
        as[0] = (new StringBuilder()).append("").append(s).toString();
        if(sqlitedb.a("videoinfo2", "filename= ?", as) > 0)
        {
            d.b(s);
            d.a();
        } else
        {
            flag = false;
        }
        return flag;
    }

    public final String d(String s)
    {
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        return s1;
_L2:
        s1 = (new StringBuilder()).append(c).append(s).toString();
        if(!FileOperation.c(s1))
            s1 = (new StringBuilder()).append(s1).append(".mp4").toString();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final String e(String s)
    {
        String s1;
        if(Util.i(s))
            s1 = null;
        else
            s1 = (new StringBuilder()).append(c).append(s).append(".jpg").toString();
        return s1;
    }

    public static final String a[];
    private static long e = 0L;
    private SqliteDB b;
    private String c;
    private MStorageEvent d;

    static 
    {
        String as[] = new String[4];
        as[0] = "CREATE TABLE IF NOT EXISTS videoinfo2 ( filename text  PRIMARY KEY , clientid text  , msgsvrid int  , netoffset int  , filenowsize int  , totallen int  , thumbnetoffset int  , thumblen int  , status int  , createtime long  , lastmodifytime long  , downloadtime long  , videolength int  , msglocalid int  , nettimes int  , cameratype int  , user text  , human text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[1] = "CREATE TABLE IF NOT EXISTS videoinfo ( filename text  PRIMARY KEY , clientid text  , msgsvrid int  , netoffset int  , filenowsize int  , totallen int  , thumbnetoffset int  , thumblen int  , status int  , createtime long  , lastmodifytime long  , downloadtime long  , videolength int  , msglocalid int  , nettimes int  , cameratype int  , user text  , human text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ";
        as[2] = "insert into videoinfo2 select * from videoinfo ;";
        as[3] = "delete from videoinfo ;";
        a = as;
    }

    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IOnVideoInfoChanged)obj).a((String)obj1);
        }

        private VideoInfoStorage a;

        _cls1()
        {
            a = VideoInfoStorage.this;
            super();
        }

        private class IOnVideoInfoChanged
        {

            public abstract void a(String s);
        }

    }


    private class ReadRes
    {

        public byte a[];
        public int b;
        public int c;
        public int d;

        public ReadRes()
        {
            a = null;
            b = 0;
            c = 0;
            d = 0;
        }
    }

}
