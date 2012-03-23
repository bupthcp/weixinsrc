// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.*;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.*;
import b.a.q;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.modelemoji.EmojiLogic;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.ui.MMActivity;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Field;

// Referenced classes of package com.tencent.mm.ui.tools:
//            FrameIV, MatrixEquation

public class CropImageUI extends MMActivity
{

    public CropImageUI()
    {
        a = true;
        b = false;
        c = false;
        d = false;
        q = 0;
        r = 0;
        w = 0;
        x = 0;
        y = true;
    }

    private static float a(float f1, float f2, float f3, float f4, float f5)
    {
        return f3 + (f4 * f1 - f5 * f2);
    }

    static float a(CropImageUI cropimageui, float f1)
    {
        cropimageui.k = f1;
        return f1;
    }

    static long a(CropImageUI cropimageui, long l1)
    {
        cropimageui.o = l1;
        return l1;
    }

    private Bitmap a(int i1, int j1)
    {
        Bitmap bitmap = Util.a(getIntent().getStringExtra("CropImage_ImgPath"), j1, i1, true);
        if(r != 0)
        {
            Matrix matrix = new Matrix();
            matrix.reset();
            matrix.setRotate(r, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
            Bitmap bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            bitmap.recycle();
            bitmap = bitmap1;
        }
        float f1 = (1F * (float)i1) / (float)bitmap.getWidth();
        float f2 = (1F * (float)j1) / (float)bitmap.getHeight();
        if(f1 > f2)
            f2 = f1;
        Matrix matrix1 = new Matrix();
        matrix1.reset();
        matrix1.postScale(f2, f2);
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("getCopeBackImg: tw").append(bitmap.getWidth()).append("  th:").append(bitmap.getHeight()).append(" imgW:").append(i1).append(" imgH:").append(j1).append(" maxS:").append(f2).toString());
        int k1 = (int)(((float)bitmap.getWidth() - (float)i1 / f2) / 2F);
        int l1 = (int)(((float)bitmap.getHeight() - (float)j1 / f2) / 2F);
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("offW:").append(k1).append(" offH:").append(l1).toString());
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap, k1, l1, bitmap.getWidth() - k1 * 2, bitmap.getHeight() - l1 * 2, matrix1, true);
        bitmap.recycle();
        return bitmap2;
    }

    private static boolean a(Bitmap bitmap, String s1)
    {
        if(s1 == null || s1.equals("")) goto _L2; else goto _L1
_L1:
        Util.a(bitmap, 100, android.graphics.Bitmap.CompressFormat.PNG, "", s1);
        boolean flag = true;
_L4:
        return flag;
        IOException ioexception;
        ioexception;
_L2:
        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    static boolean a(CropImageUI cropimageui)
    {
        return cropimageui.d;
    }

    static boolean a(CropImageUI cropimageui, boolean flag)
    {
        cropimageui.p = flag;
        return flag;
    }

    private static float[][] a(Matrix matrix)
    {
        int ai[] = new int[2];
        ai[0] = 3;
        ai[1] = 3;
        float af[][] = (float[][])Array.newInstance(Float.TYPE, ai);
        float af1[] = new float[9];
        matrix.getValues(af1);
        for(int i1 = 0; i1 < 3; i1++)
        {
            for(int j1 = 0; j1 < 3; j1++)
                af[i1][j1] = af1[j1 + i1 * 3];

        }

        return af;
    }

    private static float b(float f1, float f2, float f3, float f4, float f5)
    {
        return f3 + (f4 * f2 + f5 * f1);
    }

    static float b(CropImageUI cropimageui)
    {
        return cropimageui.k;
    }

    static float b(CropImageUI cropimageui, float f1)
    {
        cropimageui.l = f1;
        return f1;
    }

    static float c(CropImageUI cropimageui)
    {
        return cropimageui.l;
    }

    static float c(CropImageUI cropimageui, float f1)
    {
        cropimageui.m = f1;
        return f1;
    }

    static float d(CropImageUI cropimageui, float f1)
    {
        cropimageui.n = f1;
        return f1;
    }

    static ImageView d(CropImageUI cropimageui)
    {
        return cropimageui.f;
    }

    static Bitmap e(CropImageUI cropimageui)
    {
        return cropimageui.i;
    }

    static boolean f(CropImageUI cropimageui)
    {
        return cropimageui.a;
    }

    static boolean g(CropImageUI cropimageui)
    {
        return cropimageui.p;
    }

    static float h(CropImageUI cropimageui)
    {
        return cropimageui.m;
    }

    static float i(CropImageUI cropimageui)
    {
        return cropimageui.n;
    }

    static long j(CropImageUI cropimageui)
    {
        return cropimageui.o;
    }

    static void k(CropImageUI cropimageui)
    {
        if(cropimageui.e.getVisibility() != 0) goto _L2; else goto _L1
_L1:
        cropimageui.e.setVisibility(4);
_L4:
        return;
_L2:
        if(cropimageui.e.getVisibility() == 4)
            cropimageui.e.setVisibility(0);
        if(true) goto _L4; else goto _L3
_L3:
    }

    static void l(CropImageUI cropimageui)
    {
        int i1;
        Rect rect = new Rect();
        cropimageui.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        i1 = rect.top;
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("window TitleBar.h:").append(i1).toString());
        if(i1 != 0)
            break MISSING_BLOCK_LABEL_378;
        Class class1 = Class.forName("com.android.internal.R$dimen");
        Object obj = class1.newInstance();
        int l2 = Integer.parseInt(class1.getField("status_bar_height").get(obj).toString());
        i1 = cropimageui.getResources().getDimensionPixelSize(l2);
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("sbar:").append(i1).toString());
        int j1 = i1;
