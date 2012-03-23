// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DragView.java

package com.android.launcher2;

import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.*;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;

// Referenced classes of package com.android.launcher2:
//            Launcher, DragLayer

public class DragView extends View
{

    public DragView(Launcher launcher, Bitmap bitmap, int registrationX, int registrationY, int left, int top, int width, 
            int height)
    {
        super(launcher);
        mDragVisualizeOffset = null;
        mDragRegion = null;
        mDragLayer = null;
        mHasDrawn = false;
        mOffsetX = 0.0F;
        mOffsetY = 0.0F;
        mDragLayer = launcher.getDragLayer();
        Resources res = getResources();
        int dragScale = res.getInteger(0x7f090019);
        Matrix scale = new Matrix();
        float scaleFactor = (width + dragScale) / width;
        if(scaleFactor != 1.0F)
            scale.setScale(scaleFactor, scaleFactor);
        final int offsetX = res.getDimensionPixelSize(0x7f0a002f);
        final int offsetY = res.getDimensionPixelSize(0x7f0a0030);
        mAnim = ValueAnimator.ofFloat(new float[] {
            0.0F, 1.0F
        });
        mAnim.setDuration(110L);
        mAnim.setInterpolator(new DecelerateInterpolator(2.5F));
        mAnim.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener() {

            public void onAnimationUpdate(ValueAnimator animation)
            {
                float value = ((Float)animation.getAnimatedValue()).floatValue();
                int deltaX = (int)(value * (float)offsetX - mOffsetX);
                int deltaY = (int)(value * (float)offsetY - mOffsetY);
                mOffsetX += (float)deltaX;
                mOffsetY += (float)deltaY;
                if(getParent() == null)
                {
                    animation.cancel();
                } else
                {
                    DragLayer.LayoutParams lp = mLayoutParams;
                    lp.x += deltaX;
                    lp.y += deltaY;
                    mDragLayer.requestLayout();
                }
            }

            final DragView this$0;
            private final int val$offsetX;
            private final int val$offsetY;

            
            {
                this$0 = DragView.this;
                offsetX = i;
                offsetY = j;
                super();
            }
        }
);
        mBitmap = Bitmap.createBitmap(bitmap, left, top, width, height, scale, true);
        setDragRegion(new Rect(0, 0, width, height));
        mRegistrationX = registrationX;
        mRegistrationY = registrationY;
        int ms = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        measure(ms, ms);
    }

    public float getOffsetY()
    {
        return mOffsetY;
    }

    public int getDragRegionLeft()
    {
        return mDragRegion.left;
    }

    public int getDragRegionTop()
    {
        return mDragRegion.top;
    }

    public int getDragRegionWidth()
    {
        return mDragRegion.width();
    }

    public int getDragRegionHeight()
    {
        return mDragRegion.height();
    }

    public void setDragVisualizeOffset(Point p)
    {
        mDragVisualizeOffset = p;
    }

    public Point getDragVisualizeOffset()
    {
        return mDragVisualizeOffset;
    }

    public void setDragRegion(Rect r)
    {
        mDragRegion = r;
    }

    public Rect getDragRegion()
    {
        return mDragRegion;
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        setMeasuredDimension(mBitmap.getWidth(), mBitmap.getHeight());
    }

    protected void onDraw(Canvas canvas)
    {
        mHasDrawn = true;
        canvas.drawBitmap(mBitmap, 0.0F, 0.0F, mPaint);
    }

    public void setPaint(Paint paint)
    {
        mPaint = paint;
        invalidate();
    }

    public boolean hasDrawn()
    {
        return mHasDrawn;
    }

    public void setAlpha(float alpha)
    {
        super.setAlpha(alpha);
        if(mPaint == null)
            mPaint = new Paint();
        mPaint.setAlpha((int)(255F * alpha));
        invalidate();
    }

    public void show(int touchX, int touchY)
    {
        mDragLayer.addView(this);
        DragLayer.LayoutParams lp = new DragLayer.LayoutParams(0, 0);
        lp.width = mBitmap.getWidth();
        lp.height = mBitmap.getHeight();
        lp.x = touchX - mRegistrationX;
        lp.y = touchY - mRegistrationY;
        lp.customPosition = true;
        setLayoutParams(lp);
        mLayoutParams = lp;
        mAnim.start();
    }

    void move(int touchX, int touchY)
    {
        DragLayer.LayoutParams lp = mLayoutParams;
        lp.x = (touchX - mRegistrationX) + (int)mOffsetX;
        lp.y = (touchY - mRegistrationY) + (int)mOffsetY;
        mDragLayer.requestLayout();
    }

    void remove()
    {
        post(new Runnable() {

            public void run()
            {
                mDragLayer.removeView(DragView.this);
            }

            final DragView this$0;

            
            {
                this$0 = DragView.this;
                super();
            }
        }
);
    }

    int[] getPosition(int result[])
    {
        DragLayer.LayoutParams lp = mLayoutParams;
        if(result == null)
            result = new int[2];
        result[0] = lp.x;
        result[1] = lp.y;
        return result;
    }

    private Bitmap mBitmap;
    private Paint mPaint;
    private int mRegistrationX;
    private int mRegistrationY;
    private Point mDragVisualizeOffset;
    private Rect mDragRegion;
    private DragLayer mDragLayer;
    private boolean mHasDrawn;
    ValueAnimator mAnim;
    private float mOffsetX;
    private float mOffsetY;
    private DragLayer.LayoutParams mLayoutParams;






}
