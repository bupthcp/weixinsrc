// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PagedViewWidget.java

package com.android.launcher2;

import android.animation.ObjectAnimator;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.*;
import android.util.AttributeSet;
import android.view.*;
import android.widget.*;

// Referenced classes of package com.android.launcher2:
//            FastBitmapDrawable, FocusHelper, HolographicOutlineHelper

public class PagedViewWidget extends LinearLayout
    implements Checkable
{

    public PagedViewWidget(Context context)
    {
        this(context, null);
    }

    public PagedViewWidget(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public PagedViewWidget(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mPaint = new Paint();
        mTmpScaleRect = new RectF();
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
        mDimensionsFormatString = r.getString(0x7f0c000a);
        setWillNotDraw(false);
        setClipToPadding(false);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        ImageView image = (ImageView)findViewById(0x7f06000f);
        if(image != null)
        {
            FastBitmapDrawable preview = (FastBitmapDrawable)image.getDrawable();
            if(preview != null && preview.getBitmap() != null)
                preview.getBitmap().recycle();
            image.setImageDrawable(null);
        }
    }

    public void applyFromAppWidgetProviderInfo(AppWidgetProviderInfo info, int maxWidth, int cellSpan[], HolographicOutlineHelper holoOutlineHelper)
    {
        mHolographicOutlineHelper = holoOutlineHelper;
        ImageView image = (ImageView)findViewById(0x7f06000f);
        if(maxWidth > -1)
            image.setMaxWidth(maxWidth);
        image.setContentDescription(info.label);
        mPreviewImageView = image;
        TextView name = (TextView)findViewById(0x7f06000d);
        name.setText(info.label);
        TextView dims = (TextView)findViewById(0x7f06000e);
        if(dims != null)
            dims.setText(String.format(mDimensionsFormatString, new Object[] {
                Integer.valueOf(cellSpan[0]), Integer.valueOf(cellSpan[1])
            }));
    }

    public void applyFromResolveInfo(PackageManager pm, ResolveInfo info, HolographicOutlineHelper holoOutlineHelper)
    {
        mHolographicOutlineHelper = holoOutlineHelper;
        CharSequence label = info.loadLabel(pm);
        ImageView image = (ImageView)findViewById(0x7f06000f);
        image.setContentDescription(label);
        mPreviewImageView = image;
        TextView name = (TextView)findViewById(0x7f06000d);
        name.setText(label);
        TextView dims = (TextView)findViewById(0x7f06000e);
        if(dims != null)
            dims.setText(String.format(mDimensionsFormatString, new Object[] {
                Integer.valueOf(1), Integer.valueOf(1)
            }));
    }

    void applyPreview(FastBitmapDrawable preview, int index, boolean scale)
    {
        ImageView image = (ImageView)findViewById(0x7f06000f);
        if(preview != null)
        {
            image.setImageDrawable(preview);
            image.setScaleType(scale ? android.widget.ImageView.ScaleType.FIT_START : android.widget.ImageView.ScaleType.MATRIX);
            image.setAlpha(0.0F);
            image.animate().alpha(1.0F).setDuration(80 + index * 20).start();
        }
    }

    public void setHolographicOutline(Bitmap holoOutline)
    {
        mHolographicOutline = holoOutline;
        invalidate();
    }

    public boolean onTouchEvent(MotionEvent event)
    {
        super.onTouchEvent(event);
        return true;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleAppsCustomizeKeyEvent(this, keyCode, event) || super.onKeyDown(keyCode, event);
    }

    public boolean onKeyUp(int keyCode, KeyEvent event)
    {
        return FocusHelper.handleAppsCustomizeKeyEvent(this, keyCode, event) || super.onKeyUp(keyCode, event);
    }

    protected void onDraw(Canvas canvas)
    {
        if(mAlpha > 0)
            super.onDraw(canvas);
        if(mHolographicOutline != null && mHolographicAlpha > 0)
        {
            mTmpScaleRect.set(0.0F, 0.0F, 1.0F, 1.0F);
            mPreviewImageView.getImageMatrix().mapRect(mTmpScaleRect);
            mPaint.setAlpha(mHolographicAlpha);
            canvas.save();
            canvas.scale(mTmpScaleRect.right, mTmpScaleRect.bottom);
            canvas.drawBitmap(mHolographicOutline, mPreviewImageView.getLeft(), mPreviewImageView.getTop(), mPaint);
            canvas.restore();
        }
    }

    protected boolean onSetAlpha(int alpha)
    {
        return true;
    }

    private void setChildrenAlpha(float alpha)
    {
        int childCount = getChildCount();
        for(int i = 0; i < childCount; i++)
            getChildAt(i).setAlpha(alpha);

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
            setChildrenAlpha(viewAlpha);
            super.setAlpha(viewAlpha);
        }
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

    public boolean isChecked()
    {
        return mIsChecked;
    }

    public void toggle()
    {
        setChecked(!mIsChecked);
    }

    static final String TAG = "PagedViewWidgetLayout";
    private static final int sPreviewFadeInDuration = 80;
    private static final int sPreviewFadeInStaggerDuration = 20;
    private final Paint mPaint;
    private Bitmap mHolographicOutline;
    private HolographicOutlineHelper mHolographicOutlineHelper;
    private ImageView mPreviewImageView;
    private final RectF mTmpScaleRect;
    private String mDimensionsFormatString;
    private int mAlpha;
    private int mHolographicAlpha;
    private boolean mIsChecked;
    private ObjectAnimator mCheckedAlphaAnimator;
    private float mCheckedAlpha;
    private int mCheckedFadeInDuration;
    private int mCheckedFadeOutDuration;
}
