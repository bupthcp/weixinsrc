// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CachedTextView.java

package com.android.launcher2;

import android.content.Context;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;

public class CachedTextView extends TextView
{

    public CachedTextView(Context context)
    {
        super(context);
        mCachePaint = new Paint();
        mCacheCanvas = new Canvas();
        mPrevAlpha = -1;
        mPaddingH = 0.0F;
        mPaddingV = 0.0F;
        mEnabled = true;
    }

    public CachedTextView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mCachePaint = new Paint();
        mCacheCanvas = new Canvas();
        mPrevAlpha = -1;
        mPaddingH = 0.0F;
        mPaddingV = 0.0F;
        mEnabled = true;
    }

    public CachedTextView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mCachePaint = new Paint();
        mCacheCanvas = new Canvas();
        mPrevAlpha = -1;
        mPaddingH = 0.0F;
        mPaddingV = 0.0F;
        mEnabled = true;
    }

    protected int getCacheTopPadding()
    {
        return 0;
    }

    protected int getCacheLeftPadding()
    {
        return 0;
    }

    protected int getCacheRightPadding()
    {
        return 0;
    }

    protected int getCacheBottomPadding()
    {
        return 0;
    }

    public void disableCache()
    {
        mEnabled = false;
    }

    public void setText(CharSequence text, android.widget.TextView.BufferType type)
    {
        super.setText(text, type);
        mIsTextCacheDirty = true;
    }

    private void buildAndUpdateCache()
    {
        Layout layout = getLayout();
        int left = getCompoundPaddingLeft();
        int top = getExtendedPaddingTop();
        float prevAlpha = getAlpha();
        mTextCacheLeft = layout.getLineLeft(0) - (float)getCacheLeftPadding();
        mTextCacheTop = (float)(top + layout.getLineTop(0)) - mPaddingV - (float)getCacheTopPadding();
        mRectLeft = mScrollX + getLeft();
        mRectTop = 0.0F;
        mTextCacheScrollX = mScrollX;
        float textCacheRight = Math.min((float)left + layout.getLineRight(0) + mPaddingH, (mScrollX + mRight) - mLeft) + (float)getCacheRightPadding();
        float textCacheBottom = (float)(top + layout.getLineBottom(0)) + mPaddingV + (float)getCacheBottomPadding();
        float xCharWidth = getPaint().measureText("x");
        int width = (int)((textCacheRight - mTextCacheLeft) + 2.0F * xCharWidth);
        int height = (int)(textCacheBottom - mTextCacheTop);
        if(width > 0 && height > 0)
        {
            if(mCache != null && (mCache.getWidth() != width || mCache.getHeight() != height))
            {
                mCache.recycle();
                mCache = null;
            }
            if(mCache == null)
            {
                mCache = Bitmap.createBitmap(width, height, android.graphics.Bitmap.Config.ARGB_8888);
                mCacheCanvas.setBitmap(mCache);
            } else
            {
                mCacheCanvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            }
            mCacheCanvas.save();
            mCacheCanvas.translate(-mTextCacheLeft, -mTextCacheTop);
            mIsBuildingCache = true;
            setAlpha(1.0F);
            draw(mCacheCanvas);
            setAlpha(prevAlpha);
            mIsBuildingCache = false;
            mCacheCanvas.restore();
            mCacheCanvas.setBitmap(null);
            mText = getText();
            setText(" ");
        }
    }

    public CharSequence getText()
    {
        return mText != null ? mText : super.getText();
    }

    public void draw(Canvas canvas)
    {
        if(mEnabled && mIsTextCacheDirty && !mIsBuildingCache)
        {
            buildAndUpdateCache();
            mIsTextCacheDirty = false;
        }
        if(mCache != null && !mIsBuildingCache)
            canvas.drawBitmap(mCache, (mTextCacheLeft - mTextCacheScrollX) + (float)mScrollX, mTextCacheTop, mCachePaint);
        super.draw(canvas);
    }

    protected boolean isBuildingCache()
    {
        return mIsBuildingCache;
    }

    protected boolean onSetAlpha(int alpha)
    {
        if(mPrevAlpha != alpha)
        {
            mPrevAlpha = alpha;
            mCachePaint.setAlpha(alpha);
            Drawable dr[] = getCompoundDrawables();
            for(int i = 0; i < dr.length; i++)
                if(dr[i] != null)
                    dr[i].mutate().setAlpha(alpha);

            super.onSetAlpha(alpha);
        }
        return true;
    }

    private Bitmap mCache;
    private final Paint mCachePaint;
    private final Canvas mCacheCanvas;
    private int mPrevAlpha;
    private boolean mIsBuildingCache;
    boolean mIsTextCacheDirty;
    float mTextCacheLeft;
    float mTextCacheTop;
    float mTextCacheScrollX;
    float mRectLeft;
    float mRectTop;
    private float mPaddingH;
    private float mPaddingV;
    private CharSequence mText;
    private boolean mEnabled;
}
