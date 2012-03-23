// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewIcon.java

package com.android.launcher2;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.widget.Checkable;

// Referenced classes of package com.android.launcher2:
//            CachedTextView, HolographicPagedViewIcon, ApplicationInfo, FastBitmapDrawable, 
//            HolographicOutlineHelper, FocusHelper

public class PagedViewIcon extends CachedTextView
    implements Checkable
{

    public PagedViewIcon(Context context)
    {
        this(context, null);
    }

    public PagedViewIcon(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public PagedViewIcon(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mPaint = new Paint();
        mAlpha = 255;
        mCheckedAlpha = 1.0F;
        Resources r = context.getResources();
        int alpha = r.getInteger(0x7f090003);
        if(alpha > 0)
        {
            mCheckedAlpha = (float)r.getInteger(0x7f090003) / 256F;
            mCheckedFadeInDuration = r.getInteger(0x7f090001);
            mCheckedFadeOutDuration = r.getInteger(0x7f090002);
        }
        mHolographicOutlineView = new HolographicPagedViewIcon(context, this);
    }

    protected HolographicPagedViewIcon getHolographicOutlineView()
    {
        return mHolographicOutlineView;
    }

    protected Bitmap getHolographicOutline()
    {
        return mHolographicOutline;
    }

    public void applyFromApplicationInfo(ApplicationInfo info, boolean scaleUp, HolographicOutlineHelper holoOutlineHelper)
    {
        mHolographicOutlineHelper = holoOutlineHelper;
        mIcon = info.iconBitmap;
        setCompoundDrawablesWithIntrinsicBounds(null, new FastBitmapDrawable(mIcon), null, null);
        setText(info.title);
        setTag(info);
    }

    public void setHolographicOutline(Bitmap holoOutline)
    {
        mHolographicOutline = holoOutline;
        getHolographicOutlineView().invalidate();
    }

    public void setAlpha(float alpha)
    {
        float viewAlpha = HolographicOutlineHelper.viewAlphaInterpolator(alpha);
        float holographicAlpha = HolographicOutlineHelper.highlightAlphaInterpolator(alpha);
        int newViewAlpha = (int)(viewAlpha * 255F);
        int newHolographicAlpha = (int)(holographicAlpha * 255F);
        if(mAlpha != newViewAlpha || mHolographicAlpha != newHolographicAlpha)
        {
            mAlpha = newViewAlpha;
            mHolographicAlpha = newHolographicAlpha;
            super.setAlpha(viewAlpha);
        }
    }

    public void invalidateCheckedImage()
    {
        if(mCheckedOutline != null)
        {
            mCheckedOutline.recycle();
            mCheckedOutline = null;
        }
    }

    protected void onDraw(Canvas canvas)
    {
        if(mAlpha > 0)
            super.onDraw(canvas);
        Bitmap overlay = null;
        if(mCheckedOutline != null)
        {
            mPaint.setAlpha(255);
            overlay = mCheckedOutline;
        }
        if(overlay != null)
        {
            int offset = getScrollX();
            int compoundPaddingLeft = getCompoundPaddingLeft();
            int compoundPaddingRight = getCompoundPaddingRight();
            int hspace = getWidth() - compoundPaddingRight - compoundPaddingLeft;
            canvas.drawBitmap(overlay, offset + compoundPaddingLeft + (hspace - overlay.getWidth()) / 2, mPaddingTop, mPaint);
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleAppsCustomizeKeyEvent(this, keyCode, event) || super.onKeyDown(keyCode, event);
    }

    public boolean onKeyUp(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleAppsCustomizeKeyEvent(this, keyCode, event) || super.onKeyUp(keyCode, event);
    }

    public boolean isChecked()
    {
        return mIsChecked;
    }

    void setChecked(boolean checked, boolean animate)
    {
        if(mIsChecked != checked)
        {
            mIsChecked = checked;
            float alpha;
            int duration;
            if(mIsChecked)
            {
                alpha = mCheckedAlpha;
                duration = mCheckedFadeInDuration;
            } else
            {
                alpha = 1.0F;
                duration = mCheckedFadeOutDuration;
            }
            if(mCheckedAlphaAnimator != null)
                mCheckedAlphaAnimator.cancel();
            if(animate)
            {
                mCheckedAlphaAnimator = ObjectAnimator.ofFloat(this, "alpha", new float[] {
                    getAlpha(), alpha
                });
                mCheckedAlphaAnimator.setDuration(duration);
                mCheckedAlphaAnimator.start();
            } else
            {
                setAlpha(alpha);
            }
            invalidate();
        }
    }

    public void setChecked(boolean checked)
    {
        setChecked(checked, true);
    }

    public void toggle()
    {
        setChecked(!mIsChecked);
    }

    private static final String TAG = "PagedViewIcon";
    private final Paint mPaint;
    private Bitmap mCheckedOutline;
    private Bitmap mHolographicOutline;
    private Bitmap mIcon;
    private int mAlpha;
    private int mHolographicAlpha;
    private boolean mIsChecked;
    private ObjectAnimator mCheckedAlphaAnimator;
    private float mCheckedAlpha;
    private int mCheckedFadeInDuration;
    private int mCheckedFadeOutDuration;
    HolographicPagedViewIcon mHolographicOutlineView;
    private HolographicOutlineHelper mHolographicOutlineHelper;
}