_L1:
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)cropimageui.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        int k1 = j1 + (int)((double)(67F * displaymetrics.density) / 1.5D);
        boolean flag;
        int l1;
        int i2;
        FrameIV frameiv;
        int j2;
        int k2;
        Exception exception;
        if(displaymetrics.widthPixels < displaymetrics.heightPixels)
            flag = true;
        else
            flag = false;
        cropimageui.y = flag;
        l1 = Math.min(displaymetrics.widthPixels, displaymetrics.heightPixels);
        i2 = Math.max(displaymetrics.widthPixels, displaymetrics.heightPixels);
        cropimageui.s = l1;
        cropimageui.t = i2 - k1;
        cropimageui.u = i2;
        cropimageui.v = l1 - k1;
        cropimageui.w = (int)(((double)cropimageui.h.getWidth() - (1D * (double)(cropimageui.h.getHeight() * cropimageui.s)) / (double)cropimageui.t) / 2D);
        cropimageui.x = (int)(((double)cropimageui.h.getHeight() - (1D * (double)(cropimageui.h.getWidth() * cropimageui.v)) / (double)cropimageui.u) / 2D);
        frameiv = cropimageui.h;
        j2 = cropimageui.w;
        k2 = cropimageui.x;
        frameiv.a = j2;
        frameiv.b = k2;
        cropimageui.h.postInvalidate();
        return;
        exception;
        j1 = i1;
          goto _L1
    }

    static void m(CropImageUI cropimageui)
    {
        int i1;
        int j1;
        String s1;
        View view = cropimageui.findViewById(0x7f07010e);
        i1 = view.getWidth();
        j1 = view.getHeight();
        s1 = cropimageui.getIntent().getStringExtra("CropImage_ImgPath");
        if(FileOperation.c(s1)) goto _L2; else goto _L1
_L1:
        cropimageui.finish();
_L4:
        return;
_L2:
        Matrix matrix;
        float f5;
        Bitmap bitmap;
        if(cropimageui.d)
        {
            Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("isV:").append(cropimageui.y).append(" vW:").append(cropimageui.s).append(" vH:").append(cropimageui.t).append(" hW:").append(cropimageui.u).append(" hH:").append(cropimageui.v).toString());
            int k1;
            int l1;
            if(cropimageui.y)
                k1 = cropimageui.t;
            else
                k1 = cropimageui.v;
            if(cropimageui.y)
                l1 = cropimageui.s;
            else
                l1 = cropimageui.u;
            bitmap = Util.a(s1, k1, l1, true);
            cropimageui.a = true;
        } else
        {
            char c1;
            char c2;
            if(cropimageui.c)
                c1 = '\226';
            else
                c1 = '\u03C0';
            if(cropimageui.c)
                c2 = '\226';
            else
                c2 = '\u03C0';
            bitmap = Util.a(s1, c1, c2, false);
        }
        if(bitmap == null)
        {
            cropimageui.finish();
            continue; /* Loop/switch isn't completed */
        }
        cropimageui.r = b.a.q.a(s1);
        matrix = new Matrix();
        float f11;
        if(cropimageui.r != 0)
        {
            matrix.reset();
            matrix.setRotate(cropimageui.r, bitmap.getWidth() / 2, bitmap.getHeight() / 2);
            cropimageui.i = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
            bitmap.recycle();
        } else
        {
            cropimageui.i = bitmap;
        }
        matrix.reset();
        if(!cropimageui.d)
            break; /* Loop/switch isn't completed */
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("w:").append(i1).append(" h").append(j1).toString());
        f5 = (1F * (float)i1) / (float)cropimageui.i.getWidth();
        f11 = (1F * (float)j1) / (float)cropimageui.i.getHeight();
        if(f5 <= f11)
            f5 = f11;
        matrix.postScale(f5, f5);
        Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("offsetScale:").append(f5).toString());
