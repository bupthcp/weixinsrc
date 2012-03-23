// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Cling.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.*;
import android.widget.FrameLayout;
import com.android.launcher.R;

// Referenced classes of package com.android.launcher2:
//            Launcher, Workspace, Folder

public class Cling extends FrameLayout
{

    public Cling(Context context)
    {
        this(context, null, 0);
    }

    public Cling(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public Cling(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.Cling, defStyle, 0);
        mDrawIdentifier = a.getString(0);
        a.recycle();
    }

    void init(Launcher l, int positionData[])
    {
        if(!mIsInitialized)
        {
            mLauncher = l;
            mPositionData = positionData;
            Resources r = getContext().getResources();
            mPunchThroughGraphic = r.getDrawable(0x7f020013);
            mPunchThroughGraphicCenterRadius = r.getDimensionPixelSize(0x7f0a0000);
            mAppIconSize = r.getDimensionPixelSize(0x7f0a001b);
            mRevealRadius = (float)mAppIconSize * 1.0F;
            mTabBarHeight = r.getDimensionPixelSize(0x7f0a001a);
            mTabBarHorizontalPadding = r.getDimensionPixelSize(0x7f0a0017);
            mButtonBarHeight = r.getDimensionPixelSize(0x7f0a0022);
            mErasePaint = new Paint();
            mErasePaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.MULTIPLY));
            mErasePaint.setColor(0xffffff);
            mErasePaint.setAlpha(0);
            mIsInitialized = true;
        }
    }

    void cleanup()
    {
        mBackground = null;
        mPunchThroughGraphic = null;
        mHandTouchGraphic = null;
        mIsInitialized = false;
    }

    private int[] getPunchThroughPosition()
    {
        if(mDrawIdentifier.equals(WORKSPACE_PORTRAIT))
            return (new int[] {
                getMeasuredWidth() / 2, getMeasuredHeight() - mButtonBarHeight / 2
            });
        if(mDrawIdentifier.equals(WORKSPACE_LANDSCAPE))
            return (new int[] {
                getMeasuredWidth() - mButtonBarHeight / 2, getMeasuredHeight() / 2
            });
        if(mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || mDrawIdentifier.equals(ALLAPPS_LANDSCAPE))
            return mPositionData;
        else
            return (new int[] {
                -1, -1
            });
    }

    public boolean onTouchEvent(MotionEvent event)
    {
        if(mDrawIdentifier.equals(WORKSPACE_PORTRAIT) || mDrawIdentifier.equals(WORKSPACE_LANDSCAPE) || mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || mDrawIdentifier.equals(ALLAPPS_LANDSCAPE))
        {
            int pos[] = getPunchThroughPosition();
            double diff = Math.sqrt(Math.pow(event.getX() - (float)pos[0], 2D) + Math.pow(event.getY() - (float)pos[1], 2D));
            if(diff < (double)mRevealRadius)
                return false;
        } else
        if(mDrawIdentifier.equals(FOLDER_PORTRAIT) || mDrawIdentifier.equals(FOLDER_LANDSCAPE))
        {
            Folder f = mLauncher.getWorkspace().getOpenFolder();
            if(f != null)
            {
                Rect r = new Rect();
                f.getHitRect(r);
                if(r.contains((int)event.getX(), (int)event.getY()))
                    return false;
            }
        }
        return true;
    }

    protected void dispatchDraw(Canvas canvas)
    {
        if(mIsInitialized)
        {
            DisplayMetrics metrics = new DisplayMetrics();
            mLauncher.getWindowManager().getDefaultDisplay().getMetrics(metrics);
            Bitmap b = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), android.graphics.Bitmap.Config.ARGB_8888);
            Canvas c = new Canvas(b);
            if(mBackground == null)
                if(mDrawIdentifier.equals(WORKSPACE_PORTRAIT) || mDrawIdentifier.equals(WORKSPACE_LANDSCAPE))
                    mBackground = getResources().getDrawable(0x7f020003);
                else
                if(mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || mDrawIdentifier.equals(ALLAPPS_LANDSCAPE))
                    mBackground = getResources().getDrawable(0x7f020004);
                else
                if(mDrawIdentifier.equals(FOLDER_PORTRAIT) || mDrawIdentifier.equals(FOLDER_LANDSCAPE))
                    mBackground = getResources().getDrawable(0x7f020005);
            if(mBackground != null)
            {
                mBackground.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                mBackground.draw(c);
            } else
            {
                c.drawColor(0x99000000);
            }
            int cx = -1;
            int cy = -1;
            float scale = mRevealRadius / (float)mPunchThroughGraphicCenterRadius;
            int dw = (int)(scale * (float)mPunchThroughGraphic.getIntrinsicWidth());
            int dh = (int)(scale * (float)mPunchThroughGraphic.getIntrinsicHeight());
            int pos[] = getPunchThroughPosition();
            cx = pos[0];
            cy = pos[1];
            if(cx > -1 && cy > -1)
            {
                c.drawCircle(cx, cy, mRevealRadius, mErasePaint);
                mPunchThroughGraphic.setBounds(cx - dw / 2, cy - dh / 2, cx + dw / 2, cy + dh / 2);
                mPunchThroughGraphic.draw(c);
            }
            if(mDrawIdentifier.equals(ALLAPPS_PORTRAIT) || mDrawIdentifier.equals(ALLAPPS_LANDSCAPE))
            {
                if(mHandTouchGraphic == null)
                    mHandTouchGraphic = getResources().getDrawable(0x7f020023);
                int offset = mAppIconSize / 4;
                mHandTouchGraphic.setBounds(cx + offset, cy + offset, cx + mHandTouchGraphic.getIntrinsicWidth() + offset, cy + mHandTouchGraphic.getIntrinsicHeight() + offset);
                mHandTouchGraphic.draw(c);
            }
            canvas.drawBitmap(b, 0.0F, 0.0F, null);
            c.setBitmap(null);
            b = null;
        }
        super.dispatchDraw(canvas);
    }

    static final String WORKSPACE_CLING_DISMISSED_KEY = "cling.workspace.dismissed";
    static final String ALLAPPS_CLING_DISMISSED_KEY = "cling.allapps.dismissed";
    static final String FOLDER_CLING_DISMISSED_KEY = "cling.folder.dismissed";
    private static String WORKSPACE_PORTRAIT = "workspace_portrait";
    private static String WORKSPACE_LANDSCAPE = "workspace_landscape";
    private static String ALLAPPS_PORTRAIT = "all_apps_portrait";
    private static String ALLAPPS_LANDSCAPE = "all_apps_landscape";
    private static String FOLDER_PORTRAIT = "folder_portrait";
    private static String FOLDER_LANDSCAPE = "folder_landscape";
    private Launcher mLauncher;
    private boolean mIsInitialized;
    private String mDrawIdentifier;
    private Drawable mBackground;
    private Drawable mPunchThroughGraphic;
    private Drawable mHandTouchGraphic;
    private int mPunchThroughGraphicCenterRadius;
    private int mAppIconSize;
    private int mTabBarHeight;
    private int mTabBarHorizontalPadding;
    private int mButtonBarHeight;
    private float mRevealRadius;
    private int mPositionData[];
    private Paint mErasePaint;

}
