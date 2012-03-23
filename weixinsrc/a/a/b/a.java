// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;

import a.b.*;
import a.d;
import java.io.UnsupportedEncodingException;
import java.util.*;

// Referenced classes of package a.a.b:
//            o, b, q

final class a
{

    private a()
    {
    }

    private static char a(int j)
    {
        if(j >= a.length)
            throw d.a();
        else
            return a[j];
    }

    static k a(byte abyte0[], q q, b b1, Map map)
    {
        g g1;
        StringBuilder stringbuilder;
        e e1;
        boolean flag;
        ArrayList arraylist;
        g1 = new g(abyte0);
        stringbuilder = new StringBuilder(50);
        e1 = null;
        flag = false;
        arraylist = new ArrayList(1);
_L8:
        o o2;
        boolean flag1;
        if(g1.a() < 4)
        {
            o2 = o.a;
        } else
        {
            o o1;
            try
            {
                o1 = o.a(g1.a(4));
            }
            catch(IllegalArgumentException illegalargumentexception)
            {
                throw d.a();
            }
            o2 = o1;
        }
        if(o2 == o.a) goto _L2; else goto _L1
_L1:
        if(o2 != o.h && o2 != a.a.b.o.i) goto _L4; else goto _L3
_L3:
        flag1 = true;
_L6:
        if(o2 == o.a)
        {
            String s = stringbuilder.toString();
            if(arraylist.isEmpty())
                arraylist = null;
            String s1;
            int j;
            int l;
            int i1;
            int j1;
            int k1;
            if(b1 == null)
                s1 = null;
            else
                s1 = b1.toString();
            return new k(abyte0, s, arraylist, s1);
        }
        break; /* Loop/switch isn't completed */
_L4:
        if(o2 == a.a.b.o.d)
        {
            g1.a(16);
            flag1 = flag;
            continue; /* Loop/switch isn't completed */
        }
        if(o2 == o.f)
        {
            j1 = g1.a(8);
            if((j1 & 0x80) == 0)
                k1 = j1 & 0x7f;
            else
            if((j1 & 0xc0) == 128)
                k1 = g1.a(8) | (j1 & 0x3f) << 8;
            else
            if((j1 & 0xe0) == 192)
                k1 = g1.a(16) | (j1 & 0x1f) << 16;
            else
                throw new IllegalArgumentException((new StringBuilder("Bad ECI bits starting with byte ")).append(j1).toString());
            e1 = e.a(k1);
            if(e1 == null)
                throw d.a();
        } else
        if(o2 == o.j)
        {
            l = g1.a(4);
            i1 = g1.a(o2.a(q));
            if(l == 1)
            {
                a(g1, stringbuilder, i1);
                flag1 = flag;
                continue; /* Loop/switch isn't completed */
            }
        } else
        {
            j = g1.a(o2.a(q));
            if(o2 == o.b)
            {
                c(g1, stringbuilder, j);
                flag1 = flag;
            } else
            if(o2 == o.c)
            {
                a(g1, stringbuilder, j, flag);
                flag1 = flag;
            } else
            if(o2 == a.a.b.o.e)
            {
                a(g1, stringbuilder, j, e1, ((Collection) (arraylist)), map);
                flag1 = flag;
            } else
            if(o2 == a.a.b.o.g)
            {
                b(g1, stringbuilder, j);
                flag1 = flag;
            } else
            {
                throw d.a();
            }
            continue; /* Loop/switch isn't completed */
        }
_L2:
        flag1 = flag;
        if(true) goto _L6; else goto _L5
_L5:
        flag = flag1;
        if(true) goto _L8; else goto _L7
_L7:
    }

    private static void a(g g1, StringBuilder stringbuilder, int j)
    {
        if(j * 13 > g1.a())
            throw d.a();
        byte abyte0[] = new byte[j * 2];
        int l = 0;
        do
        {
            int i1;
            int j1;
            int k1;
            int l1;
            if(j <= 0)
                try
                {
                    stringbuilder.append(new String(abyte0, "GB2312"));
                    return;
                }
                catch(UnsupportedEncodingException unsupportedencodingexception)
                {
                    throw d.a();
                }
            i1 = g1.a(13);
            j1 = i1 / 96 << 8 | i1 % 96;
            if(j1 < 959)
                k1 = j1 + 41377;
            else
                k1 = j1 + 42657;
            abyte0[l] = (byte)(0xff & k1 >> 8);
            abyte0[l + 1] = (byte)(k1 & 0xff);
            l1 = l + 2;
            j--;
            l = l1;
        } while(true);
    }