_L5:
        matrix.postTranslate(((float)i1 - f5 * (float)cropimageui.i.getWidth()) / 2F, ((float)j1 - f5 * (float)cropimageui.i.getHeight()) / 2F);
        cropimageui.f.setImageMatrix(matrix);
        cropimageui.f.setImageBitmap(cropimageui.i);
        cropimageui.f.setOnTouchListener(cropimageui. new _cls1());
        if(true) goto _L4; else goto _L3
_L3:
        if(cropimageui.a)
        {
            float f6 = (float)cropimageui.i.getWidth() / (float)i1;
            float f7 = (float)cropimageui.i.getHeight() / (float)j1;
            float f8;
            float f9;
            float f10;
            if(f6 < f7)
                f8 = f6;
            else
                f8 = f7;
            if(i1 > j1)
                f9 = j1;
            else
                f9 = i1;
            f10 = f9 / (float)cropimageui.i.getWidth();
            f5 = f9 / (float)cropimageui.i.getHeight();
            if(f10 > f5)
                f5 = f10;
            if((double)f8 >= 1D)
                break MISSING_BLOCK_LABEL_797;
            matrix.postScale(f5, f5);
        } else
        {
            float f1 = (float)cropimageui.i.getWidth() / (float)i1;
            float f2 = (float)cropimageui.i.getHeight() / (float)j1;
            float f3;
            float f4;
            if(f1 <= f2)
                f1 = f2;
            f3 = (float)i1 / (float)cropimageui.i.getWidth();
            f4 = (float)j1 / (float)cropimageui.i.getHeight();
            if(f3 >= f4)
                f3 = f4;
            if((double)f1 <= 1D)
                break MISSING_BLOCK_LABEL_797;
            matrix.postScale(f3, f3);
            f5 = f3;
        }
          goto _L5
        f5 = 1F;
          goto _L5
    }

    static void n(CropImageUI cropimageui)
    {
        float af[] = new float[2];
        af[0] = cropimageui.i.getWidth() / 2;
        af[1] = cropimageui.i.getHeight() / 2;
        cropimageui.f.getImageMatrix().mapPoints(af);
        cropimageui.f.getImageMatrix().postRotate(90F, af[0], af[1]);
        cropimageui.f.setImageBitmap(cropimageui.i);
        cropimageui.f.invalidate();
        cropimageui.q = 1 + cropimageui.q;
    }

    static void o(CropImageUI cropimageui)
    {
        float af[] = new float[2];
        float af1[] = new float[2];
        af[0] = cropimageui.i.getWidth() / 2;
        af[1] = cropimageui.i.getHeight() / 2;
        af1[0] = cropimageui.i.getWidth() / 2;
        af1[1] = cropimageui.i.getHeight() / 2;
        cropimageui.f.getImageMatrix().mapPoints(af);
        cropimageui.f.getImageMatrix().postScale(1.0666F, 1.0666F);
        cropimageui.f.getImageMatrix().mapPoints(af1);
        cropimageui.f.getImageMatrix().postTranslate(af[0] - af1[0], af[1] - af1[1]);
        cropimageui.f.setImageBitmap(cropimageui.i);
        cropimageui.f.invalidate();
    }

    static void p(CropImageUI cropimageui)
    {
        Matrix matrix = new Matrix(cropimageui.f.getImageMatrix());
        if(!cropimageui.d) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        int k1;
        float f1;
        float f2;
        float f3;
        float f4;
        int l1;
        int i2;
        float af2[] = new float[2];
        float af3[] = new float[2];
        af2[0] = cropimageui.i.getWidth() / 2;
        af2[1] = cropimageui.i.getHeight() / 2;
        af3[0] = cropimageui.i.getWidth() / 2;
        af3[1] = cropimageui.i.getHeight() / 2;
        matrix.mapPoints(af2);
        matrix.postScale(0.9375F, 0.9375F);
        matrix.mapPoints(af3);
        matrix.postTranslate(af2[0] - af3[0], af2[1] - af3[1]);
        i1 = cropimageui.h.getLeft();
        j1 = cropimageui.h.getTop();
        k1 = cropimageui.h.getWidth();
        float af4[] = new float[9];
        matrix.getValues(af4);
        f1 = 0F + af4[2];
        f2 = 0F + af4[5];
        f3 = af4[0];
        f4 = af4[3];
        l1 = cropimageui.i.getWidth();
        i2 = cropimageui.i.getHeight();
        cropimageui.q % 4;
        JVM INSTR tableswitch 0 3: default 260
    //                   0 411
    //                   1 511
    //                   2 611
    //                   3 711;
           goto _L3 _L4 _L5 _L6 _L7
_L3:
        boolean flag = false;
_L10:
        if(flag) goto _L8; else goto _L2
_L2:
        float af[] = new float[2];
        float af1[] = new float[2];
        af[0] = cropimageui.i.getWidth() / 2;
        af[1] = cropimageui.i.getHeight() / 2;
        af1[0] = cropimageui.i.getWidth() / 2;
        af1[1] = cropimageui.i.getHeight() / 2;
        cropimageui.f.getImageMatrix().mapPoints(af);
        cropimageui.f.getImageMatrix().postScale(0.9375F, 0.9375F);
        cropimageui.f.getImageMatrix().mapPoints(af1);
        cropimageui.f.getImageMatrix().postTranslate(af[0] - af1[0], af[1] - af1[1]);
        cropimageui.f.setImageBitmap(cropimageui.i);
        cropimageui.f.invalidate();
_L8:
        return;
_L4:
        if(a(f3, f4, f1, 0F, 0F) <= (float)i1 && a(f3, f4, f1, l1, 0F) >= (float)(i1 + k1) && b(f3, f4, f2, 0F, 0F) <= (float)j1 && b(f3, f4, f2, 0F, i2) >= (float)(j1 + k1)) goto _L3; else goto _L9
_L9:
        flag = true;
          goto _L10
_L5:
        if(a(f3, f4, f1, 0F, i2) <= (float)i1 && a(f3, f4, f1, 0F, 0F) >= (float)(i1 + k1) && b(f3, f4, f2, 0F, 0F) <= (float)j1 && b(f3, f4, f2, l1, 0F) >= (float)(j1 + k1)) goto _L3; else goto _L11
_L11:
        flag = true;
          goto _L10
_L6:
        if(a(f3, f4, f1, l1, 0F) <= (float)i1 && a(f3, f4, f1, 0F, 0F) >= (float)(i1 + k1) && b(f3, f4, f2, 0F, i2) <= (float)j1 && b(f3, f4, f2, 0F, 0F) >= (float)(j1 + k1)) goto _L3; else goto _L12
_L12:
        flag = true;
          goto _L10
_L7:
        if(a(f3, f4, f1, 0F, 0F) <= (float)i1 && a(f3, f4, f1, 0F, i2) >= (float)(i1 + k1) && b(f3, f4, f2, l1, 0F) <= (float)j1 && b(f3, f4, f2, 0F, 0F) >= (float)(j1 + k1)) goto _L3; else goto _L13
_L13:
        flag = true;
          goto _L10
    }

    static boolean q(CropImageUI cropimageui)
    {
        return cropimageui.c;
    }

    static void r(CropImageUI cropimageui)
    {
        int ai[] = new int[cropimageui.i.getWidth() * cropimageui.i.getHeight()];
        cropimageui.i.getPixels(ai, 0, cropimageui.i.getWidth(), 0, 0, cropimageui.i.getWidth(), cropimageui.i.getHeight());
        EmojiLogic.extractForeground(ai, cropimageui.i.getWidth(), cropimageui.i.getHeight());
        Log.d("MicroMsg.CropImageUI", (new StringBuilder()).append("this img is mutable:").append(cropimageui.i.isMutable()).append(", size:width=").append(cropimageui.i.getWidth()).append(", height=").append(cropimageui.i.getHeight()).toString());
        cropimageui.j = Bitmap.createBitmap(ai, cropimageui.i.getWidth(), cropimageui.i.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
    }

    static void s(CropImageUI cropimageui)
    {
        String s1;
        String s2;
        s1 = cropimageui.getIntent().getStringExtra("CropImage_OutputPath");
        s2 = MD5.a((new StringBuilder()).append("").append(System.currentTimeMillis()).toString().getBytes());
        if(cropimageui.j == null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = cropimageui.j;
_L3:
        Util.a(bitmap, 100, android.graphics.Bitmap.CompressFormat.PNG, (new StringBuilder()).append(s1).append(s2).toString());
        int i1 = FileOperation.a((new StringBuilder()).append(s1).append(s2).toString());
        String s3 = MD5.a(FileOperation.a((new StringBuilder()).append(s1).append(s2).toString(), 0, i1));
        FileOperation.a(s1, s2, s3);
        cropimageui.setResult(-1, (new Intent()).putExtra("CropImage_OutputPath", (new StringBuilder()).append(s1).append(s3).toString()));
_L4:
        cropimageui.finish();
        return;
_L2:
        bitmap = cropimageui.i;
          goto _L3
        IOException ioexception;
        ioexception;
        cropimageui.setResult(-2);
          goto _L4
        Exception exception;
        exception;
        throw exception;
          goto _L3
    }

    static void t(CropImageUI cropimageui)
    {
        Bitmap bitmap = null;
        bitmap = Bitmap.createBitmap(cropimageui.f.getWidth(), cropimageui.f.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.translate(cropimageui.f.getScrollX(), cropimageui.f.getScrollY());
        cropimageui.f.draw(canvas);
        Bitmap bitmap1 = bitmap;
_L5:
        if(bitmap1 == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        int k1;
        float f2;
        float af[] = new float[9];
        cropimageui.f.getImageMatrix().getValues(af);
        i1 = cropimageui.h.getLeft();
        j1 = cropimageui.h.getTop();
        k1 = cropimageui.h.getWidth();
        Exception exception;
        float f1;
        Bitmap bitmap3;
        Bitmap bitmap4;
        String s2;
        String s3;
        if(af[0] != 0F)
            f1 = af[0];
        else
            f1 = af[1];
        f2 = Math.abs(f1);
        if(!cropimageui.d) goto _L4; else goto _L3
_L3:
        bitmap3 = cropimageui.a(cropimageui.s, cropimageui.t);
        bitmap4 = cropimageui.a(cropimageui.u, cropimageui.v);
        s2 = cropimageui.getIntent().getStringExtra("CropImage_bg_vertical");
        s3 = cropimageui.getIntent().getStringExtra("CropImage_bg_horizontal");
        if(a(bitmap3, s2) && a(bitmap4, s3))
            cropimageui.setResult(-1, (new Intent()).putExtra("CropImage_bg_vertical", s2).putExtra("CropImage_bg_horizontal", s3));
        else
            cropimageui.setResult(-1);
        cropimageui.finish();
_L10:
        return;
        exception;
        bitmap1 = bitmap;
          goto _L5
_L4:
        if(f2 * (float)cropimageui.i.getWidth() > (float)cropimageui.h.getWidth() && f2 * (float)cropimageui.i.getHeight() > (float)cropimageui.h.getHeight()) goto _L7; else goto _L6
_L6:
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap1, i1, j1, k1, k1);
_L16:
        if(bitmap2 != null) goto _L9; else goto _L8
_L8:
        Log.a("MicroMsg.CropImageUI", "doCropImage: error");
_L2:
        cropimageui.setResult(-1);
_L19:
        cropimageui.finish();
          goto _L10
_L7:
        int l1;
        int i2;
        int j2;
        int k2;
        Matrix matrix;
        float af1[][] = MatrixEquation.a(a(cropimageui.f.getImageMatrix()));
        float f3 = i1;
        float f4 = j1;
        float f5 = i1 + k1;
        float f6 = j1 + k1;
        float af2[] = new float[3];
        af2[0] = f3;
        af2[1] = f4;
        af2[2] = 1F;
        float af3[] = new float[3];
        af3[0] = f5;
        af3[1] = f6;
        af3[2] = 1F;
        float af4[] = MatrixEquation.a(af1, af2);
        float af5[] = MatrixEquation.a(af1, af3);
        l1 = (int)Math.min(af4[0], af5[0]);
        i2 = (int)Math.min(af4[1], af5[1]);
        if(l1 < 0)
            l1 = 0;
        if(i2 < 0)
            i2 = 0;
        j2 = (int)Math.abs(af4[0] - af5[0]);
        k2 = (int)Math.abs(af4[1] - af5[1]);
        matrix = new Matrix();
        cropimageui.q % 4;
        JVM INSTR tableswitch 0 3: default 584
    //                   0 661
    //                   1 682
    //                   2 703
    //                   3 724;
           goto _L11 _L12 _L13 _L14 _L15
_L11:
        break; /* Loop/switch isn't completed */
_L15:
        break MISSING_BLOCK_LABEL_724;
_L17:
        if(l1 + j2 > cropimageui.i.getWidth())
            j2 = cropimageui.i.getWidth() - l1;
        if(i2 + k2 > cropimageui.i.getHeight())
            k2 = cropimageui.i.getHeight() - i2;
        bitmap2 = Bitmap.createBitmap(cropimageui.i, l1, i2, j2, k2, matrix, true);
          goto _L16
_L12:
        matrix.setRotate(0F, j2 / 2, k2 / 2);
          goto _L17
_L13:
        matrix.setRotate(90F, j2 / 2, k2 / 2);
          goto _L17
_L14:
        matrix.setRotate(180F, j2 / 2, k2 / 2);
          goto _L17
        matrix.setRotate(270F, j2 / 2, k2 / 2);
          goto _L17
_L9:
        String s1 = cropimageui.getIntent().getStringExtra("CropImage_OutputPath");
        if(!a(bitmap2, s1)) goto _L2; else goto _L18
_L18:
        cropimageui.setResult(-1, (new Intent()).putExtra("CropImage_OutputPath", s1));
          goto _L19
    }

    static boolean u(CropImageUI cropimageui)
    {
        return cropimageui.b;
    }

    protected final int a()
    {
        return 0x7f030047;
    }

    protected final boolean i()
    {
        return true;
    }

    protected final int j()
    {
        return -1;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        e = (LinearLayout)findViewById(0x7f070112);
        g = (ImageView)findViewById(0x7f070111);
        h = (FrameIV)findViewById(0x7f070110);
        a = getIntent().getBooleanExtra("CropImage_bCrop", true);
        b = getIntent().getBooleanExtra("CropImage_bPrev", false);
        c = getIntent().getBooleanExtra("CropImage_bMatting", false);
        d = getIntent().getBooleanExtra("CropImage_bBackground", false);
        if(!a || c)
            g.setVisibility(8);
        p = false;
        f = (ImageView)findViewById(0x7f07010f);
        f.post(new _cls2());
        Button button = (Button)findViewById(0x7f070113);
        button.setVisibility(0);
        button.setOnClickListener(new _cls3());
        Button button1 = (Button)findViewById(0x7f070115);
        Button button2 = (Button)findViewById(0x7f070114);
        if(d)
        {
            button1.setVisibility(8);
            button2.setVisibility(8);
            button.setVisibility(8);
            g.setVisibility(8);
            h.setVisibility(4);
        }
        button1.setOnClickListener(new _cls4());
        button2.setOnClickListener(new _cls5());
        MTimerHandler mtimerhandler = new MTimerHandler(new _cls6(), true);
        MTimerHandler mtimerhandler1 = new MTimerHandler(new _cls7(), true);
        button1.setOnTouchListener(new _cls8(mtimerhandler));
        button2.setOnTouchListener(new _cls9(mtimerhandler1));
        int i1;
        if(b)
            i1 = 0x7f0a0318;
        else
        if(a)
            i1 = 0x7f0a0315;
        else
            i1 = 0x7f0a0314;
        a(i1, new _cls10());
        if(a)
            b(0x7f0a0316, new _cls11());
        else
            b(new _cls12());
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(i != null)
            i.recycle();
        if(j != null)
            j.recycle();
    }

    public void onResume()
    {
        super.onResume();
        setRequestedOrientation(5);
    }

    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private LinearLayout e;
    private ImageView f;
    private ImageView g;
    private FrameIV h;
    private Bitmap i;
    private Bitmap j;
    private float k;
    private float l;
    private float m;
    private float n;
    private long o;
    private boolean p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;
    private boolean y;

    private class _cls1
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 2: default 32
        //                       0 34
        //                       1 304
        //                       2 209;
               goto _L1 _L2 _L3 _L4
_L1:
            return false;
_L2:
            if(!CropImageUI.a(a))
            {
                CropImageUI.a(a, motionevent.getRawX());
                CropImageUI.b(a, motionevent.getRawY());
                CropImageUI.c(a, CropImageUI.b(a));
                CropImageUI.d(a, CropImageUI.c(a));
                Matrix matrix = CropImageUI.d(a).getImageMatrix();
                RectF rectf = new RectF();
                rectf.set(0F, 0F, CropImageUI.e(a).getWidth(), CropImageUI.e(a).getHeight());
                matrix.mapRect(rectf);
                CropImageUI.a(a, rectf.contains(CropImageUI.b(a), CropImageUI.c(a)));
                if(!CropImageUI.f(a))
                    CropImageUI.a(a, System.currentTimeMillis());
            }
            continue; /* Loop/switch isn't completed */
_L4:
            if(!CropImageUI.a(a) && CropImageUI.g(a))
            {
                CropImageUI.d(a).getImageMatrix().postTranslate(motionevent.getRawX() - CropImageUI.b(a), motionevent.getRawY() - CropImageUI.c(a));
                CropImageUI.d(a).invalidate();
                CropImageUI.a(a, motionevent.getRawX());
                CropImageUI.b(a, motionevent.getRawY());
            }
            continue; /* Loop/switch isn't completed */
_L3:
            if(!CropImageUI.a(a))
            {
                boolean flag = true;
                if(CropImageUI.g(a))
                {
                    CropImageUI.a(a, false);
                    CropImageUI.d(a).getImageMatrix().postTranslate(motionevent.getRawX() - CropImageUI.b(a), motionevent.getRawY() - CropImageUI.c(a));
                    CropImageUI.d(a).invalidate();
                    if(motionevent.getRawX() - CropImageUI.h(a) > 10F || motionevent.getRawY() - CropImageUI.i(a) > 10F || motionevent.getRawX() - CropImageUI.h(a) < -10F || motionevent.getRawY() - CropImageUI.i(a) < -10F)
                        flag = false;
                }
                if(flag && !CropImageUI.f(a))
                {
                    long l1 = System.currentTimeMillis();
                    if(CropImageUI.j(a) != 0L && l1 - CropImageUI.j(a) < 300L && l1 - CropImageUI.j(a) >= 0L)
                        CropImageUI.k(a);
                    CropImageUI.a(a, 0L);
                }
            }
            if(true) goto _L1; else goto _L5
_L5:
        }

        private CropImageUI a;

        _cls1()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            if(CropImageUI.a(a))
                CropImageUI.l(a);
            CropImageUI.m(a);
        }

        private CropImageUI a;

        _cls2()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            CropImageUI.n(a);
        }

        private CropImageUI a;

        _cls3()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            CropImageUI.o(a);
        }

        private CropImageUI a;

        _cls4()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            CropImageUI.p(a);
        }

        private CropImageUI a;

        _cls5()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls6
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            CropImageUI.o(a);
            return true;
        }

        private CropImageUI a;

        _cls6()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls7
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            CropImageUI.p(a);
            return true;
        }

        private CropImageUI a;

        _cls7()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 1: default 28
        //                       0 30
        //                       1 43;
               goto _L1 _L2 _L3
