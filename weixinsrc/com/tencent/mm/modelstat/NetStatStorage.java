// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelstat;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.SqliteDB;
import java.io.RandomAccessFile;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.modelstat:
//            NetStatInfo

public class NetStatStorage
{

    public NetStatStorage(SqliteDB sqlitedb, String s)
    {
        b = null;
        c = null;
        b = sqlitedb;
        c = s;
    }

    private long b(NetStatInfo netstatinfo)
    {
        Assert.assertNotNull(netstatinfo);
        boolean flag;
        ContentValues contentvalues;
        long l;
        if(netstatinfo.e() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        contentvalues = netstatinfo.d();
        if(contentvalues.size() > 0)
            l = b.a("netstat", "id", contentvalues);
        else
            l = -1L;
        return l;
    }

    private void c()
    {
        NetStatInfo netstatinfo = e();
        if(netstatinfo != null)
            c(netstatinfo);
        d();
        if(e.a())
        {
            c(e);
            e.b();
        }
    }

    private void c(NetStatInfo netstatinfo)
    {
        Assert.assertNotNull(netstatinfo);
        if(netstatinfo.e() <= 0)
            netstatinfo.b((int)(Util.d() / 0x5265c00L));
        NetStatInfo netstatinfo1 = d(netstatinfo.e());
        if(netstatinfo1 != null)
        {
            netstatinfo1.a(netstatinfo);
            Log.e("MicroMsg.NetStatStorage", (new StringBuilder()).append("update append ").append(netstatinfo1).toString());
            int i = netstatinfo.e();
            ContentValues contentvalues = netstatinfo1.d();
            if(contentvalues.size() > 0)
                b.a("netstat", contentvalues, (new StringBuilder()).append("peroid=").append(i).toString(), null);
        } else
        {
            netstatinfo.a(2 | netstatinfo.c());
            Log.e("MicroMsg.NetStatStorage", (new StringBuilder()).append("insert append ").append(netstatinfo).toString());
            b(netstatinfo);
        }
    }

    private int d(NetStatInfo netstatinfo)
    {
        byte byte0 = 0;
        if(netstatinfo.e() <= 0)
            netstatinfo.b((int)(Util.d() / 0x5265c00L));
        NetStatInfo netstatinfo1 = e();
        int ai1[];
        if(netstatinfo1 != null && netstatinfo1.e() != netstatinfo.e())
            c(netstatinfo1);
        else
        if(netstatinfo1 != null)
            netstatinfo.a(netstatinfo1);
        if(netstatinfo == null)
        {
            ai1 = null;
        } else
        {
            int ai[] = new int[25];
            ai[byte0] = netstatinfo.e();
            ai[1] = netstatinfo.f();
            ai[2] = netstatinfo.g();
            ai[3] = netstatinfo.h();
            ai[4] = netstatinfo.i();
            ai[5] = netstatinfo.j();
            ai[6] = netstatinfo.k();
            ai[7] = netstatinfo.l();
            ai[8] = netstatinfo.m();
            ai[9] = netstatinfo.n();
            ai[10] = netstatinfo.o();
            ai[11] = netstatinfo.p();
            ai[12] = netstatinfo.q();
            ai[13] = netstatinfo.r();
            ai[14] = netstatinfo.s();
            ai[15] = netstatinfo.t();
            ai[16] = netstatinfo.u();
            ai[17] = netstatinfo.v();
            ai[18] = netstatinfo.w();
            ai[19] = netstatinfo.x();
            ai[20] = netstatinfo.y();
            ai[21] = netstatinfo.z();
            ai[22] = netstatinfo.A();
            ai[23] = netstatinfo.B();
            ai[24] = netstatinfo.C();
            ai1 = ai;
        }
        if(ai1 == null || ai1.length != 25)
            byte0 = -1;
        else
            try
            {
                RandomAccessFile randomaccessfile = new RandomAccessFile((new StringBuilder()).append(c).append(d).toString(), "rw");
                randomaccessfile.setLength(0L);
                for(int i = byte0; i < 25; i++)
                    randomaccessfile.writeInt(ai1[i]);

                randomaccessfile.close();
            }
            catch(Exception exception)
            {
                byte0 = -2;
            }
        return byte0;
    }

    private NetStatInfo d(int i)
    {
        String s = null;
        Cursor cursor = b.a("netstat", (new StringBuilder()).append("peroid = ").append(i).toString(), s, s);
        if(cursor.moveToFirst())
        {
            s = new NetStatInfo();
            s.a(cursor);
        }
        cursor.close();
        return s;
    }

    private void d()
    {
        FileOperation.d((new StringBuilder()).append(c).append(d).toString());
    }

    private NetStatInfo e()
    {
        int i;
        NetStatInfo netstatinfo;
        i = 0;
        netstatinfo = null;
        NetStatInfo netstatinfo1;
        RandomAccessFile randomaccessfile = new RandomAccessFile((new StringBuilder()).append(c).append(d).toString(), "rw");
        if(randomaccessfile.length() != 100L)
        {
            randomaccessfile.setLength(0L);
            randomaccessfile.close();
            break MISSING_BLOCK_LABEL_361;
        }
        int ai[] = new int[25];
        for(; i < 25; i++)
            ai[i] = randomaccessfile.readInt();

        randomaccessfile.close();
        if(ai.length != 25)
            break MISSING_BLOCK_LABEL_361;
        netstatinfo1 = new NetStatInfo();
        netstatinfo1.b(ai[0]);
        netstatinfo1.c(ai[1]);
        netstatinfo1.d(ai[2]);
        netstatinfo1.e(ai[3]);
        netstatinfo1.f(ai[4]);
        netstatinfo1.g(ai[5]);
        netstatinfo1.h(ai[6]);
        netstatinfo1.i(ai[7]);
        netstatinfo1.j(ai[8]);
        netstatinfo1.k(ai[9]);
        netstatinfo1.l(ai[10]);
        netstatinfo1.m(ai[11]);
        netstatinfo1.n(ai[12]);
        netstatinfo1.o(ai[13]);
        netstatinfo1.p(ai[14]);
        netstatinfo1.q(ai[15]);
        netstatinfo1.r(ai[16]);
        netstatinfo1.s(ai[17]);
        netstatinfo1.t(ai[18]);
        netstatinfo1.u(ai[19]);
        netstatinfo1.v(ai[20]);
        netstatinfo1.w(ai[21]);
        netstatinfo1.x(ai[22]);
        netstatinfo1.y(ai[23]);
        netstatinfo1.z(ai[24]);
        netstatinfo = netstatinfo1;
        break MISSING_BLOCK_LABEL_361;
        Exception exception;
        exception;
        return netstatinfo;
    }

    public final int a(NetStatInfo netstatinfo)
    {
        if(e.a(netstatinfo))
        {
            d(e);
            e.b();
        }
        return 0;
    }

    public final NetStatInfo a(int i)
    {
        c();
        return d(i);
    }

    public final void a()
    {
        int i = (int)(Util.f() / 0x5265c00L);
        if(a(i) == null)
        {
            NetStatInfo netstatinfo = new NetStatInfo();
            netstatinfo.b(i);
            b(netstatinfo);
        }
    }

    public final long b()
    {
        c();
        int i = (int)(Util.f() / 0x5265c00L);
        Cursor cursor = b.a("SELECT peroid FROM netstat  WHERE peroid <  ( SELECT MAX ( peroid ) FROM netstat)", null);
        if(cursor.moveToFirst())
            i = cursor.getInt(cursor.getColumnIndex("peroid"));
        cursor.close();
        return 0x5265c00L * (long)i;
    }

    public final void b(int i)
    {
        d();
        b.a("netstat", null, null);
        NetStatInfo netstatinfo = new NetStatInfo();
        netstatinfo.b(i);
        b(netstatinfo);
    }

    public final NetStatInfo c(int i)
    {
        Object obj = null;
        c();
        String s = (new StringBuilder()).append("SELECT MAX( id), MAX( peroid), SUM( textCountIn), SUM( textBytesIn), SUM( imageCountIn), SUM( imageBytesIn), SUM( voiceCountIn), SUM( voiceBytesIn), SUM( videoCountIn), SUM( videoBytesIn), SUM( mobileBytesIn), SUM( wifiBytesIn), SUM( sysMobileBytesIn), SUM( sysWifiBytesIn), SUM( textCountOut), SUM( textBytesOut), SUM( imageCountOut), SUM( imageBytesOut), SUM( voiceCountOut), SUM( voiceBytesOut), SUM( videoCountOut), SUM( videoBytesOut), SUM( mobileBytesOut), SUM( wifiBytesOut), SUM( sysMobileBytesOut), SUM( sysWifiBytesOut ) FROM netstat WHERE peroid >= ").append(i).append("").toString();
        Cursor cursor = b.a(s, ((String []) (obj)));
        if(cursor.moveToFirst())
        {
            obj = new NetStatInfo();
            ((NetStatInfo) (obj)).a(cursor);
        }
        cursor.close();
        return ((NetStatInfo) (obj));
    }

    public static final String a[];
    private static String d = "NetStat.tmp";
    private SqliteDB b;
    private String c;
    private final NetStatInfo e = (new NetStatInfo()).b();

    static 
    {
        String as[] = new String[2];
        as[0] = "CREATE TABLE IF NOT EXISTS netstat ( id INTEGER PRIMARY KEY, peroid INT, textCountIn INT, textBytesIn INT, imageCountIn INT, imageBytesIn INT, voiceCountIn INT, voiceBytesIn INT, videoCountIn INT, videoBytesIn INT, mobileBytesIn INT, wifiBytesIn INT, sysMobileBytesIn INT, sysWifiBytesIn INT, textCountOut INT, textBytesOut INT, imageCountOut INT, imageBytesOut INT, voiceCountOut INT, voiceBytesOut INT, videoCountOut INT, videoBytesOut INT, mobileBytesOut INT, wifiBytesOut INT, sysMobileBytesOut INT, sysWifiBytesOut INT, reserved1 INT, reserved2 INT, reserved3 TEXT )";
        as[1] = "CREATE INDEX IF NOT EXISTS  statInfoIndex ON netstat ( peroid ) ";
        a = as;
    }
}
