// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.b;

import a.l;
import java.util.Map;

public final class i
{

    private i()
    {
    }

    public static String a(byte abyte0[], Map map)
    {
        if(map == null) goto _L2; else goto _L1
_L1:
        String s = (String)map.get(l.d);
        if(s == null) goto _L2; else goto _L3
_L3:
        return s;
_L2:
        int j;
        int k;
        int i1;
        boolean flag;
        boolean flag1;
        int j1;
        boolean flag2;
        int k1;
        boolean flag3;
        boolean flag4;
        boolean flag5;
        if(abyte0.length > 3 && abyte0[0] == -17 && abyte0[1] == -69 && abyte0[2] == -65)
        {
            s = "UTF8";
            continue; /* Loop/switch isn't completed */
        }
        j = abyte0.length;
        k = 0;
        i1 = 0;
        flag = false;
        flag1 = false;
        j1 = 0;
        flag2 = false;
        k1 = 0;
        flag3 = true;
        flag4 = true;
        flag5 = true;
_L6:
        boolean flag6;
        if(j1 >= j || !flag5 && !flag4 && !flag3)
        {
            if(k > 0)
                flag3 = false;
            int l1;
            int i2;
            int j2;
            int k2;
            boolean flag7;
            int l2;
            int i3;
            if(flag4 && b)
                s = "SJIS";
            else
            if(flag3 && flag1)
                s = "UTF8";
            else
            if(flag4 && (k1 >= 3 || i1 * 20 > j))
                s = "SJIS";
            else
            if(!flag && flag5)
                s = "ISO8859_1";
            else
                s = a;
            continue; /* Loop/switch isn't completed */
        }
        l1 = 0xff & abyte0[j1];
        if(l1 < 128 || l1 > 191) goto _L5; else goto _L4
_L4:
        if(k > 0)
        {
            k--;
            flag6 = flag3;
        } else
        {
            flag6 = flag3;
        }
        if((l1 == 194 || l1 == 195) && j1 < j + -1)
        {
            i3 = 0xff & abyte0[j1 + 1];
            if(i3 <= 191 && (l1 == 194 && i3 >= 160 || l1 == 195 && i3 >= 128))
                flag = true;
        }
        if(l1 >= 127 && l1 <= 159)
            flag5 = false;
        if(l1 >= 161 && l1 <= 223 && !flag2)
            i1++;
        if(!flag2 && (l1 >= 240 && l1 <= 255 || l1 == 128 || l1 == 160))
            flag4 = false;
        if((l1 >= 129 && l1 <= 159 || l1 >= 224 && l1 <= 239) && !flag2)
        {
            flag7 = true;
            if(j1 >= -1 + abyte0.length)
            {
                flag4 = false;
            } else
            {
                l2 = 0xff & abyte0[j1 + 1];
                if(l2 < 64 || l2 > 252)
                    flag4 = false;
                else
                    k1++;
            }
        } else
        {
            flag7 = false;
        }
        j1++;
        flag2 = flag7;
        flag3 = flag6;
        if(true) goto _L6; else goto _L5
_L5:
        if(k > 0)
            flag6 = false;
        else
            flag6 = flag3;
        if(l1 < 192 || l1 > 253)
            break MISSING_BLOCK_LABEL_178;
        i2 = k;
        j2 = l1;
_L8:
label0:
        {
            if((j2 & 0x40) != 0)
                break label0;
            k = i2;
            flag1 = true;
        }
        break MISSING_BLOCK_LABEL_178;
        k2 = i2 + 1;
        j2 <<= 1;
        i2 = k2;
        if(true) goto _L8; else goto _L7
_L7:
        if(true) goto _L3; else goto _L9
_L9:
    }

    private static final String a = System.getProperty("file.encoding");
    private static final boolean b;

    static 
    {
        boolean flag;
        if(!"SJIS".equalsIgnoreCase(a) && !"EUC_JP".equalsIgnoreCase(a))
            flag = false;
        else
            flag = true;
        b = flag;
    }
}
