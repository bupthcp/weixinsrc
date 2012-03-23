// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package a.a.b;

import a.b.a;
import a.d;

// Referenced classes of package a.a.b:
//            g, m, s, b

public final class q
{

    private transient q(int i, int ai[], g ag[])
    {
        int j = 0;
        super();
        c = i;
        d = ai;
        e = ag;
        int k = ag[j].a();
        m am[] = ag[j].b();
        int l = am.length;
        int i1 = j;
        do
        {
            if(j >= l)
            {
                f = i1;
                return;
            }
            m m1 = am[j];
            i1 += m1.a() * (k + m1.b());
            j++;
        } while(true);
    }

    public static q a(int i)
    {
        if(i % 4 != 1)
            throw a.d.a();
        int j = i + -17 >> 2;
        q q1;
        try
        {
            q1 = b(j);
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            throw a.d.a();
        }
        return q1;
    }

    public static q b(int i)
    {
        if(i <= 0 || i > 40)
            throw new IllegalArgumentException();
        else
            return b[i + -1];
    }

    static q c(int i)
    {
        int j;
        int k;
        int l;
        j = 0;
        k = 0x7fffffff;
        l = j;
_L4:
label0:
        {
            {
                if(j < a.length)
                    break label0;
                int i1;
                int j1;
                q q1;
                if(k <= 3)
                    q1 = b(l);
                else
                    q1 = null;
            }
            return q1;
        }
        i1 = a[j];
        if(i1 != i)
            break; /* Loop/switch isn't completed */
        q1 = b(j + 7);
        if(true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_26;
_L1:
        j1 = a.a.b.s.a(i, i1);
        if(j1 < k)
        {
            l = j + 7;
            k = j1;
        }
        j++;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static q[] f()
    {
        q aq[] = new q[40];
        int ai[] = new int[0];
        g ag[] = new g[4];
        m am[] = new m[1];
        am[0] = new m(1, 19);
        ag[0] = new g(7, am);
        m am1[] = new m[1];
        am1[0] = new m(1, 16);
        ag[1] = new g(10, am1);
        m am2[] = new m[1];
        am2[0] = new m(1, 13);
        ag[2] = new g(13, am2);
        m am3[] = new m[1];
        am3[0] = new m(1, 9);
        ag[3] = new g(17, am3);
        aq[0] = new q(1, ai, ag);
        int ai1[] = new int[2];
        ai1[0] = 6;
        ai1[1] = 18;
        g ag1[] = new g[4];
        m am4[] = new m[1];
        am4[0] = new m(1, 34);
        ag1[0] = new g(10, am4);
        m am5[] = new m[1];
        am5[0] = new m(1, 28);
        ag1[1] = new g(16, am5);
        m am6[] = new m[1];
        am6[0] = new m(1, 22);
        ag1[2] = new g(22, am6);
        m am7[] = new m[1];
        am7[0] = new m(1, 16);
        ag1[3] = new g(28, am7);
        aq[1] = new q(2, ai1, ag1);
        int ai2[] = new int[2];
        ai2[0] = 6;
        ai2[1] = 22;
        g ag2[] = new g[4];
        m am8[] = new m[1];
        am8[0] = new m(1, 55);
        ag2[0] = new g(15, am8);
        m am9[] = new m[1];
        am9[0] = new m(1, 44);
        ag2[1] = new g(26, am9);
        m am10[] = new m[1];
        am10[0] = new m(2, 17);
        ag2[2] = new g(18, am10);
        m am11[] = new m[1];
        am11[0] = new m(2, 13);
        ag2[3] = new g(22, am11);
        aq[2] = new q(3, ai2, ag2);
        int ai3[] = new int[2];
        ai3[0] = 6;
        ai3[1] = 26;
        g ag3[] = new g[4];
        m am12[] = new m[1];
        am12[0] = new m(1, 80);
        ag3[0] = new g(20, am12);
        m am13[] = new m[1];
        am13[0] = new m(2, 32);
        ag3[1] = new g(18, am13);
        m am14[] = new m[1];
        am14[0] = new m(2, 24);
        ag3[2] = new g(26, am14);
        m am15[] = new m[1];
        am15[0] = new m(4, 9);
        ag3[3] = new g(16, am15);
        aq[3] = new q(4, ai3, ag3);
        int ai4[] = new int[2];
        ai4[0] = 6;
        ai4[1] = 30;
        g ag4[] = new g[4];
        m am16[] = new m[1];
        am16[0] = new m(1, 108);
        ag4[0] = new g(26, am16);
        m am17[] = new m[1];
        am17[0] = new m(2, 43);
        ag4[1] = new g(24, am17);
        m am18[] = new m[2];
        am18[0] = new m(2, 15);
        am18[1] = new m(2, 16);
        ag4[2] = new g(18, am18);
        m am19[] = new m[2];
        am19[0] = new m(2, 11);
        am19[1] = new m(2, 12);
        ag4[3] = new g(22, am19);
        aq[4] = new q(5, ai4, ag4);
        int ai5[] = new int[2];
        ai5[0] = 6;
        ai5[1] = 34;
        g ag5[] = new g[4];
        m am20[] = new m[1];
        am20[0] = new m(2, 68);
        ag5[0] = new g(18, am20);
        m am21[] = new m[1];
        am21[0] = new m(4, 27);
        ag5[1] = new g(16, am21);
        m am22[] = new m[1];
        am22[0] = new m(4, 19);
        ag5[2] = new g(24, am22);
        m am23[] = new m[1];
        am23[0] = new m(4, 15);
        ag5[3] = new g(28, am23);
        aq[5] = new q(6, ai5, ag5);
        int ai6[] = new int[3];
        ai6[0] = 6;
        ai6[1] = 22;
        ai6[2] = 38;
        g ag6[] = new g[4];
        m am24[] = new m[1];
        am24[0] = new m(2, 78);
        ag6[0] = new g(20, am24);
        m am25[] = new m[1];
        am25[0] = new m(4, 31);
        ag6[1] = new g(18, am25);
        m am26[] = new m[2];
        am26[0] = new m(2, 14);
        am26[1] = new m(4, 15);
        ag6[2] = new g(18, am26);
        m am27[] = new m[2];
        am27[0] = new m(4, 13);
        am27[1] = new m(1, 14);
        ag6[3] = new g(26, am27);
        aq[6] = new q(7, ai6, ag6);
        int ai7[] = new int[3];
        ai7[0] = 6;
        ai7[1] = 24;
        ai7[2] = 42;
        g ag7[] = new g[4];
        m am28[] = new m[1];
        am28[0] = new m(2, 97);
        ag7[0] = new g(24, am28);
        m am29[] = new m[2];
        am29[0] = new m(2, 38);
        am29[1] = new m(2, 39);
        ag7[1] = new g(22, am29);
        m am30[] = new m[2];
        am30[0] = new m(4, 18);
        am30[1] = new m(2, 19);
        ag7[2] = new g(22, am30);
        m am31[] = new m[2];
        am31[0] = new m(4, 14);
        am31[1] = new m(2, 15);
        ag7[3] = new g(26, am31);
        aq[7] = new q(8, ai7, ag7);
        int ai8[] = new int[3];
        ai8[0] = 6;
        ai8[1] = 26;
        ai8[2] = 46;
        g ag8[] = new g[4];
        m am32[] = new m[1];
        am32[0] = new m(2, 116);
        ag8[0] = new g(30, am32);
        m am33[] = new m[2];
        am33[0] = new m(3, 36);
        am33[1] = new m(2, 37);
        ag8[1] = new g(22, am33);
        m am34[] = new m[2];
        am34[0] = new m(4, 16);
        am34[1] = new m(4, 17);
        ag8[2] = new g(20, am34);
        m am35[] = new m[2];
        am35[0] = new m(4, 12);
        am35[1] = new m(4, 13);
        ag8[3] = new g(24, am35);
        aq[8] = new q(9, ai8, ag8);
        int ai9[] = new int[3];
        ai9[0] = 6;
        ai9[1] = 28;
        ai9[2] = 50;
        g ag9[] = new g[4];
        m am36[] = new m[2];
        am36[0] = new m(2, 68);
        am36[1] = new m(2, 69);
        ag9[0] = new g(18, am36);
        m am37[] = new m[2];
        am37[0] = new m(4, 43);
        am37[1] = new m(1, 44);
        ag9[1] = new g(26, am37);
        m am38[] = new m[2];
        am38[0] = new m(6, 19);
        am38[1] = new m(2, 20);
        ag9[2] = new g(24, am38);
        m am39[] = new m[2];
        am39[0] = new m(6, 15);
        am39[1] = new m(2, 16);
        ag9[3] = new g(28, am39);
        aq[9] = new q(10, ai9, ag9);
        int ai10[] = new int[3];
        ai10[0] = 6;
        ai10[1] = 30;
        ai10[2] = 54;
        g ag10[] = new g[4];
        m am40[] = new m[1];
        am40[0] = new m(4, 81);
        ag10[0] = new g(20, am40);
        m am41[] = new m[2];
        am41[0] = new m(1, 50);
        am41[1] = new m(4, 51);
        ag10[1] = new g(30, am41);
        m am42[] = new m[2];
        am42[0] = new m(4, 22);
        am42[1] = new m(4, 23);
        ag10[2] = new g(28, am42);
        m am43[] = new m[2];
        am43[0] = new m(3, 12);
        am43[1] = new m(8, 13);
        ag10[3] = new g(24, am43);
        aq[10] = new q(11, ai10, ag10);
        int ai11[] = new int[3];
        ai11[0] = 6;
        ai11[1] = 32;
        ai11[2] = 58;
        g ag11[] = new g[4];
        m am44[] = new m[2];
        am44[0] = new m(2, 92);
        am44[1] = new m(2, 93);
        ag11[0] = new g(24, am44);
        m am45[] = new m[2];
        am45[0] = new m(6, 36);
        am45[1] = new m(2, 37);
        ag11[1] = new g(22, am45);
        m am46[] = new m[2];
        am46[0] = new m(4, 20);
        am46[1] = new m(6, 21);
        ag11[2] = new g(26, am46);
        m am47[] = new m[2];
        am47[0] = new m(7, 14);
        am47[1] = new m(4, 15);
        ag11[3] = new g(28, am47);
        aq[11] = new q(12, ai11, ag11);
        int ai12[] = new int[3];
        ai12[0] = 6;
        ai12[1] = 34;
        ai12[2] = 62;
        g ag12[] = new g[4];
        m am48[] = new m[1];
        am48[0] = new m(4, 107);
        ag12[0] = new g(26, am48);
        m am49[] = new m[2];
        am49[0] = new m(8, 37);
        am49[1] = new m(1, 38);
        ag12[1] = new g(22, am49);
        m am50[] = new m[2];
        am50[0] = new m(8, 20);
        am50[1] = new m(4, 21);
        ag12[2] = new g(24, am50);
        m am51[] = new m[2];
        am51[0] = new m(12, 11);
        am51[1] = new m(4, 12);
        ag12[3] = new g(22, am51);
        aq[12] = new q(13, ai12, ag12);
        int ai13[] = new int[4];
        ai13[0] = 6;
        ai13[1] = 26;
        ai13[2] = 46;
        ai13[3] = 66;
        g ag13[] = new g[4];
        m am52[] = new m[2];
        am52[0] = new m(3, 115);
        am52[1] = new m(1, 116);
        ag13[0] = new g(30, am52);
        m am53[] = new m[2];
        am53[0] = new m(4, 40);
        am53[1] = new m(5, 41);
        ag13[1] = new g(24, am53);
        m am54[] = new m[2];
        am54[0] = new m(11, 16);
        am54[1] = new m(5, 17);
        ag13[2] = new g(20, am54);
        m am55[] = new m[2];
        am55[0] = new m(11, 12);
        am55[1] = new m(5, 13);
        ag13[3] = new g(24, am55);
        aq[13] = new q(14, ai13, ag13);
        int ai14[] = new int[4];
        ai14[0] = 6;
        ai14[1] = 26;
        ai14[2] = 48;
        ai14[3] = 70;
        g ag14[] = new g[4];
        m am56[] = new m[2];
        am56[0] = new m(5, 87);
        am56[1] = new m(1, 88);
        ag14[0] = new g(22, am56);
        m am57[] = new m[2];
        am57[0] = new m(5, 41);
        am57[1] = new m(5, 42);
        ag14[1] = new g(24, am57);
        m am58[] = new m[2];
        am58[0] = new m(5, 24);
        am58[1] = new m(7, 25);
        ag14[2] = new g(30, am58);
        m am59[] = new m[2];
        am59[0] = new m(11, 12);
        am59[1] = new m(7, 13);
        ag14[3] = new g(24, am59);
        aq[14] = new q(15, ai14, ag14);
        int ai15[] = new int[4];
        ai15[0] = 6;
        ai15[1] = 26;
        ai15[2] = 50;
        ai15[3] = 74;
        g ag15[] = new g[4];
        m am60[] = new m[2];
        am60[0] = new m(5, 98);
        am60[1] = new m(1, 99);
        ag15[0] = new g(24, am60);
        m am61[] = new m[2];
        am61[0] = new m(7, 45);
        am61[1] = new m(3, 46);
        ag15[1] = new g(28, am61);
        m am62[] = new m[2];
        am62[0] = new m(15, 19);
        am62[1] = new m(2, 20);
        ag15[2] = new g(24, am62);
        m am63[] = new m[2];
        am63[0] = new m(3, 15);
        am63[1] = new m(13, 16);
        ag15[3] = new g(30, am63);
        aq[15] = new q(16, ai15, ag15);
        int ai16[] = new int[4];
        ai16[0] = 6;
        ai16[1] = 30;
        ai16[2] = 54;
        ai16[3] = 78;
        g ag16[] = new g[4];
        m am64[] = new m[2];
        am64[0] = new m(1, 107);
        am64[1] = new m(5, 108);
        ag16[0] = new g(28, am64);
        m am65[] = new m[2];
        am65[0] = new m(10, 46);
        am65[1] = new m(1, 47);
        ag16[1] = new g(28, am65);
        m am66[] = new m[2];
        am66[0] = new m(1, 22);
        am66[1] = new m(15, 23);
        ag16[2] = new g(28, am66);
        m am67[] = new m[2];
        am67[0] = new m(2, 14);
        am67[1] = new m(17, 15);
        ag16[3] = new g(28, am67);
        aq[16] = new q(17, ai16, ag16);
        int ai17[] = new int[4];
        ai17[0] = 6;
        ai17[1] = 30;
        ai17[2] = 56;
        ai17[3] = 82;
        g ag17[] = new g[4];
        m am68[] = new m[2];
        am68[0] = new m(5, 120);
        am68[1] = new m(1, 121);
        ag17[0] = new g(30, am68);
        m am69[] = new m[2];
        am69[0] = new m(9, 43);
        am69[1] = new m(4, 44);
        ag17[1] = new g(26, am69);
        m am70[] = new m[2];
        am70[0] = new m(17, 22);
        am70[1] = new m(1, 23);
        ag17[2] = new g(28, am70);
        m am71[] = new m[2];
        am71[0] = new m(2, 14);
        am71[1] = new m(19, 15);
        ag17[3] = new g(28, am71);
        aq[17] = new q(18, ai17, ag17);
        int ai18[] = new int[4];
        ai18[0] = 6;
        ai18[1] = 30;
        ai18[2] = 58;
        ai18[3] = 86;
        g ag18[] = new g[4];
        m am72[] = new m[2];
        am72[0] = new m(3, 113);
        am72[1] = new m(4, 114);
        ag18[0] = new g(28, am72);
        m am73[] = new m[2];
        am73[0] = new m(3, 44);
        am73[1] = new m(11, 45);
        ag18[1] = new g(26, am73);
        m am74[] = new m[2];
        am74[0] = new m(17, 21);
        am74[1] = new m(4, 22);
        ag18[2] = new g(26, am74);
        m am75[] = new m[2];
        am75[0] = new m(9, 13);
        am75[1] = new m(16, 14);
        ag18[3] = new g(26, am75);
        aq[18] = new q(19, ai18, ag18);
        int ai19[] = new int[4];
        ai19[0] = 6;
        ai19[1] = 34;
        ai19[2] = 62;
        ai19[3] = 90;
        g ag19[] = new g[4];
        m am76[] = new m[2];
        am76[0] = new m(3, 107);
        am76[1] = new m(5, 108);
        ag19[0] = new g(28, am76);
        m am77[] = new m[2];
        am77[0] = new m(3, 41);
        am77[1] = new m(13, 42);
        ag19[1] = new g(26, am77);
        m am78[] = new m[2];
        am78[0] = new m(15, 24);
        am78[1] = new m(5, 25);
        ag19[2] = new g(30, am78);
        m am79[] = new m[2];
        am79[0] = new m(15, 15);
        am79[1] = new m(10, 16);
        ag19[3] = new g(28, am79);
        aq[19] = new q(20, ai19, ag19);
        int ai20[] = new int[5];
        ai20[0] = 6;
        ai20[1] = 28;
        ai20[2] = 50;
        ai20[3] = 72;
        ai20[4] = 94;
        g ag20[] = new g[4];
        m am80[] = new m[2];
        am80[0] = new m(4, 116);
        am80[1] = new m(4, 117);
        ag20[0] = new g(28, am80);
        m am81[] = new m[1];
        am81[0] = new m(17, 42);
        ag20[1] = new g(26, am81);
        m am82[] = new m[2];
        am82[0] = new m(17, 22);
        am82[1] = new m(6, 23);
        ag20[2] = new g(28, am82);
        m am83[] = new m[2];
        am83[0] = new m(19, 16);
        am83[1] = new m(6, 17);
        ag20[3] = new g(30, am83);
        aq[20] = new q(21, ai20, ag20);
        int ai21[] = new int[5];
        ai21[0] = 6;
        ai21[1] = 26;
        ai21[2] = 50;
        ai21[3] = 74;
        ai21[4] = 98;
        g ag21[] = new g[4];
        m am84[] = new m[2];
        am84[0] = new m(2, 111);
        am84[1] = new m(7, 112);
        ag21[0] = new g(28, am84);
        m am85[] = new m[1];
        am85[0] = new m(17, 46);
        ag21[1] = new g(28, am85);
        m am86[] = new m[2];
        am86[0] = new m(7, 24);
        am86[1] = new m(16, 25);
        ag21[2] = new g(30, am86);
        m am87[] = new m[1];
        am87[0] = new m(34, 13);
        ag21[3] = new g(24, am87);
        aq[21] = new q(22, ai21, ag21);
        int ai22[] = new int[5];
        ai22[0] = 6;
        ai22[1] = 30;
        ai22[2] = 54;
        ai22[3] = 78;
        ai22[4] = 102;
        g ag22[] = new g[4];
        m am88[] = new m[2];
        am88[0] = new m(4, 121);
        am88[1] = new m(5, 122);
        ag22[0] = new g(30, am88);
        m am89[] = new m[2];
        am89[0] = new m(4, 47);
        am89[1] = new m(14, 48);
        ag22[1] = new g(28, am89);
        m am90[] = new m[2];
        am90[0] = new m(11, 24);
        am90[1] = new m(14, 25);
        ag22[2] = new g(30, am90);
        m am91[] = new m[2];
        am91[0] = new m(16, 15);
        am91[1] = new m(14, 16);
        ag22[3] = new g(30, am91);
        aq[22] = new q(23, ai22, ag22);
        int ai23[] = new int[5];
        ai23[0] = 6;
        ai23[1] = 28;
        ai23[2] = 54;
        ai23[3] = 80;
        ai23[4] = 106;
        g ag23[] = new g[4];
        m am92[] = new m[2];
        am92[0] = new m(6, 117);
        am92[1] = new m(4, 118);
        ag23[0] = new g(30, am92);
        m am93[] = new m[2];
        am93[0] = new m(6, 45);
        am93[1] = new m(14, 46);
        ag23[1] = new g(28, am93);
        m am94[] = new m[2];
        am94[0] = new m(11, 24);
        am94[1] = new m(16, 25);
        ag23[2] = new g(30, am94);
        m am95[] = new m[2];
        am95[0] = new m(30, 16);
        am95[1] = new m(2, 17);
        ag23[3] = new g(30, am95);
        aq[23] = new q(24, ai23, ag23);
        int ai24[] = new int[5];
        ai24[0] = 6;
        ai24[1] = 32;
        ai24[2] = 58;
        ai24[3] = 84;
        ai24[4] = 110;
        g ag24[] = new g[4];
        m am96[] = new m[2];
        am96[0] = new m(8, 106);
        am96[1] = new m(4, 107);
        ag24[0] = new g(26, am96);
        m am97[] = new m[2];
        am97[0] = new m(8, 47);
        am97[1] = new m(13, 48);
        ag24[1] = new g(28, am97);
        m am98[] = new m[2];
        am98[0] = new m(7, 24);
        am98[1] = new m(22, 25);
        ag24[2] = new g(30, am98);
        m am99[] = new m[2];
        am99[0] = new m(22, 15);
        am99[1] = new m(13, 16);
        ag24[3] = new g(30, am99);
        aq[24] = new q(25, ai24, ag24);
        int ai25[] = new int[5];
        ai25[0] = 6;
        ai25[1] = 30;
        ai25[2] = 58;
        ai25[3] = 86;
        ai25[4] = 114;
        g ag25[] = new g[4];
        m am100[] = new m[2];
        am100[0] = new m(10, 114);
        am100[1] = new m(2, 115);
        ag25[0] = new g(28, am100);
        m am101[] = new m[2];
        am101[0] = new m(19, 46);
        am101[1] = new m(4, 47);
        ag25[1] = new g(28, am101);
        m am102[] = new m[2];
        am102[0] = new m(28, 22);
        am102[1] = new m(6, 23);
        ag25[2] = new g(28, am102);
        m am103[] = new m[2];
        am103[0] = new m(33, 16);
        am103[1] = new m(4, 17);
        ag25[3] = new g(30, am103);
        aq[25] = new q(26, ai25, ag25);
        int ai26[] = new int[5];
        ai26[0] = 6;
        ai26[1] = 34;
        ai26[2] = 62;
        ai26[3] = 90;
        ai26[4] = 118;
        g ag26[] = new g[4];
        m am104[] = new m[2];
        am104[0] = new m(8, 122);
        am104[1] = new m(4, 123);
        ag26[0] = new g(30, am104);
        m am105[] = new m[2];
        am105[0] = new m(22, 45);
        am105[1] = new m(3, 46);
        ag26[1] = new g(28, am105);
        m am106[] = new m[2];
        am106[0] = new m(8, 23);
        am106[1] = new m(26, 24);
        ag26[2] = new g(30, am106);
        m am107[] = new m[2];
        am107[0] = new m(12, 15);
        am107[1] = new m(28, 16);
        ag26[3] = new g(30, am107);
        aq[26] = new q(27, ai26, ag26);
        int ai27[] = new int[6];
        ai27[0] = 6;
        ai27[1] = 26;
        ai27[2] = 50;
        ai27[3] = 74;
        ai27[4] = 98;
        ai27[5] = 122;
        g ag27[] = new g[4];
        m am108[] = new m[2];
        am108[0] = new m(3, 117);
        am108[1] = new m(10, 118);
        ag27[0] = new g(30, am108);
        m am109[] = new m[2];
        am109[0] = new m(3, 45);
        am109[1] = new m(23, 46);
        ag27[1] = new g(28, am109);
        m am110[] = new m[2];
        am110[0] = new m(4, 24);
        am110[1] = new m(31, 25);
        ag27[2] = new g(30, am110);
        m am111[] = new m[2];
        am111[0] = new m(11, 15);
        am111[1] = new m(31, 16);
        ag27[3] = new g(30, am111);
        aq[27] = new q(28, ai27, ag27);
        int ai28[] = new int[6];
        ai28[0] = 6;
        ai28[1] = 30;
        ai28[2] = 54;
        ai28[3] = 78;
        ai28[4] = 102;
        ai28[5] = 126;
        g ag28[] = new g[4];
        m am112[] = new m[2];
        am112[0] = new m(7, 116);
        am112[1] = new m(7, 117);
        ag28[0] = new g(30, am112);
        m am113[] = new m[2];
        am113[0] = new m(21, 45);
        am113[1] = new m(7, 46);
        ag28[1] = new g(28, am113);
        m am114[] = new m[2];
        am114[0] = new m(1, 23);
        am114[1] = new m(37, 24);
        ag28[2] = new g(30, am114);
        m am115[] = new m[2];
        am115[0] = new m(19, 15);
        am115[1] = new m(26, 16);
        ag28[3] = new g(30, am115);
        aq[28] = new q(29, ai28, ag28);
        int ai29[] = new int[6];
        ai29[0] = 6;
        ai29[1] = 26;
        ai29[2] = 52;
        ai29[3] = 78;
        ai29[4] = 104;
        ai29[5] = 130;
        g ag29[] = new g[4];
        m am116[] = new m[2];
        am116[0] = new m(5, 115);
        am116[1] = new m(10, 116);
        ag29[0] = new g(30, am116);
        m am117[] = new m[2];
        am117[0] = new m(19, 47);
        am117[1] = new m(10, 48);
        ag29[1] = new g(28, am117);
        m am118[] = new m[2];
        am118[0] = new m(15, 24);
        am118[1] = new m(25, 25);
        ag29[2] = new g(30, am118);
        m am119[] = new m[2];
        am119[0] = new m(23, 15);
        am119[1] = new m(25, 16);
        ag29[3] = new g(30, am119);
        aq[29] = new q(30, ai29, ag29);
        int ai30[] = new int[6];
        ai30[0] = 6;
        ai30[1] = 30;
        ai30[2] = 56;
        ai30[3] = 82;
        ai30[4] = 108;
        ai30[5] = 134;
        g ag30[] = new g[4];
        m am120[] = new m[2];
        am120[0] = new m(13, 115);
        am120[1] = new m(3, 116);
        ag30[0] = new g(30, am120);
        m am121[] = new m[2];
        am121[0] = new m(2, 46);
        am121[1] = new m(29, 47);
        ag30[1] = new g(28, am121);
        m am122[] = new m[2];
        am122[0] = new m(42, 24);
        am122[1] = new m(1, 25);
        ag30[2] = new g(30, am122);
        m am123[] = new m[2];
        am123[0] = new m(23, 15);
        am123[1] = new m(28, 16);
        ag30[3] = new g(30, am123);
        aq[30] = new q(31, ai30, ag30);
        int ai31[] = new int[6];
        ai31[0] = 6;
        ai31[1] = 34;
        ai31[2] = 60;
        ai31[3] = 86;
        ai31[4] = 112;
        ai31[5] = 138;
        g ag31[] = new g[4];
        m am124[] = new m[1];
        am124[0] = new m(17, 115);
        ag31[0] = new g(30, am124);
        m am125[] = new m[2];
        am125[0] = new m(10, 46);
        am125[1] = new m(23, 47);
        ag31[1] = new g(28, am125);
        m am126[] = new m[2];
        am126[0] = new m(10, 24);
        am126[1] = new m(35, 25);
        ag31[2] = new g(30, am126);
        m am127[] = new m[2];
        am127[0] = new m(19, 15);
        am127[1] = new m(35, 16);
        ag31[3] = new g(30, am127);
        aq[31] = new q(32, ai31, ag31);
        int ai32[] = new int[6];
        ai32[0] = 6;
        ai32[1] = 30;
        ai32[2] = 58;
        ai32[3] = 86;
        ai32[4] = 114;
        ai32[5] = 142;
        g ag32[] = new g[4];
        m am128[] = new m[2];
        am128[0] = new m(17, 115);
        am128[1] = new m(1, 116);
        ag32[0] = new g(30, am128);
        m am129[] = new m[2];
        am129[0] = new m(14, 46);
        am129[1] = new m(21, 47);
        ag32[1] = new g(28, am129);
        m am130[] = new m[2];
        am130[0] = new m(29, 24);
        am130[1] = new m(19, 25);
        ag32[2] = new g(30, am130);
        m am131[] = new m[2];
        am131[0] = new m(11, 15);
        am131[1] = new m(46, 16);
        ag32[3] = new g(30, am131);
        aq[32] = new q(33, ai32, ag32);
        int ai33[] = new int[6];
        ai33[0] = 6;
        ai33[1] = 34;
        ai33[2] = 62;
        ai33[3] = 90;
        ai33[4] = 118;
        ai33[5] = 146;
        g ag33[] = new g[4];
        m am132[] = new m[2];
        am132[0] = new m(13, 115);
        am132[1] = new m(6, 116);
        ag33[0] = new g(30, am132);
        m am133[] = new m[2];
        am133[0] = new m(14, 46);
        am133[1] = new m(23, 47);
        ag33[1] = new g(28, am133);
        m am134[] = new m[2];
        am134[0] = new m(44, 24);
        am134[1] = new m(7, 25);
        ag33[2] = new g(30, am134);
        m am135[] = new m[2];
        am135[0] = new m(59, 16);
        am135[1] = new m(1, 17);
        ag33[3] = new g(30, am135);
        aq[33] = new q(34, ai33, ag33);
        int ai34[] = new int[7];
        ai34[0] = 6;
        ai34[1] = 30;
        ai34[2] = 54;
        ai34[3] = 78;
        ai34[4] = 102;
        ai34[5] = 126;
        ai34[6] = 150;
        g ag34[] = new g[4];
        m am136[] = new m[2];
        am136[0] = new m(12, 121);
        am136[1] = new m(7, 122);
        ag34[0] = new g(30, am136);
        m am137[] = new m[2];
        am137[0] = new m(12, 47);
        am137[1] = new m(26, 48);
        ag34[1] = new g(28, am137);
        m am138[] = new m[2];
        am138[0] = new m(39, 24);
        am138[1] = new m(14, 25);
        ag34[2] = new g(30, am138);
        m am139[] = new m[2];
        am139[0] = new m(22, 15);
        am139[1] = new m(41, 16);
        ag34[3] = new g(30, am139);
        aq[34] = new q(35, ai34, ag34);
        int ai35[] = new int[7];
        ai35[0] = 6;
        ai35[1] = 24;
        ai35[2] = 50;
        ai35[3] = 76;
        ai35[4] = 102;
        ai35[5] = 128;
        ai35[6] = 154;
        g ag35[] = new g[4];
        m am140[] = new m[2];
        am140[0] = new m(6, 121);
        am140[1] = new m(14, 122);
        ag35[0] = new g(30, am140);
        m am141[] = new m[2];
        am141[0] = new m(6, 47);
        am141[1] = new m(34, 48);
        ag35[1] = new g(28, am141);
        m am142[] = new m[2];
        am142[0] = new m(46, 24);
        am142[1] = new m(10, 25);
        ag35[2] = new g(30, am142);
        m am143[] = new m[2];
        am143[0] = new m(2, 15);
        am143[1] = new m(64, 16);
        ag35[3] = new g(30, am143);
        aq[35] = new q(36, ai35, ag35);
        int ai36[] = new int[7];
        ai36[0] = 6;
        ai36[1] = 28;
        ai36[2] = 54;
        ai36[3] = 80;
        ai36[4] = 106;
        ai36[5] = 132;
        ai36[6] = 158;
        g ag36[] = new g[4];
        m am144[] = new m[2];
        am144[0] = new m(17, 122);
        am144[1] = new m(4, 123);
        ag36[0] = new g(30, am144);
        m am145[] = new m[2];
        am145[0] = new m(29, 46);
        am145[1] = new m(14, 47);
        ag36[1] = new g(28, am145);
        m am146[] = new m[2];
        am146[0] = new m(49, 24);
        am146[1] = new m(10, 25);
        ag36[2] = new g(30, am146);
        m am147[] = new m[2];
        am147[0] = new m(24, 15);
        am147[1] = new m(46, 16);
        ag36[3] = new g(30, am147);
        aq[36] = new q(37, ai36, ag36);
        int ai37[] = new int[7];
        ai37[0] = 6;
        ai37[1] = 32;
        ai37[2] = 58;
        ai37[3] = 84;
        ai37[4] = 110;
        ai37[5] = 136;
        ai37[6] = 162;
        g ag37[] = new g[4];
        m am148[] = new m[2];
        am148[0] = new m(4, 122);
        am148[1] = new m(18, 123);
        ag37[0] = new g(30, am148);
        m am149[] = new m[2];
        am149[0] = new m(13, 46);
        am149[1] = new m(32, 47);
        ag37[1] = new g(28, am149);
        m am150[] = new m[2];
        am150[0] = new m(48, 24);
        am150[1] = new m(14, 25);
        ag37[2] = new g(30, am150);
        m am151[] = new m[2];
        am151[0] = new m(42, 15);
        am151[1] = new m(32, 16);
        ag37[3] = new g(30, am151);
        aq[37] = new q(38, ai37, ag37);
        int ai38[] = new int[7];
        ai38[0] = 6;
        ai38[1] = 26;
        ai38[2] = 54;
        ai38[3] = 82;
        ai38[4] = 110;
        ai38[5] = 138;
        ai38[6] = 166;
        g ag38[] = new g[4];
        m am152[] = new m[2];
        am152[0] = new m(20, 117);
        am152[1] = new m(4, 118);
        ag38[0] = new g(30, am152);
        m am153[] = new m[2];
        am153[0] = new m(40, 47);
        am153[1] = new m(7, 48);
        ag38[1] = new g(28, am153);
        m am154[] = new m[2];
        am154[0] = new m(43, 24);
        am154[1] = new m(22, 25);
        ag38[2] = new g(30, am154);
        m am155[] = new m[2];
        am155[0] = new m(10, 15);
        am155[1] = new m(67, 16);
        ag38[3] = new g(30, am155);
        aq[38] = new q(39, ai38, ag38);
        int ai39[] = new int[7];
        ai39[0] = 6;
        ai39[1] = 30;
        ai39[2] = 58;
        ai39[3] = 86;
        ai39[4] = 114;
        ai39[5] = 142;
        ai39[6] = 170;
        g ag39[] = new g[4];
        m am156[] = new m[2];
        am156[0] = new m(19, 118);
        am156[1] = new m(6, 119);
        ag39[0] = new g(30, am156);
        m am157[] = new m[2];
        am157[0] = new m(18, 47);
        am157[1] = new m(31, 48);
        ag39[1] = new g(28, am157);
        m am158[] = new m[2];
        am158[0] = new m(34, 24);
        am158[1] = new m(34, 25);
        ag39[2] = new g(30, am158);
        m am159[] = new m[2];
        am159[0] = new m(20, 15);
        am159[1] = new m(61, 16);
        ag39[3] = new g(30, am159);
        aq[39] = new q(40, ai39, ag39);
        return aq;
    }

    public final int a()
    {
        return c;
    }

    public final g a(b b1)
    {
        return e[b1.ordinal()];
    }

    public final int[] b()
    {
        return d;
    }

    public final int c()
    {
        return f;
    }

    public final int d()
    {
        return 17 + 4 * c;
    }

    final a e()
    {
        int i;
        a a1;
        int j;
        int k;
        i = d();
        a1 = new a(i);
        a1.a(0, 0, 9, 9);
        a1.a(i + -8, 0, 8, 9);
        a1.a(0, i + -8, 9, 8);
        j = d.length;
        k = 0;
_L2:
        if(k >= j)
        {
            a1.a(6, 9, 1, i + -17);
            a1.a(9, 6, i + -17, 1);
            if(c > 6)
            {
                a1.a(i + -11, 0, 3, 6);
                a1.a(0, i + -11, 6, 3);
            }
            return a1;
        }
        int l = -2 + d[k];
        int i1 = 0;
        do
        {
label0:
            {
                if(i1 < j)
                    break label0;
                k++;
            }
            if(true)
                continue;
            if((k != 0 || i1 != 0 && i1 != j + -1) && (k != j + -1 || i1 != 0))
                a1.a(-2 + d[i1], l, 5, 5);
            i1++;
        } while(true);
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final String toString()
    {
        return String.valueOf(c);
    }

    private static final int a[];
    private static final q b[] = f();
    private final int c;
    private final int d[];
    private final g e[];
    private final int f;

    static 
    {
        int ai[] = new int[34];
        ai[0] = 31892;
        ai[1] = 34236;
        ai[2] = 39577;
        ai[3] = 42195;
        ai[4] = 48118;
        ai[5] = 51042;
        ai[6] = 55367;
        ai[7] = 58893;
        ai[8] = 63784;
        ai[9] = 0x10b78;
        ai[10] = 0x1145d;
        ai[11] = 0x12a17;
        ai[12] = 0x13532;
        ai[13] = 0x149a6;
        ai[14] = 0x15683;
        ai[15] = 0x168c9;
        ai[16] = 0x177ec;
        ai[17] = 0x18ec4;
        ai[18] = 0x191e1;
        ai[19] = 0x1afab;
        ai[20] = 0x1b08e;
        ai[21] = 0x1cc1a;
        ai[22] = 0x1d33f;
        ai[23] = 0x1ed75;
        ai[24] = 0x1f250;
        ai[25] = 0x209d5;
        ai[26] = 0x216f0;
        ai[27] = 0x228ba;
        ai[28] = 0x2379f;
        ai[29] = 0x24b0b;
        ai[30] = 0x2542e;
        ai[31] = 0x26a64;
        ai[32] = 0x27541;
        ai[33] = 0x28c69;
        a = ai;
    }
}