    private static void a(g g1, StringBuilder stringbuilder, int j, e e1, Collection collection, Map map)
    {
        if(j << 3 > g1.a())
            throw d.a();
        byte abyte0[] = new byte[j];
        int l = 0;
        do
        {
            if(l >= j)
            {
                String s;
                if(e1 == null)
                    s = i.a(abyte0, map);
                else
                    s = e1.name();
                try
                {
                    stringbuilder.append(new String(abyte0, s));
                }
                catch(UnsupportedEncodingException unsupportedencodingexception)
                {
                    throw d.a();
                }
                collection.add(abyte0);
                return;
            }
            abyte0[l] = (byte)g1.a(8);
            l++;
        } while(true);
    }

    private static void a(g g1, StringBuilder stringbuilder, int j, boolean flag)
    {
        int l = stringbuilder.length();
_L5:
        if(j > 1) goto _L2; else goto _L1
_L1:
        if(j == 1)
            stringbuilder.append(a(g1.a(6)));
        if(!flag) goto _L4; else goto _L3
_L3:
        if(l < stringbuilder.length())
            break MISSING_BLOCK_LABEL_84;
_L4:
        return;
_L2:
        int i1 = g1.a(11);
        stringbuilder.append(a(i1 / 45));
        stringbuilder.append(a(i1 % 45));
        j -= 2;
          goto _L5
        if(stringbuilder.charAt(l) == '%')
            if(l < -1 + stringbuilder.length() && stringbuilder.charAt(l + 1) == '%')
                stringbuilder.deleteCharAt(l + 1);
            else
                stringbuilder.setCharAt(l, '\035');
        l++;
          goto _L3
    }

    private static void b(g g1, StringBuilder stringbuilder, int j)
    {
        if(j * 13 > g1.a())
            throw d.a();
        byte abyte0[] = new byte[j * 2];
        int l = 0;
        do
        {
            int i1;
            int j1;
            int k1;
            int l1;
            if(j <= 0)
                try
                {
                    stringbuilder.append(new String(abyte0, "SJIS"));
                    return;
                }
                catch(UnsupportedEncodingException unsupportedencodingexception)
                {
                    throw d.a();
                }
            i1 = g1.a(13);
            j1 = i1 / 192 << 8 | i1 % 192;
            if(j1 < 7936)
                k1 = j1 + 33088;
            else
                k1 = j1 + 49472;
            abyte0[l] = (byte)(k1 >> 8);
            abyte0[l + 1] = (byte)k1;
            l1 = l + 2;
            j--;
            l = l1;
        } while(true);
    }

    private static void c(g g1, StringBuilder stringbuilder, int j)
    {
_L4:
        if(j >= 3) goto _L2; else goto _L1
_L2:
        if(g1.a() < 10)
            throw d.a();
        int l = g1.a(10);
        if(l >= 1000)
            throw d.a();
        stringbuilder.append(a(l / 100));
        stringbuilder.append(a((l / 10) % 10));
        stringbuilder.append(a(l % 10));
        j -= 3;
        if(true) goto _L4; else goto _L3
_L1:
        if(j != 2)
            break; /* Loop/switch isn't completed */
        if(g1.a() < 7)
            throw d.a();
        int j1 = g1.a(7);
        if(j1 >= 100)
            throw d.a();
        stringbuilder.append(a(j1 / 10));
        stringbuilder.append(a(j1 % 10));
_L6:
        return;
_L3:
        if(j == 1)
        {
            if(g1.a() < 4)
                throw d.a();
            int i1 = g1.a(4);
            if(i1 >= 10)
                throw d.a();
            stringbuilder.append(a(i1));
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    private static final char a[];

    static 
    {
        char ac[] = new char[45];
        ac[0] = '0';
        ac[1] = '1';
        ac[2] = '2';
        ac[3] = '3';
        ac[4] = '4';
        ac[5] = '5';
        ac[6] = '6';
        ac[7] = '7';
        ac[8] = '8';
        ac[9] = '9';
        ac[10] = 'A';
        ac[11] = 'B';
        ac[12] = 'C';
        ac[13] = 'D';
        ac[14] = 'E';
        ac[15] = 'F';
        ac[16] = 'G';
        ac[17] = 'H';
        ac[18] = 'I';
        ac[19] = 'J';
        ac[20] = 'K';
        ac[21] = 'L';
        ac[22] = 'M';
        ac[23] = 'N';
        ac[24] = 'O';
        ac[25] = 'P';
        ac[26] = 'Q';
        ac[27] = 'R';
        ac[28] = 'S';
        ac[29] = 'T';
        ac[30] = 'U';
        ac[31] = 'V';
        ac[32] = 'W';
        ac[33] = 'X';
        ac[34] = 'Y';
        ac[35] = 'Z';
        ac[36] = ' ';
        ac[37] = '$';
        ac[38] = '%';
        ac[39] = '*';
        ac[40] = '+';
        ac[41] = '-';
        ac[42] = '.';
        ac[43] = '/';
        ac[44] = ':';
        a = ac;
    }
}
