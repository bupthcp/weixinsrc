// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.storage;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

public class OpLogStorage
{

    public OpLogStorage(String s)
    {
        a = "";
        a = s;
        b = false;
        c = d();
        d = new ArrayList();
    }

    private void a(Operation operation, String s)
    {
        File file = new File((new StringBuilder()).append(a).append(s).toString());
        if(!file.exists())
            file.createNewFile();
        FileOutputStream fileoutputstream = new FileOutputStream(file, true);
        fileoutputstream.write(operation.toString().getBytes());
        fileoutputstream.close();
_L2:
        return;
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private void c()
    {
        File file = new File((new StringBuilder()).append(a).append("op.tem").toString());
        if(file.exists())
        {
            if(file.length() != 0L)
                try
                {
                    FileOutputStream fileoutputstream = new FileOutputStream((new StringBuilder()).append(a).append("op.log").toString(), true);
                    FileInputStream fileinputstream = new FileInputStream(file);
                    byte abyte0[] = new byte[(int)file.length()];
                    fileinputstream.read(abyte0);
                    fileoutputstream.write(abyte0);
                    fileinputstream.close();
                    fileoutputstream.close();
                }
                catch(Exception exception) { }
            file.delete();
        }
    }

    private List d()
    {
        ArrayList arraylist;
        c();
        arraylist = new ArrayList();
        String as[];
        int i;
        int j;
        Log.c("MicroMsg.OpLogStorage", (new StringBuilder()).append("getOPListFromFiles, file=").append(a).append("op.log").toString());
        File file = new File((new StringBuilder()).append(a).append("op.log").toString());
        if(!file.exists())
            file.createNewFile();
        FileInputStream fileinputstream = new FileInputStream(file);
        byte abyte0[] = new byte[(int)file.length()];
        fileinputstream.read(abyte0);
        fileinputstream.close();
        as = (new String(abyte0)).split(";");
        i = as.length;
        j = 0;
_L33:
        if(j >= i) goto _L2; else goto _L1
_L1:
        Object aobj[];
        String as1[];
        String s = as[j];
        Log.c("MicroMsg.OpLogStorage", (new StringBuilder()).append("operation:[").append(s).append("], count=").append(as.length).toString());
        aobj = Concat.a(s);
        if(aobj.length <= 1)
        {
            Log.d("MicroMsg.OpLogStorage", "invalid operation, arg equals to 0");
            break MISSING_BLOCK_LABEL_2153;
        }
        as1 = Helper.a(aobj);
        Util.a(Integer.valueOf(as1[0]));
        JVM INSTR lookupswitch 29: default 476
    //                   101: 522
    //                   102: 815
    //                   103: 836
    //                   104: 908
    //                   105: 1325
    //                   106: 1356
    //                   107: 1377
    //                   108: 1408
    //                   109: 1443
    //                   110: 1464
    //                   111: 1485
    //                   112: 1563
    //                   113: 1632
    //                   114: 1657
    //                   115: 1713
    //                   116: 1738
    //                   117: 1775
    //                   118: 1688
    //                   119: 1516
    //                   120: 1802
    //                   121: 1833
    //                   122: 1868
    //                   123: 1899
    //                   124: 1992
    //                   125: 2023
    //                   126: 2054
    //                   127: 2085
    //                   128: 881
    //                   10000: 2122;
           goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32
_L3:
        Log.a("MicroMsg.OpLogStorage", "getOPListFromFiles: not found this opid");
        break MISSING_BLOCK_LABEL_2153;
        NumberFormatException numberformatexception;
        numberformatexception;
        try
        {
            Log.a("MicroMsg.OpLogStorage", (new StringBuilder()).append("getOPListFromFiles failed, e=").append(numberformatexception.getMessage()).toString());
            break MISSING_BLOCK_LABEL_2153;
        }
        catch(Exception exception) { }
_L2:
        return arraylist;
_L4:
        if(as1.length <= 19)
            arraylist.add(new OpAddContact(as1[1], as1[2], as1[3], as1[4], Integer.valueOf(as1[5]).intValue(), Integer.valueOf(as1[6]).intValue(), Integer.valueOf(as1[7]).intValue(), as1[9], as1[10], as1[11], Integer.valueOf(as1[12]).intValue(), as1[13], Integer.valueOf(as1[14]).intValue(), Integer.valueOf(as1[15]).intValue(), as1[16], as1[17], as1[18], "", 0));
        else
            arraylist.add(new OpAddContact(as1[1], as1[2], as1[3], as1[4], Integer.valueOf(as1[5]).intValue(), Integer.valueOf(as1[6]).intValue(), Integer.valueOf(as1[7]).intValue(), as1[9], as1[10], as1[11], Integer.valueOf(as1[12]).intValue(), as1[13], Integer.valueOf(as1[14]).intValue(), Integer.valueOf(as1[15]).intValue(), as1[16], as1[17], as1[18], as1[19], Integer.valueOf(as1[20]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L5:
        arraylist.add(new OpDelContact(as1[1]));
        break MISSING_BLOCK_LABEL_2153;
_L6:
        arraylist.add(new OpModMsgStatus(Integer.valueOf(as1[1]).intValue(), Integer.valueOf(as1[2]).intValue(), as1[3], as1[4]));
        break MISSING_BLOCK_LABEL_2153;
_L31:
        arraylist.add(new OpModTXNewsCategory(Integer.valueOf(as1[1]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L7:
        if(as1.length <= 15)
            arraylist.add(new OpModUserInfo(Integer.valueOf(as1[1]).intValue(), as1[2], as1[3], Integer.valueOf(as1[4]).intValue(), as1[5], as1[6], as1[7], Integer.valueOf(as1[8]).intValue(), Integer.valueOf(as1[9]).intValue(), Integer.valueOf(as1[10]).intValue(), as1[11], as1[12], as1[13], Integer.valueOf(as1[14]).intValue(), "", 0, "", 0));
        else
        if(as1.length <= 16)
            arraylist.add(new OpModUserInfo(Integer.valueOf(as1[1]).intValue(), as1[2], as1[3], Integer.valueOf(as1[4]).intValue(), as1[5], as1[6], as1[7], Integer.valueOf(as1[8]).intValue(), Integer.valueOf(as1[9]).intValue(), Integer.valueOf(as1[10]).intValue(), as1[11], as1[12], as1[13], Integer.valueOf(as1[14]).intValue(), as1[15], 0, "", 0));
        else
            arraylist.add(new OpModUserInfo(Integer.valueOf(as1[1]).intValue(), as1[2], as1[3], Integer.valueOf(as1[4]).intValue(), as1[5], as1[6], as1[7], Integer.valueOf(as1[8]).intValue(), Integer.valueOf(as1[9]).intValue(), Integer.valueOf(as1[10]).intValue(), as1[11], as1[12], as1[13], Integer.valueOf(as1[14]).intValue(), as1[15], Integer.valueOf(as1[16]).intValue(), as1[17], Integer.valueOf(as1[18]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L8:
        arraylist.add(new OpDelContactMsg(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L9:
        arraylist.add(new OpDelChatContact(as1[1]));
        break MISSING_BLOCK_LABEL_2153;
_L10:
        arraylist.add(new OpDelMsg(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L11:
        arraylist.add(new OpReport(as1[1], Long.valueOf(as1[2]).longValue(), as1[3]));
        break MISSING_BLOCK_LABEL_2153;
_L12:
        arraylist.add(new OpOpenQQMicroBlog(as1[1]));
        break MISSING_BLOCK_LABEL_2153;
_L13:
        arraylist.add(new OpCloseMicroBlog(as1[1]));
        break MISSING_BLOCK_LABEL_2153;
_L14:
        arraylist.add(new OpModNotifyStatus(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L22:
        arraylist.add(new OpModDisturbSetting(Boolean.valueOf(as1[1]).booleanValue(), Integer.valueOf(as1[2]).intValue(), Integer.valueOf(as1[3]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L15:
        arraylist.add(new OpModChatRoomMember(as1[1], as1[2], as1[3], as1[4], Integer.valueOf(as1[5]).intValue(), as1[6], as1[7], as1[8], Integer.valueOf(as1[9]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L16:
        arraylist.add(new OpQuitChatRoom(as1[1], as1[2]));
        break MISSING_BLOCK_LABEL_2153;
_L17:
        arraylist.add(new OpModChatRoomNotify(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L21:
        arraylist.add(new OpModChatRoomTopic(as1[1], as1[2]));
        break MISSING_BLOCK_LABEL_2153;
_L18:
        arraylist.add(new OpDelUserDomainEmail(as1[1], as1[2]));
        break MISSING_BLOCK_LABEL_2153;
_L19:
        arraylist.add(new OpFunctionSwitch(Integer.valueOf(as1[1]).intValue(), Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L20:
        arraylist.add(new OpUpdateStat(Integer.valueOf(as1[1]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L23:
        arraylist.add(new OpDeleteBottle(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L24:
        arraylist.add(new OpModUserImg(Integer.valueOf(as1[1]).intValue(), as1[2], as1[3]));
        break MISSING_BLOCK_LABEL_2153;
_L25:
        arraylist.add(new OpPsmStat(Integer.valueOf(as1[1]).intValue(), as1[2]));
        break MISSING_BLOCK_LABEL_2153;
_L26:
        String as2[] = as1[1].split(";");
        ArrayList arraylist1 = new ArrayList();
        int k = as2.length;
        for(int l = 0; l < k; l++)
        {
            String s1 = as2[l];
            class OpKvStat.OpKvStatItem
            {

                public final int a()
                {
                    return a;
                }

                public final void a(String s2)
                {
                    String as3[] = s2.split(",");
                    a = Integer.valueOf(as3[0]).intValue();
                    b = as3[1];
                }

                public final String b()
                {
                    return b;
                }

                public final String c()
                {
                    StringBuffer stringbuffer = new StringBuffer();
                    stringbuffer.append(a);
                    stringbuffer.append(",");
                    stringbuffer.append(b);
                    return stringbuffer.toString();
                }

                private int a;
                private String b;

            public OpKvStat.OpKvStatItem()
            {
                a = 0;
                b = "";
            }

            public OpKvStat.OpKvStatItem(int i, String s)
            {
                a = i;
                b = s;
            }
            }

            OpKvStat.OpKvStatItem opkvstatitem = new OpKvStat.OpKvStatItem();
            opkvstatitem.a(s1);
            arraylist1.add(opkvstatitem);
        }

        arraylist.add(new OpKvStat(arraylist1));
        break MISSING_BLOCK_LABEL_2153;
_L27:
        arraylist.add(new OpTheme(Integer.valueOf(as1[1]).intValue(), as1[2]));
        break MISSING_BLOCK_LABEL_2153;
_L28:
        arraylist.add(new OpInviteFriendOpen(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L29:
        arraylist.add(new OpGmailSwitch(as1[1], Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L30:
        arraylist.add(new OpMediaNote(Integer.valueOf(as1[1]).intValue(), Integer.valueOf(as1[2]).intValue()));
        break MISSING_BLOCK_LABEL_2153;
_L32:
        arraylist.add(new OpCommonProtobuf(Integer.valueOf(as1[1]).intValue(), (byte[])aobj[2]));
        j++;
          goto _L33
    }

    public final int a()
    {
        return c.size() + d.size();
    }

    public final void a(Operation operation)
    {
        if(!b)
        {
            a(operation, "op.log");
            c.add(operation);
        } else
        {
            a(operation, "op.tem");
            d.add(operation);
        }
    }

    public final void a(boolean flag)
    {
        if(flag)
        {
            c = d;
            d = new ArrayList();
            File file = new File((new StringBuilder()).append(a).append("op.log").toString());
            if(file.exists())
                file.delete();
            File file1 = new File((new StringBuilder()).append(a).append("op.tem").toString());
            if(file1.exists())
                file1.renameTo(new File((new StringBuilder()).append(a).append("op.log").toString()));
        } else
        {
            c.addAll(d);
            d.clear();
            c();
        }
        b = false;
    }

    public final List b()
    {
        Object obj;
        if(b)
        {
            obj = new ArrayList();
        } else
        {
            b = true;
            obj = c;
        }
        return ((List) (obj));
    }

    private String a;
    private boolean b;
    private List c;
    private List d;

    private class Concat
    {

        private static String a(Object obj)
        {
            StringBuilder stringbuilder = new StringBuilder();
            if(!(obj instanceof byte[])) goto _L2; else goto _L1
_L1:
            byte abyte1[];
            abyte1 = (byte[])obj;
            stringbuilder.append("##");
_L6:
            for(int i = 0; i < abyte1.length; i++)
            {
                String s2 = Integer.toHexString(0xff & abyte1[i]);
                if(s2.length() == 1)
                    s2 = (new StringBuilder()).append("0").append(s2).toString();
                stringbuilder.append(s2);
            }

            break MISSING_BLOCK_LABEL_151;
_L2:
            String s = obj.toString();
            if(!Util.i(s)) goto _L4; else goto _L3
_L3:
            String s1 = "";
_L7:
            return s1;
_L4:
            byte abyte0[] = s.getBytes("UTF-8");
            abyte1 = abyte0;
            if(!Util.b(abyte1)) goto _L6; else goto _L5
_L5:
            s1 = "";
              goto _L7
            Exception exception;
            exception;
            s1 = "";
              goto _L7
            s1 = stringbuilder.toString();
              goto _L7
        }

        public static String a(Object aobj[])
        {
            String s = "";
            int i = aobj.length;
            for(int j = 0; j < i; j++)
            {
                Object obj = aobj[j];
                s = (new StringBuilder()).append(s).append(a(obj)).append(",").toString();
            }

            Log.e("MicroMsg.OpLogStorage", (new StringBuilder()).append("to buffer:").append(s).toString());
            return (new StringBuilder()).append(s).append(";").toString();
        }

        public static Object[] a(String s)
        {
            String as[] = s.split(",");
            Object aobj[] = new Object[as.length];
            for(int i = 0; i < as.length; i++)
                aobj[i] = b(as[i]);

            return aobj;
        }

        private static Object b(String s)
        {
            if(!Util.i(s) && s.length() % 2 == 0) goto _L2; else goto _L1
_L1:
            Object obj = "";
_L4:
            return obj;
_L2:
            boolean flag = s.startsWith("##");
            if(flag)
                s = s.replace("##", "");
            byte abyte0[] = new byte[s.length() / 2];
            int i = 0;
            do
            {
                if(i >= s.length())
                    break;
                try
                {
                    abyte0[i / 2] = (byte)Integer.parseInt(s.substring(i, i + 2), 16);
                }
                catch(Exception exception1)
                {
                    obj = "";
                    continue; /* Loop/switch isn't completed */
                }
                i += 2;
            } while(true);
            if(flag)
                obj = abyte0;
            else
                try
                {
                    obj = new String(abyte0, "UTF-8");
                }
                catch(Exception exception)
                {
                    obj = "";
                }
            if(true) goto _L4; else goto _L3
_L3:
        }

        public Concat()
        {
        }
    }


    private class Helper
    {

        public static String[] a(Object aobj[])
        {
            String as[] = new String[aobj.length];
            int i = 0;
            while(i < as.length) 
            {
                if(!(aobj[i] instanceof String))
                    as[i] = null;
                else
                    as[i] = (String)aobj[i];
                i++;
            }
            return as;
        }

        Helper()
        {
        }
    }


    private class OpAddContact
        implements Operation
    {

        public final int a()
        {
            return 101;
        }

        public final String b()
        {
            return q;
        }

        public final String c()
        {
            return p;
        }

        public final String d()
        {
            return o;
        }

        public final int e()
        {
            return n;
        }

        public final String f()
        {
            return h;
        }

        public final String g()
        {
            return i;
        }

        public final int h()
        {
            return k;
        }

        public final String i()
        {
            return l;
        }

        public final int j()
        {
            return m;
        }

        public final String k()
        {
            return a;
        }

        public final String l()
        {
            return b;
        }

        public final String m()
        {
            return c;
        }

        public final String n()
        {
            return d;
        }

        public final int o()
        {
            return e;
        }

        public final int p()
        {
            return f;
        }

        public final int q()
        {
            return g;
        }

        public final String r()
        {
            return r;
        }

        public final int s()
        {
            return s;
        }

        public String toString()
        {
            Object aobj[] = new Object[19];
            aobj[0] = Integer.valueOf(101);
            aobj[1] = a;
            aobj[2] = b;
            aobj[3] = c;
            aobj[4] = d;
            aobj[5] = Integer.valueOf(e);
            aobj[6] = Integer.valueOf(f);
            aobj[7] = Integer.valueOf(g);
            aobj[8] = h;
            aobj[9] = i;
            aobj[10] = j;
            aobj[11] = Integer.valueOf(k);
            aobj[12] = l;
            aobj[13] = Integer.valueOf(m);
            aobj[14] = Integer.valueOf(n);
            aobj[15] = o;
            aobj[16] = p;
            aobj[17] = q;
            aobj[18] = r;
            return Concat.a(aobj);
        }

        private String a;
        private String b;
        private String c;
        private String d;
        private int e;
        private int f;
        private int g;
        private final String h;
        private final String i;
        private final String j;
        private final int k;
        private final String l;
        private final int m;
        private int n;
        private String o;
        private String p;
        private String q;
        private String r;
        private int s;

        public OpAddContact(String s1, String s2, String s3, String s4, int i1, int j1, int k1, 
                String s5, String s6, String s7, int l1, String s8, int i2, int j2, 
                String s9, String s10, String s11, String s12, int k2)
        {
            a = "";
            b = "";
            c = "";
            d = "";
            e = 0;
            f = 0;
            g = 0;
            a = Util.h(s1);
            b = Util.h(s2);
            c = Util.h(s3);
            d = Util.h(s4);
            e = i1;
            f = j1;
            g = k1;
            h = Util.h(s5);
            i = Util.h(s6);
            j = Util.h(s7);
            k = l1;
            l = Util.h(s8);
            m = i2;
            n = j2;
            o = Util.h(s9);
            p = Util.h(s10);
            q = Util.h(s11);
            r = Util.h(s12);
            s = k2;
        }
    }


    private class OpDelContact
        implements Operation
    {

        public final int a()
        {
            return 102;
        }

        public final String b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(102);
            aobj[1] = a;
            return Concat.a(aobj);
        }

        private final String a;

        public OpDelContact(String s)
        {
            a = Util.h(s);
        }
    }


    private class OpModMsgStatus
        implements Operation
    {

        public final int a()
        {
            return 103;
        }

        public String toString()
        {
            Object aobj[] = new Object[5];
            aobj[0] = Integer.valueOf(103);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = Integer.valueOf(b);
            aobj[3] = c;
            aobj[4] = d;
            return Concat.a(aobj);
        }

        private int a;
        private int b;
        private String c;
        private String d;

        public OpModMsgStatus(int i, int j, String s, String s1)
        {
            a = 0;
            b = 0;
            c = "";
            d = "";
            a = i;
            b = j;
            c = Util.h(s);
            d = Util.h(s1);
        }
    }


    private class OpModTXNewsCategory
        implements Operation
    {

        public final int a()
        {
            return 128;
        }

        public final int b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(128);
            aobj[1] = Integer.valueOf(a);
            return Concat.a(aobj);
        }

        private int a;

        public OpModTXNewsCategory(int i)
        {
            a = 0;
            a = i;
        }
    }


    private class OpModUserInfo
        implements Operation
    {

        public final int a()
        {
            return 104;
        }

        public final String b()
        {
            return m;
        }

        public final String c()
        {
            return l;
        }

        public final String d()
        {
            return k;
        }

        public final int e()
        {
            return j;
        }

        public final int f()
        {
            return i;
        }

        public final int g()
        {
            return a;
        }

        public final String h()
        {
            return b;
        }

        public final String i()
        {
            return c;
        }

        public final int j()
        {
            return d;
        }

        public final String k()
        {
            return e;
        }

        public final String l()
        {
            return f;
        }

        public final String m()
        {
            return g;
        }

        public final int n()
        {
            return h;
        }

        public final int o()
        {
            return n;
        }

        public final String p()
        {
            return o;
        }

        public final int q()
        {
            return p;
        }

        public final String r()
        {
            return q;
        }

        public final int s()
        {
            return r;
        }

        public final String t()
        {
            return s;
        }

        public String toString()
        {
            Object aobj[] = new Object[16];
            aobj[0] = Integer.valueOf(104);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = b;
            aobj[3] = c;
            aobj[4] = Integer.valueOf(d);
            aobj[5] = e;
            aobj[6] = f;
            aobj[7] = g;
            aobj[8] = Integer.valueOf(h);
            aobj[9] = Integer.valueOf(i);
            aobj[10] = Integer.valueOf(j);
            aobj[11] = k;
            aobj[12] = l;
            aobj[13] = m;
            aobj[14] = Integer.valueOf(n);
            aobj[15] = o;
            return Concat.a(aobj);
        }

        private int a;
        private String b;
        private String c;
        private int d;
        private String e;
        private String f;
        private String g;
        private int h;
        private int i;
        private int j;
        private String k;
        private String l;
        private String m;
        private int n;
        private String o;
        private int p;
        private String q;
        private int r;
        private String s;

        public OpModUserInfo(int i1, String s1, String s2, int j1, String s3, String s4, String s5, 
                int k1, int l1, int i2, String s6, String s7, String s8, int j2, 
                String s9, int k2, String s10, int l2)
        {
            a = 0;
            b = "";
            c = "";
            d = 0;
            e = "";
            f = "";
            g = "";
            h = 0;
            a = i1;
            b = Util.h(s1);
            c = Util.h(s2);
            d = j1;
            e = Util.h(s3);
            f = Util.h(s4);
            g = Util.h(s5);
            h = k1;
            i = l1;
            j = i2;
            k = Util.h(s6);
            l = Util.h(s7);
            m = Util.h(s8);
            n = j2;
            o = Util.h(s9);
            p = k2;
            q = Util.h(s10);
            r = l2;
            s = "";
        }
    }


    private class OpDelContactMsg
        implements Operation
    {

        public final int a()
        {
            return 105;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(105);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private String a;
        private int b;

        public OpDelContactMsg(String s, int i)
        {
            a = "";
            b = 0;
            a = Util.h(s);
            b = i;
        }
    }


    private class OpDelChatContact
        implements Operation
    {

        public final int a()
        {
            return 106;
        }

        public final String b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(106);
            aobj[1] = a;
            return Concat.a(aobj);
        }

        private String a;

        public OpDelChatContact(String s)
        {
            a = "";
            a = Util.h(s);
        }
    }


    private class OpDelMsg
        implements Operation
    {

        public final int a()
        {
            return 107;
        }

        public final String b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(107);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private String a;
        private final int b;

        public OpDelMsg(String s, int i)
        {
            a = "";
            a = Util.h(s);
            b = i;
        }
    }


    private class OpReport
        implements Operation
    {

        public final int a()
        {
            return 108;
        }

        public final String b()
        {
            return a;
        }

        public final long c()
        {
            return b;
        }

        public final String d()
        {
            return c;
        }

        public String toString()
        {
            Object aobj[] = new Object[4];
            aobj[0] = Integer.valueOf(108);
            aobj[1] = a;
            aobj[2] = Long.valueOf(b);
            aobj[3] = c;
            return Concat.a(aobj);
        }

        private final String a;
        private final long b;
        private final String c;

        public OpReport(String s, long l, String s1)
        {
            a = Util.h(s);
            b = l;
            c = Util.h(s1);
        }
    }


    private class OpOpenQQMicroBlog
        implements Operation
    {

        public final int a()
        {
            return 109;
        }

        public final String b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(109);
            aobj[1] = a;
            return Concat.a(aobj);
        }

        private final String a;

        public OpOpenQQMicroBlog(String s)
        {
            a = Util.h(s);
        }
    }


    private class OpCloseMicroBlog
        implements Operation
    {

        public final int a()
        {
            return 110;
        }

        public final String b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(110);
            aobj[1] = a;
            return Concat.a(aobj);
        }

        private final String a;

        public OpCloseMicroBlog(String s)
        {
            a = Util.h(s);
        }
    }


    private class OpModNotifyStatus
        implements Operation
    {

        public final int a()
        {
            return 111;
        }

        public final String b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(111);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private final String a;
        private final int b;

        public OpModNotifyStatus(String s, int i)
        {
            a = Util.h(s);
            b = i;
        }
    }


    private class OpModDisturbSetting
        implements Operation
    {

        public final int a()
        {
            return 119;
        }

        public final boolean b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public final int d()
        {
            return c;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(119);
            aobj[1] = Boolean.valueOf(a);
            return Concat.a(aobj);
        }

        private boolean a;
        private int b;
        private int c;

        public OpModDisturbSetting()
        {
            a = false;
            b = 22;
            c = 8;
        }

        public OpModDisturbSetting(boolean flag, int i, int j)
        {
            a = flag;
            b = i;
            c = j;
        }
    }


    private class OpModChatRoomMember
        implements Operation
    {

        public final int a()
        {
            return 112;
        }

        public final String b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public final String d()
        {
            return c;
        }

        public final String e()
        {
            return d;
        }

        public final int f()
        {
            return e;
        }

        public final String g()
        {
            return f;
        }

        public final String h()
        {
            return g;
        }

        public final String i()
        {
            return h;
        }

        public final int j()
        {
            return i;
        }

        public String toString()
        {
            Object aobj[] = new Object[10];
            aobj[0] = Integer.valueOf(112);
            aobj[1] = a;
            aobj[2] = b;
            aobj[3] = c;
            aobj[4] = d;
            aobj[5] = Integer.valueOf(e);
            aobj[6] = f;
            aobj[7] = g;
            aobj[8] = h;
            aobj[9] = Integer.valueOf(i);
            return Concat.a(aobj);
        }

        private String a;
        private String b;
        private String c;
        private String d;
        private int e;
        private String f;
        private String g;
        private String h;
        private int i;

        public OpModChatRoomMember(String s, String s1, String s2, String s3, int k, String s4, String s5, 
                String s6, int l)
        {
            a = "";
            b = "";
            c = "";
            d = "";
            e = 0;
            f = "";
            g = "";
            h = "";
            i = 0;
            a = Util.h(s);
            b = Util.h(s1);
            c = Util.h(s2);
            d = Util.h(s3);
            e = k;
            f = Util.h(s4);
            g = Util.h(s5);
            h = Util.h(s6);
            i = l;
        }
    }


    private class OpQuitChatRoom
        implements Operation
    {

        public final int a()
        {
            return 113;
        }

        public final String b()
        {
            return b;
        }

        public final String c()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(113);
            aobj[1] = b;
            aobj[2] = a;
            return Concat.a(aobj);
        }

        private String a;
        private String b;

        public OpQuitChatRoom(String s, String s1)
        {
            a = "";
            b = "";
            b = Util.h(s);
            a = Util.h(s1);
        }
    }


    private class OpModChatRoomNotify
        implements Operation
    {

        public final int a()
        {
            return 114;
        }

        public final String b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(114);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private String a;
        private final int b;

        public OpModChatRoomNotify(String s, int i)
        {
            a = "";
            a = Util.h(s);
            b = i;
        }
    }


    private class OpModChatRoomTopic
        implements Operation
    {

        public final int a()
        {
            return 118;
        }

        public final String b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(118);
            aobj[1] = a;
            aobj[2] = b;
            return Concat.a(aobj);
        }

        private String a;
        private String b;

        public OpModChatRoomTopic(String s, String s1)
        {
            a = "";
            b = "";
            a = Util.h(s);
            b = Util.h(s1);
        }
    }


    private class OpDelUserDomainEmail
        implements Operation
    {

        public final int a()
        {
            return 115;
        }

        public final String b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(115);
            aobj[1] = a;
            aobj[2] = b;
            return Concat.a(aobj);
        }

        private String a;
        private String b;

        public OpDelUserDomainEmail(String s, String s1)
        {
            a = "";
            b = "";
            a = Util.h(s);
            b = Util.h(s1);
        }
    }


    private class OpFunctionSwitch
        implements Operation
    {

        public final int a()
        {
            return 116;
        }

        public final int b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(116);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private final int a;
        private final int b;

        public OpFunctionSwitch(int i, int j)
        {
            a = i;
            b = j;
        }
    }


    private class OpUpdateStat
        implements Operation
    {

        public final int a()
        {
            return 117;
        }

        public final int b()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(117);
            aobj[1] = Integer.valueOf(a);
            return Concat.a(aobj);
        }

        private final int a;

        public OpUpdateStat(int i)
        {
            a = i;
        }
    }


    private class OpDeleteBottle
        implements Operation
    {

        public final int a()
        {
            return 120;
        }

        public final int b()
        {
            return b;
        }

        public final String c()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(120);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private final String a;
        private int b;

        public OpDeleteBottle(String s, int i)
        {
            a = s;
            b = i;
        }
    }


    private class OpModUserImg
        implements Operation
    {

        public final int a()
        {
            return 121;
        }

        public final int b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public final String d()
        {
            return c;
        }

        public String toString()
        {
            Object aobj[] = new Object[4];
            aobj[0] = Integer.valueOf(121);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = b;
            aobj[3] = c;
            return Concat.a(aobj);
        }

        private int a;
        private String b;
        private String c;

        public OpModUserImg(int i, String s, String s1)
        {
            a = i;
            b = Util.h(s);
            c = Util.h(s1);
        }
    }


    private class OpPsmStat
        implements Operation
    {

        public final int a()
        {
            return 122;
        }

        public final int b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(122);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = b;
            return Concat.a(aobj);
        }

        private final int a;
        private final String b;

        public OpPsmStat(int i, String s)
        {
            a = i;
            b = s;
        }
    }


    private class OpKvStat
        implements Operation
    {

        public final int a()
        {
            return 123;
        }

        public final List b()
        {
            return a;
        }

        public String toString()
        {
            StringBuffer stringbuffer = new StringBuffer();
            for(Iterator iterator = a.iterator(); iterator.hasNext(); stringbuffer.append(";"))
                stringbuffer.append(((OpKvStatItem)iterator.next()).c());

            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(123);
            aobj[1] = stringbuffer.toString();
            return Concat.a(aobj);
        }

        private final List a;

        public OpKvStat(List list)
        {
            a = list;
        }
    }


    private class OpTheme
        implements Operation
    {

        public final int a()
        {
            return 124;
        }

        public final int b()
        {
            return a;
        }

        public final String c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(124);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = b;
            return Concat.a(aobj);
        }

        private final int a;
        private final String b;

        public OpTheme(int i, String s)
        {
            a = i;
            b = s;
        }
    }


    private class OpInviteFriendOpen
        implements Operation
    {

        public final int a()
        {
            return 125;
        }

        public final int b()
        {
            return b;
        }

        public final String c()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(125);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private final String a;
        private final int b;

        public OpInviteFriendOpen(String s, int i)
        {
            a = Util.h(s);
            b = i;
        }
    }


    private class OpGmailSwitch
        implements Operation
    {

        public final int a()
        {
            return 126;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(126);
            aobj[1] = a;
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private final String a;
        private final int b;

        public OpGmailSwitch(String s, int i)
        {
            a = s;
            b = i;
        }
    }


    private class OpMediaNote
        implements Operation
    {

        public final int a()
        {
            return 127;
        }

        public final int b()
        {
            return a;
        }

        public final int c()
        {
            return b;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(127);
            aobj[1] = Integer.valueOf(a);
            aobj[2] = Integer.valueOf(b);
            return Concat.a(aobj);
        }

        private int a;
        private int b;

        public OpMediaNote(int i, int j)
        {
            a = i;
            b = j;
        }
    }


    private class OpCommonProtobuf
        implements Operation
    {

        public final int a()
        {
            return 10000;
        }

        public final int b()
        {
            return b;
        }

        public final byte[] c()
        {
            return a;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = Integer.valueOf(10000);
            aobj[1] = Integer.valueOf(b);
            aobj[2] = a;
            return Concat.a(aobj);
        }

        private byte a[];
        private int b;

        public OpCommonProtobuf(int i, byte abyte0[])
        {
            b = i;
            a = abyte0;
        }
    }

}
