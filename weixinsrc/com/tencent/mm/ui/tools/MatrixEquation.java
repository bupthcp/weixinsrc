// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import java.lang.reflect.Array;

public class MatrixEquation
{

    public MatrixEquation()
    {
    }

    public static float[] a(float af[][], float af1[])
    {
        int i = af1.length;
        float af2[] = new float[i];
        for(int j = 0; j < i; j++)
        {
            float f = 0F;
            for(int k = 0; k < i; k++)
                f += af[j][k] * af1[k];

            af2[j] = f;
        }

        return af2;
    }

    public static float[][] a(float af[][])
    {
        int ai[] = new int[2];
        ai[0] = 3;
        ai[1] = 3;
        float af1[][] = (float[][])Array.newInstance(Float.TYPE, ai);
        for(int i = 0; i < 3; i++)
        {
            int l1 = 0;
            while(l1 < 3) 
            {
                float af2[] = af1[i];
                float f4;
                if(i == l1)
                    f4 = 1F;
                else
                    f4 = 0F;
                af2[l1] = f4;
                l1++;
            }
        }

        for(int j = 0; j < 3; j++)
        {
            float f = af[j][j];
            if(f == 0F)
            {
                int j1 = j + 1;
                do
                {
                    if(j1 >= 3)
                        break;
                    if(af[j1][j] != 0F)
                    {
                        for(int k1 = 0; k1 < 3; k1++)
                        {
                            float f2 = af[j1][k1];
                            af[j1][k1] = af[j][k1];
                            af[j][k1] = f2;
                            float f3 = af1[j1][k1];
                            af1[j1][k1] = af1[j][k1];
                            af1[j][k1] = f3;
                        }

                        break;
                    }
                    j1++;
                } while(true);
                f = af[j][j];
            }
            for(int k = 0; k < 3; k++)
            {
                af[j][k] = af[j][k] / f;
                af1[j][k] = af1[j][k] / f;
            }

            for(int l = 0; l < 3; l++)
            {
                if(l == j)
                    continue;
                float f1 = af[l][j];
                for(int i1 = 0; i1 < 3; i1++)
                {
                    af[l][i1] = af[l][i1] - f1 * af[j][i1];
                    af1[l][i1] = af1[l][i1] - f1 * af1[j][i1];
                }

            }

        }

        return af1;
    }
}
