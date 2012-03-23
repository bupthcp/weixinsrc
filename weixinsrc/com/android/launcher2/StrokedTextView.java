// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   StrokedTextView.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;
import com.android.launcher.R;

public class StrokedTextView extends TextView
{

    public StrokedTextView(Context context)
    {
        super(context);
        mCanvas = new Canvas();
        mPaint = new Paint();
        init(context, null, 0);
    }

    public StrokedTextView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mCanvas = new Canvas();
        mPaint = new Paint();
        init(context, attrs, 0);
    }

    public StrokedTextView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mCanvas = new Canvas();
        mPaint = new Paint();
        init(context, attrs, defStyle);
    }

    private void init(Context context, AttributeSet attrs, int defStyle)
    {
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.StrokedTextView, defStyle, 0);
        mStrokeColor = a.getColor(0, 0xff000000);
        mStrokeWidth = a.getFloat(2, 0.0F);
        mTextColor = a.getColor(1, -1);
        a.recycle();
        mUpdateCachedBitmap = true;
        mPaint.setAntiAlias(true);
        mPaint.setStyle(android.graphics.Paint.Style.FILL_AND_STROKE);
    }

    protected void onTextChanged(CharSequence text, int start, int before, int after)
    {
        super.onTextChanged(text, start, before, after);
        mUpdateCachedBitmap = true;
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh)
    {
        super.onSizeChanged(w, h, oldw, oldh);
        if(w > 0 && h > 0)
        {
            mUpdateCachedBitmap = true;
            mCache = Bitmap.createBitmap(w, h, android.graphics.Bitmap.Config.ARGB_8888);
        } else
        {
            mCache = null;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        if(mCache != null)
        {
            if(mUpdateCachedBitmap)
            {
                int gap = getCompoundDrawablePadding();
                int w = getMeasuredWidth();
                int h = getMeasuredHeight();
                String text = getText().toString();
                Rect textBounds = new Rect();
                Paint textPaint = getPaint();
                int textWidth = (int)textPaint.measureText(text);
                textPaint.getTextBounds("x", 0, 1, textBounds);
                mCanvas.setBitmap(mCache);
                mCanvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
                int drawableLeft = getPaddingLeft();
                int drawableTop = getPaddingTop();
                Drawable drawables[] = getCompoundDrawables();
                for(int i = 0; i < drawables.length; i++)
                    if(drawables[i] != null)
                    {
                        drawables[i].setBounds(drawableLeft, drawableTop, drawableLeft + drawables[i].getIntrinsicWidth(), drawableTop + drawables[i].getIntrinsicHeight());
                        drawables[i].draw(mCanvas);
                    }

                int left = w - getPaddingRight() - textWidth;
                int bottom = (h + textBounds.height()) / 2;
                mPaint.setStrokeWidth(mStrokeWidth);
                mPaint.setColor(mStrokeColor);
                mPaint.setTextSize(getTextSize());
                mCanvas.drawText(text, left, bottom, mPaint);
                mPaint.setStrokeWidth(0.0F);
                mPaint.setColor(mTextColor);
                mCanvas.drawText(text, left, bottom, mPaint);
                mUpdateCachedBitmap = false;
            }
            canvas.drawBitmap(mCache, 0.0F, 0.0F, mPaint);
        } else
        {
            super.onDraw(canvas);
        }
    }

    private final Canvas mCanvas;
    private final Paint mPaint;
    private Bitmap mCache;
    private boolean mUpdateCachedBitmap;
    private int mStrokeColor;
    private float mStrokeWidth;
    private int mTextColor;
}
