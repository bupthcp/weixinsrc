// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Utilities.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.*;
import android.util.DisplayMetrics;
import java.util.Random;

final class Utilities
{

    Utilities()
    {
    }

    static Bitmap createIconBitmap(Bitmap icon, Context context)
    {
        int textureWidth = sIconTextureWidth;
        int textureHeight = sIconTextureHeight;
        int sourceWidth = icon.getWidth();
        int sourceHeight = icon.getHeight();
        if(sourceWidth > textureWidth && sourceHeight > textureHeight)
            return Bitmap.createBitmap(icon, (sourceWidth - textureWidth) / 2, (sourceHeight - textureHeight) / 2, textureWidth, textureHeight);
        if(sourceWidth == textureWidth && sourceHeight == textureHeight)
            return icon;
        else
            return createIconBitmap(((Drawable) (new BitmapDrawable(icon))), context);
    }

    static Bitmap createIconBitmap(Drawable icon, Context context)
    {
        Canvas canvas1 = sCanvas;
        JVM INSTR monitorenter ;
        if(sIconWidth == -1)
            initStatics(context);
        int width = sIconWidth;
        int height = sIconHeight;
        if(icon instanceof PaintDrawable)
        {
            PaintDrawable painter = (PaintDrawable)icon;
            painter.setIntrinsicWidth(width);
            painter.setIntrinsicHeight(height);
        } else
        if(icon instanceof BitmapDrawable)
        {
            BitmapDrawable bitmapDrawable = (BitmapDrawable)icon;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if(bitmap.getDensity() == 0)
                bitmapDrawable.setTargetDensity(context.getResources().getDisplayMetrics());
        }
        int sourceWidth = icon.getIntrinsicWidth();
        int sourceHeight = icon.getIntrinsicHeight();
        if(sourceWidth > 0 && sourceHeight > 0)
            if(width < sourceWidth || height < sourceHeight)
            {
                float ratio = (float)sourceWidth / (float)sourceHeight;
                if(sourceWidth > sourceHeight)
                    height = (int)((float)width / ratio);
                else
                if(sourceHeight > sourceWidth)
                    width = (int)((float)height * ratio);
            } else
            if(sourceWidth < width && sourceHeight < height)
            {
                width = sourceWidth;
                height = sourceHeight;
            }
        int textureWidth = sIconTextureWidth;
        int textureHeight = sIconTextureHeight;
        Bitmap bitmap = Bitmap.createBitmap(textureWidth, textureHeight, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = sCanvas;
        canvas.setBitmap(bitmap);
        int left = (textureWidth - width) / 2;
        int top = (textureHeight - height) / 2;
        sOldBounds.set(icon.getBounds());
        icon.setBounds(left, top, left + width, top + height);
        icon.draw(canvas);
        icon.setBounds(sOldBounds);
        canvas.setBitmap(null);
        return bitmap;
        canvas1;
        JVM INSTR monitorexit ;
        throw ;
    }

    static void drawSelectedAllAppsBitmap(Canvas dest, int destWidth, int destHeight, boolean pressed, Bitmap src)
    {
        synchronized(sCanvas)
        {
            if(sIconWidth == -1)
                throw new RuntimeException("Assertion failed: Utilities not initialized");
            dest.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            int xy[] = new int[2];
            Bitmap mask = src.extractAlpha(sBlurPaint, xy);
            float px = (destWidth - src.getWidth()) / 2;
            float py = (destHeight - src.getHeight()) / 2;
            dest.drawBitmap(mask, px + (float)xy[0], py + (float)xy[1], pressed ? sGlowColorPressedPaint : sGlowColorFocusedPaint);
            mask.recycle();
        }
    }

    static Bitmap resampleIconBitmap(Bitmap bitmap, Context context)
    {
        Canvas canvas = sCanvas;
        JVM INSTR monitorenter ;
        if(sIconWidth == -1)
            initStatics(context);
        if(bitmap.getWidth() == sIconWidth && bitmap.getHeight() == sIconHeight)
            return bitmap;
        createIconBitmap(new BitmapDrawable(bitmap), context);
        canvas;
        JVM INSTR monitorexit ;
        return;
        canvas;
        JVM INSTR monitorexit ;
        throw ;
    }

    static Bitmap drawDisabledBitmap(Bitmap bitmap, Context context)
    {
        Canvas canvas1 = sCanvas;
        JVM INSTR monitorenter ;
        if(sIconWidth == -1)
            initStatics(context);
        Bitmap disabled = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = sCanvas;
        canvas.setBitmap(disabled);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, sDisabledPaint);
        canvas.setBitmap(null);
        return disabled;
        canvas1;
        JVM INSTR monitorexit ;
        throw ;
    }

    private static void initStatics(Context context)
    {
        Resources resources = context.getResources();
        DisplayMetrics metrics = resources.getDisplayMetrics();
        float density = metrics.density;
        sIconWidth = sIconHeight = (int)resources.getDimension(0x7f0a001b);
        sIconTextureWidth = sIconTextureHeight = sIconWidth;
        sBlurPaint.setMaskFilter(new BlurMaskFilter(5F * density, android.graphics.BlurMaskFilter.Blur.NORMAL));
        sGlowColorPressedPaint.setColor(-15616);
        sGlowColorPressedPaint.setMaskFilter(TableMaskFilter.CreateClipTable(0, 30));
        sGlowColorFocusedPaint.setColor(-29184);
        sGlowColorFocusedPaint.setMaskFilter(TableMaskFilter.CreateClipTable(0, 30));
        ColorMatrix cm = new ColorMatrix();
        cm.setSaturation(0.2F);
        sDisabledPaint.setColorFilter(new ColorMatrixColorFilter(cm));
        sDisabledPaint.setAlpha(136);
    }

    static int roundToPow2(int n)
    {
        int orig = n;
        n >>= 1;
        int mask;
        for(mask = 0x8000000; mask != 0 && (n & mask) == 0; mask >>= 1);
        for(; mask != 0; mask >>= 1)
            n |= mask;

        if(++n != orig)
            n <<= 1;
        return n;
    }

    static int generateRandomId()
    {
        return (new Random(System.currentTimeMillis())).nextInt(0x1000000);
    }

    private static final String TAG = "Launcher.Utilities";
    private static final boolean TEXT_BURN = false;
    private static int sIconWidth = -1;
    private static int sIconHeight = -1;
    private static int sIconTextureWidth = -1;
    private static int sIconTextureHeight = -1;
    private static final Paint sBlurPaint = new Paint();
    private static final Paint sGlowColorPressedPaint = new Paint();
    private static final Paint sGlowColorFocusedPaint = new Paint();
    private static final Paint sDisabledPaint = new Paint();
    private static final Rect sOldBounds = new Rect();
    private static final Canvas sCanvas;
    static int sColors[] = {
        0xffff0000, 0xff00ff00, 0xff0000ff
    };
    static int sColorIndex = 0;

    static 
    {
        sCanvas = new Canvas();
        sCanvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
    }
}
