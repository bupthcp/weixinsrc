// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   HolographicOutlineHelper.java

package com.android.launcher2;

import android.graphics.*;

// Referenced classes of package com.android.launcher2:
//            LauncherApplication

public class HolographicOutlineHelper
{

    HolographicOutlineHelper()
    {
        mTempOffset = new int[2];
        mHolographicPaint.setFilterBitmap(true);
        mHolographicPaint.setAntiAlias(true);
        mBlurPaint.setFilterBitmap(true);
        mBlurPaint.setAntiAlias(true);
        mErasePaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.DST_OUT));
        mErasePaint.setFilterBitmap(true);
        mErasePaint.setAntiAlias(true);
        MaskFilter alphaClipTable = TableMaskFilter.CreateClipTable(180, 255);
        mAlphaClipPaint.setMaskFilter(alphaClipTable);
    }

    public static float highlightAlphaInterpolator(float r)
    {
        float maxAlpha = 0.6F;
        return (float)Math.pow(maxAlpha * (1.0F - r), 1.5D);
    }

    public static float viewAlphaInterpolator(float r)
    {
        float pivot = 0.95F;
        if(r < 0.95F)
            return (float)Math.pow(r / 0.95F, 1.5D);
        else
            return 1.0F;
    }

    void applyOuterBlur(Bitmap bitmap, Canvas canvas, int color)
    {
        mBlurPaint.setMaskFilter(sThickOuterBlurMaskFilter);
        Bitmap glow = bitmap.extractAlpha(mBlurPaint, mTempOffset);
        mHolographicPaint.setMaskFilter(sCoarseClipTable);
        mHolographicPaint.setAlpha(150);
        mHolographicPaint.setColor(color);
        canvas.drawBitmap(glow, mTempOffset[0], mTempOffset[1], mHolographicPaint);
        glow.recycle();
    }

    void applyExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor, int thickness)
    {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, mAlphaClipPaint, thickness);
    }

    void applyExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor, Paint alphaClipPaint, int thickness)
    {
        if(alphaClipPaint == null)
            alphaClipPaint = mAlphaClipPaint;
        Bitmap glowShape = srcDst.extractAlpha(alphaClipPaint, mTempOffset);
        BlurMaskFilter outerBlurMaskFilter;
        switch(thickness)
        {
        case 2: // '\002'
            outerBlurMaskFilter = sExtraThickOuterBlurMaskFilter;
            break;

        case 0: // '\0'
            outerBlurMaskFilter = sThickOuterBlurMaskFilter;
            break;

        case 1: // '\001'
            outerBlurMaskFilter = sMediumOuterBlurMaskFilter;
            break;

        default:
            throw new RuntimeException("Invalid blur thickness");
        }
        mBlurPaint.setMaskFilter(outerBlurMaskFilter);
        int outerBlurOffset[] = new int[2];
        Bitmap thickOuterBlur = glowShape.extractAlpha(mBlurPaint, outerBlurOffset);
        if(thickness == 2)
            mBlurPaint.setMaskFilter(sMediumOuterBlurMaskFilter);
        else
            mBlurPaint.setMaskFilter(sThinOuterBlurMaskFilter);
        int brightOutlineOffset[] = new int[2];
        Bitmap brightOutline = glowShape.extractAlpha(mBlurPaint, brightOutlineOffset);
        srcDstCanvas.setBitmap(glowShape);
        srcDstCanvas.drawColor(0xff000000, android.graphics.PorterDuff.Mode.SRC_OUT);
        BlurMaskFilter innerBlurMaskFilter;
        switch(thickness)
        {
        case 2: // '\002'
            innerBlurMaskFilter = sExtraThickInnerBlurMaskFilter;
            break;

        case 0: // '\0'
            innerBlurMaskFilter = sThickInnerBlurMaskFilter;
            break;

        case 1: // '\001'
            innerBlurMaskFilter = sMediumInnerBlurMaskFilter;
            break;

        default:
            throw new RuntimeException("Invalid blur thickness");
        }
        mBlurPaint.setMaskFilter(innerBlurMaskFilter);
        int thickInnerBlurOffset[] = new int[2];
        Bitmap thickInnerBlur = glowShape.extractAlpha(mBlurPaint, thickInnerBlurOffset);
        srcDstCanvas.setBitmap(thickInnerBlur);
        srcDstCanvas.drawBitmap(glowShape, -thickInnerBlurOffset[0], -thickInnerBlurOffset[1], mErasePaint);
        srcDstCanvas.drawRect(0.0F, 0.0F, -thickInnerBlurOffset[0], thickInnerBlur.getHeight(), mErasePaint);
        srcDstCanvas.drawRect(0.0F, 0.0F, thickInnerBlur.getWidth(), -thickInnerBlurOffset[1], mErasePaint);
        srcDstCanvas.setBitmap(srcDst);
        srcDstCanvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
        mHolographicPaint.setColor(color);
        srcDstCanvas.drawBitmap(thickInnerBlur, thickInnerBlurOffset[0], thickInnerBlurOffset[1], mHolographicPaint);
        srcDstCanvas.drawBitmap(thickOuterBlur, outerBlurOffset[0], outerBlurOffset[1], mHolographicPaint);
        mHolographicPaint.setColor(outlineColor);
        srcDstCanvas.drawBitmap(brightOutline, brightOutlineOffset[0], brightOutlineOffset[1], mHolographicPaint);
        srcDstCanvas.setBitmap(null);
        brightOutline.recycle();
        thickOuterBlur.recycle();
        thickInnerBlur.recycle();
        glowShape.recycle();
    }

    void applyExtraThickExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor)
    {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, 2);
    }

    void applyThickExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor)
    {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, 0);
    }

    void applyMediumExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor, Paint alphaClipPaint)
    {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, alphaClipPaint, 1);
    }

    void applyMediumExpensiveOutlineWithBlur(Bitmap srcDst, Canvas srcDstCanvas, int color, int outlineColor)
    {
        applyExpensiveOutlineWithBlur(srcDst, srcDstCanvas, color, outlineColor, 1);
    }

    private final Paint mHolographicPaint = new Paint();
    private final Paint mBlurPaint = new Paint();
    private final Paint mErasePaint = new Paint();
    private final Paint mAlphaClipPaint = new Paint();
    public static final int MAX_OUTER_BLUR_RADIUS;
    public static final int MIN_OUTER_BLUR_RADIUS;
    private static final BlurMaskFilter sExtraThickOuterBlurMaskFilter;
    private static final BlurMaskFilter sThickOuterBlurMaskFilter;
    private static final BlurMaskFilter sMediumOuterBlurMaskFilter;
    private static final BlurMaskFilter sThinOuterBlurMaskFilter;
    private static final BlurMaskFilter sThickInnerBlurMaskFilter;
    private static final BlurMaskFilter sExtraThickInnerBlurMaskFilter;
    private static final BlurMaskFilter sMediumInnerBlurMaskFilter;
    private static final int THICK = 0;
    private static final int MEDIUM = 1;
    private static final int EXTRA_THICK = 2;
    private static final MaskFilter sCoarseClipTable = TableMaskFilter.CreateClipTable(0, 200);
    private int mTempOffset[];

    static 
    {
        float scale = LauncherApplication.getScreenDensity();
        MIN_OUTER_BLUR_RADIUS = (int)(scale * 1.0F);
        MAX_OUTER_BLUR_RADIUS = (int)(scale * 12F);
        sExtraThickOuterBlurMaskFilter = new BlurMaskFilter(scale * 12F, android.graphics.BlurMaskFilter.Blur.OUTER);
        sThickOuterBlurMaskFilter = new BlurMaskFilter(scale * 6F, android.graphics.BlurMaskFilter.Blur.OUTER);
        sMediumOuterBlurMaskFilter = new BlurMaskFilter(scale * 2.0F, android.graphics.BlurMaskFilter.Blur.OUTER);
        sThinOuterBlurMaskFilter = new BlurMaskFilter(scale * 1.0F, android.graphics.BlurMaskFilter.Blur.OUTER);
        sExtraThickInnerBlurMaskFilter = new BlurMaskFilter(scale * 6F, android.graphics.BlurMaskFilter.Blur.NORMAL);
        sThickInnerBlurMaskFilter = new BlurMaskFilter(scale * 4F, android.graphics.BlurMaskFilter.Blur.NORMAL);
        sMediumInnerBlurMaskFilter = new BlurMaskFilter(scale * 2.0F, android.graphics.BlurMaskFilter.Blur.NORMAL);
    }
}