_L1:
            return false;
_L2:
            a.a(200L);
            continue; /* Loop/switch isn't completed */
_L3:
            a.a();
            if(true) goto _L1; else goto _L4
_L4:
        }

        private MTimerHandler a;
        private CropImageUI b;

        _cls8(MTimerHandler mtimerhandler)
        {
            b = CropImageUI.this;
            a = mtimerhandler;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 1: default 28
        //                       0 30
        //                       1 43;
               goto _L1 _L2 _L3
_L1:
            return false;
_L2:
            a.a(200L);
            continue; /* Loop/switch isn't completed */
_L3:
            a.a();
            if(true) goto _L1; else goto _L4
_L4:
        }

        private MTimerHandler a;
        private CropImageUI b;

        _cls9(MTimerHandler mtimerhandler)
        {
            b = CropImageUI.this;
            a = mtimerhandler;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Log.a("MicroMsg.CropImageUI", (new StringBuilder()).append("user!!!!!!!!").append(com.tencent.mm.ui.tools.CropImageUI.q(a)).toString());
            if(!com.tencent.mm.ui.tools.CropImageUI.q(a)) goto _L2; else goto _L1
_L1:
            CropImageUI.r(a);
            CropImageUI.s(a);
_L4:
            return;
_L2:
            if(CropImageUI.f(a))
                CropImageUI.t(a);
            else
            if(CropImageUI.u(a))
            {
                CropImageUI cropimageui1 = a;
                cropimageui1.setResult(-1, (new Intent()).putExtra("CropImage_ImgPath", cropimageui1.getIntent().getStringExtra("CropImage_ImgPath")));
                cropimageui1.finish();
            } else
            {
                CropImageUI cropimageui = a;
                String s1 = cropimageui.getIntent().getStringExtra("CropImage_ImgPath");
                if(s1 != null && !s1.equals(""))
                {
                    String s2 = (new StringBuilder()).append(ConstantsStorage.c).append("mmexport").append(System.currentTimeMillis()).append(".jpg").toString();
                    FileOperation.a(ConstantsStorage.c, (new StringBuilder()).append("mmexport").append(System.currentTimeMillis()).toString(), ".jpg", FileOperation.a(s1, 0, -1));
                    Object aobj[] = new Object[1];
                    aobj[0] = s2;
                    Toast.makeText(cropimageui, cropimageui.getString(0x7f0a0317, aobj), 1).show();
                    cropimageui.b(false);
                    cropimageui.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder()).append("file://").append(Environment.getExternalStorageDirectory()).toString())));
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private CropImageUI a;

        _cls10()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private CropImageUI a;

        _cls11()
        {
            a = CropImageUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private CropImageUI a;

        _cls12()
        {
            a = CropImageUI.this;
            super();
        }
    }

}
