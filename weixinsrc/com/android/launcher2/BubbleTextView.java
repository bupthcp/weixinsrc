// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   BubbleTextView.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.text.Layout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

// Referenced classes of package com.android.launcher2:
//            HolographicOutlineHelper, ShortcutInfo, FastBitmapDrawable, CellLayoutChildren, 
//            CellLayout, IconCache

public class BubbleTextView extends TextView
{

    public BubbleTextView(Context context)
    {
        super(context);
        mPrevAlpha = -1;
        mOutlineHelper = new HolographicOutlineHelper();
        mTempCanvas = new Canvas();
        mTempRect = new Rect();
        init();
    }

    public BubbleTextView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mPrevAlpha = -1;
        mOutlineHelper = new HolographicOutlineHelper();
        mTempCanvas = new Canvas();
        mTempRect = new Rect();
        init();
    }

    public BubbleTextView(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mPrevAlpha = -1;
        mOutlineHelper = new HolographicOutlineHelper();
        mTempCanvas = new Canvas();
        mTempRect = new Rect();
        init();
    }

    private void init()
    {
        mBackground = getBackground();
        Resources res = getContext().getResources();
        int bubbleColor = res.getColor(0x7f070003);
        mPaint = new Paint(1);
        mPaint.setColor(bubbleColor);
        mBubbleColorAlpha = (float)Color.alpha(bubbleColor) / 255F;
        mFocusedOutlineColor = mFocusedGlowColor = mPressedOutlineColor = mPressedGlowColor = res.getColor(0x1060012);
        setShadowLayer(4F, 0.0F, 2.0F, 0xdd000000);
    }

    public void applyFromShortcutInfo(ShortcutInfo info, IconCache iconCache)
    {
        Bitmap b = info.getIcon(iconCache);
        setCompoundDrawablesWithIntrinsicBounds(null, new FastBitmapDrawable(b), null, null);
        setText(info.title);
        setTag(info);
    }

    protected boolean setFrame(int left, int top, int right, int bottom)
    {
        if(mLeft != left || mRight != right || mTop != top || mBottom != bottom)
            mBackgroundSizeChanged = true;
        return super.setFrame(left, top, right, bottom);
    }

    protected boolean verifyDrawable(Drawable who)
    {
        return who == mBackground || super.verifyDrawable(who);
    }

    protected void drawableStateChanged()
    {
        if(isPressed())
        {
            if(!mDidInvalidateForPressedState)
                setCellLayoutPressedOrFocusedIcon();
        } else
        {
            boolean backgroundEmptyBefore = mPressedOrFocusedBackground == null;
            if(!mStayPressed)
                mPressedOrFocusedBackground = null;
            if(isFocused())
            {
                if(mLayout == null)
                    mPressedOrFocusedBackground = null;
                else
                    mPressedOrFocusedBackground = createGlowingOutline(mTempCanvas, mFocusedGlowColor, mFocusedOutlineColor);
                mStayPressed = false;
                setCellLayoutPressedOrFocusedIcon();
            }
            boolean backgroundEmptyNow = mPressedOrFocusedBackground == null;
            if(!backgroundEmptyBefore && backgroundEmptyNow)
                setCellLayoutPressedOrFocusedIcon();
        }
        Drawable d = mBackground;
        if(d != null && d.isStateful())
            d.setState(getDrawableState());
        super.drawableStateChanged();
    }

    private void drawWithPadding(Canvas destCanvas, int padding)
    {
        Rect clipRect = mTempRect;
        getDrawingRect(clipRect);
        clipRect.bottom = (getExtendedPaddingTop() - 3) + getLayout().getLineTop(0);
        destCanvas.save();
        destCanvas.translate(-getScrollX() + padding / 2, -getScrollY() + padding / 2);
        destCanvas.clipRect(clipRect, android.graphics.Region.Op.REPLACE);
        draw(destCanvas);
        destCanvas.restore();
    }

    private Bitmap createGlowingOutline(Canvas canvas, int outlineColor, int glowColor)
    {
        int padding = HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS;
        Bitmap b = Bitmap.createBitmap(getWidth() + padding, getHeight() + padding, android.graphics.Bitmap.Config.ARGB_8888);
        canvas.setBitmap(b);
        drawWithPadding(canvas, padding);
        mOutlineHelper.applyExtraThickExpensiveOutlineWithBlur(b, canvas, glowColor, outlineColor);
        canvas.setBitmap(null);
        return b;
    }

    public boolean onTouchEvent(MotionEvent event)
    {
        boolean result = super.onTouchEvent(event);
        switch(event.getAction())
        {
        case 2: // '\002'
        default:
            break;

        case 0: // '\0'
            if(mPressedOrFocusedBackground == null)
                mPressedOrFocusedBackground = createGlowingOutline(mTempCanvas, mPressedGlowColor, mPressedOutlineColor);
            if(isPressed())
            {
                mDidInvalidateForPressedState = true;
                setCellLayoutPressedOrFocusedIcon();
            } else
            {
                mDidInvalidateForPressedState = false;
            }
            break;

        case 1: // '\001'
        case 3: // '\003'
            if(!isPressed())
                mPressedOrFocusedBackground = null;
            break;
        }
        return result;
    }

    void setStayPressed(boolean stayPressed)
    {
        mStayPressed = stayPressed;
        if(!stayPressed)
            mPressedOrFocusedBackground = null;
        setCellLayoutPressedOrFocusedIcon();
    }

    void setCellLayoutPressedOrFocusedIcon()
    {
        if(getParent() instanceof CellLayoutChildren)
        {
            CellLayoutChildren parent = (CellLayoutChildren)getParent();
            if(parent != null)
            {
                CellLayout layout = (CellLayout)parent.getParent();
                layout.setPressedOrFocusedIcon(mPressedOrFocusedBackground == null ? null : this);
            }
        }
    }

    void clearPressedOrFocusedBackground()
    {
        mPressedOrFocusedBackground = null;
        setCellLayoutPressedOrFocusedIcon();
    }

    Bitmap getPressedOrFocusedBackground()
    {
        return mPressedOrFocusedBackground;
    }

    int getPressedOrFocusedBackgroundPadding()
    {
        return HolographicOutlineHelper.MAX_OUTER_BLUR_RADIUS / 2;
    }

    public void draw(Canvas canvas)
    {
        Drawable background = mBackground;
        if(background != null)
        {
            int scrollX = mScrollX;
            int scrollY = mScrollY;
            if(mBackgroundSizeChanged)
            {
                background.setBounds(0, 0, mRight - mLeft, mBottom - mTop);
                mBackgroundSizeChanged = false;
            }
            if((scrollX | scrollY) == 0)
            {
                background.draw(canvas);
            } else
            {
                canvas.translate(scrollX, scrollY);
                background.draw(canvas);
                canvas.translate(-scrollX, -scrollY);
            }
        }
        getPaint().setShadowLayer(4F, 0.0F, 2.0F, 0xdd000000);
        super.draw(canvas);
        canvas.save(2);
        canvas.clipRect(mScrollX, mScrollY + getExtendedPaddingTop(), mScrollX + getWidth(), mScrollY + getHeight(), android.graphics.Region.Op.INTERSECT);
        getPaint().setShadowLayer(1.75F, 0.0F, 0.0F, 0xcc000000);
        super.draw(canvas);
        canvas.restore();
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if(mBackground != null)
            mBackground.setCallback(this);
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if(mBackground != null)
            mBackground.setCallback(null);
    }

    protected boolean onSetAlpha(int alpha)
    {
        if(mPrevAlpha != alpha)
        {
            mPrevAlpha = alpha;
            mPaint.setAlpha((int)((float)alpha * mBubbleColorAlpha));
            super.onSetAlpha(alpha);
        }
        return true;
    }

    static final float CORNER_RADIUS = 4F;
    static final float SHADOW_LARGE_RADIUS = 4F;
    static final float SHADOW_SMALL_RADIUS = 1.75F;
    static final float SHADOW_Y_OFFSET = 2F;
    static final int SHADOW_LARGE_COLOUR = 0xdd000000;
    static final int SHADOW_SMALL_COLOUR = 0xcc000000;
    static final float PADDING_H = 8F;
    static final float PADDING_V = 3F;
    private Paint mPaint;
    private float mBubbleColorAlpha;
    private int mPrevAlpha;
    private final HolographicOutlineHelper mOutlineHelper;
    private final Canvas mTempCanvas;
    private final Rect mTempRect;
    private boolean mDidInvalidateForPressedState;
    private Bitmap mPressedOrFocusedBackground;
    private int mFocusedOutlineColor;
    private int mFocusedGlowColor;
    private int mPressedOutlineColor;
    private int mPressedGlowColor;
    private boolean mBackgroundSizeChanged;
    private Drawable mBackground;
    private boolean mStayPressed;
}
