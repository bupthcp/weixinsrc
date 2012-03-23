// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import java.util.Calendar;
import java.util.Date;

class LunarCalendar
{

    public LunarCalendar()
    {
        this(Calendar.getInstance());
    }

    private LunarCalendar(Calendar calendar)
    {
        int i = (int)((calendar.getTime().getTime() - f) / 0x5265c00L);
        int j = 1900;
        int k = 0;
        for(; j < 2050 && i > 0; j++)
        {
            k = a(j);
            i -= k;
        }

        if(i < 0)
        {
            i += k;
            j--;
        }
        c = j;
        int l = c(j);
        e = false;
        int i1 = 0;
        int j1 = 1;
        int k1 = i;
        while(j1 < 13 && k1 > 0) 
        {
            int k2;
            if(l > 0 && j1 == l + 1 && !e)
            {
                j1--;
                e = true;
                k2 = b(c);
            } else
            {
                int j2 = c;
                if((b[j2 + -1900] & (long)(0x10000 >> j1)) == 0L)
                    k2 = 29;
                else
                    k2 = 30;
            }
            k1 -= k2;
            if(e && j1 == l + 1)
                e = false;
            j1++;
            i1 = k2;
        }
        int l1;
        int i2;
        if(k1 == 0 && l > 0 && j1 == l + 1)
        {
            if(e)
            {
                e = false;
                l1 = j1;
            } else
            {
                e = true;
                l1 = j1 + -1;
            }
        } else
        {
            l1 = j1;
        }
        if(k1 < 0)
        {
            i2 = k1 + i1;
            l1--;
        } else
        {
            i2 = k1;
        }
        d = l1;
        a = i2 + 1;
    }

    private static int a(int i)
    {
        int j = 348;
        for(int k = 32768; k > 8; k >>= 1)
            if((b[i + -1900] & (long)k) != 0L)
                j++;

        return j + b(i);
    }

    private static int b(int i)
    {
        byte byte0;
        if(c(i) != 0)
        {
            if((0x10000L & b[i + -1900]) != 0L)
                byte0 = 30;
            else
                byte0 = 29;
        } else
        {
            byte0 = 0;
        }
        return byte0;
    }

    private static int c(int i)
    {
        return (int)(15L & b[i + -1900]);
    }

    private static final long b[];
    private static final long f = (new Date(0, 0, 31)).getTime();
    public int a;
    private int c;
    private int d;
    private boolean e;

    static 
    {
        long al[] = new long[150];
        al[0] = 19416L;
        al[1] = 19168L;
        al[2] = 42352L;
        al[3] = 21717L;
        al[4] = 53856L;
        al[5] = 55632L;
        al[6] = 0x16554L;
        al[7] = 22176L;
        al[8] = 39632L;
        al[9] = 21970L;
        al[10] = 19168L;
        al[11] = 42422L;
        al[12] = 42192L;
        al[13] = 53840L;
        al[14] = 0x1d255L;
        al[15] = 46400L;
        al[16] = 54944L;
        al[17] = 44450L;
        al[18] = 38320L;
        al[19] = 0x14977L;
        al[20] = 18800L;
        al[21] = 42160L;
        al[22] = 46261L;
        al[23] = 27216L;
        al[24] = 27968L;
        al[25] = 0x1ab54L;
        al[26] = 11104L;
        al[27] = 38256L;
        al[28] = 21234L;
        al[29] = 18800L;
        al[30] = 25958L;
        al[31] = 54432L;
        al[32] = 59984L;
        al[33] = 28309L;
        al[34] = 23248L;
        al[35] = 11104L;
        al[36] = 0x186e3L;
        al[37] = 37600L;
        al[38] = 0x1c8d7L;
        al[39] = 51536L;
        al[40] = 54432L;
        al[41] = 0x1d8a6L;
        al[42] = 46416L;
        al[43] = 22176L;
        al[44] = 0x1a5b4L;
        al[45] = 9680L;
        al[46] = 37584L;
        al[47] = 53938L;
        al[48] = 43344L;
        al[49] = 46423L;
        al[50] = 27808L;
        al[51] = 46416L;
        al[52] = 0x15355L;
        al[53] = 19872L;
        al[54] = 42448L;
        al[55] = 0x14573L;
        al[56] = 21200L;
        al[57] = 43432L;
        al[58] = 59728L;
        al[59] = 27296L;
        al[60] = 44710L;
        al[61] = 43856L;
        al[62] = 19296L;
        al[63] = 43748L;
        al[64] = 42352L;
        al[65] = 21088L;
        al[66] = 62051L;
        al[67] = 55632L;
        al[68] = 23383L;
        al[69] = 22176L;
        al[70] = 38608L;
        al[71] = 19925L;
        al[72] = 19152L;
        al[73] = 42192L;
        al[74] = 54484L;
        al[75] = 53840L;
        al[76] = 54616L;
        al[77] = 46400L;
        al[78] = 46496L;
        al[79] = 0x195a6L;
        al[80] = 38320L;
        al[81] = 18864L;
        al[82] = 43380L;
        al[83] = 42160L;
        al[84] = 45690L;
        al[85] = 27216L;
        al[86] = 27968L;
        al[87] = 44870L;
        al[88] = 43872L;
        al[89] = 38256L;
        al[90] = 19189L;
        al[91] = 18800L;
        al[92] = 25776L;
        al[93] = 29859L;
        al[94] = 59984L;
        al[95] = 27480L;
        al[96] = 21952L;
        al[97] = 43872L;
        al[98] = 38613L;
        al[99] = 37600L;
        al[100] = 51552L;
        al[101] = 55636L;
        al[102] = 54432L;
        al[103] = 55888L;
        al[104] = 30034L;
        al[105] = 22176L;
        al[106] = 43959L;
        al[107] = 9680L;
        al[108] = 37584L;
        al[109] = 51893L;
        al[110] = 43344L;
        al[111] = 46240L;
        al[112] = 47780L;
        al[113] = 44368L;
        al[114] = 21977L;
        al[115] = 19360L;
        al[116] = 42416L;
        al[117] = 0x15176L;
        al[118] = 21168L;
        al[119] = 43312L;
        al[120] = 31060L;
        al[121] = 27296L;
        al[122] = 44368L;
        al[123] = 23378L;
        al[124] = 19296L;
        al[125] = 42726L;
        al[126] = 42208L;
        al[127] = 53856L;
        al[128] = 60005L;
        al[129] = 54576L;
        al[130] = 23200L;
        al[131] = 30371L;
        al[132] = 38608L;
        al[133] = 19415L;
        al[134] = 19152L;
        al[135] = 42192L;
        al[136] = 0x1d0b6L;
        al[137] = 53840L;
        al[138] = 54560L;
        al[139] = 56645L;
        al[140] = 46496L;
        al[141] = 22224L;
        al[142] = 21938L;
        al[143] = 18864L;
        al[144] = 42359L;
        al[145] = 42160L;
        al[146] = 43600L;
        al[147] = 0x1b255L;
        al[148] = 27936L;
        al[149] = 44448L;
        b = al;
    }
}
