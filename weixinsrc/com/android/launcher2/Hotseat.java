// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Hotseat.java

package com.android.launcher2;

import android.content.Context;
import android.content.res.*;
import android.util.AttributeSet;
import android.view.*;
import android.widget.FrameLayout;
import com.android.launcher.R;

// Referenced classes of package com.android.launcher2:
//            HotseatIconKeyEventListener, CellLayout, LauncherModel, BubbleTextView, 
//            Launcher

public class Hotseat extends FrameLayout
{

    public Hotseat(Context context)
    {
        this(context, null);
    }

    public Hotseat(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public Hotseat(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        TypedArray a = context.obtainStyledAttributes(attrs, com.android.launcher.R.styleable.Hotseat, defStyle, 0);
        mCellCountX = a.getInt(0, -1);
        mCellCountY = a.getInt(1, -1);
        mIsLandscape = context.getResources().getConfiguration().orientation == 2;
    }

    public void setup(Launcher launcher)
    {
        mLauncher = launcher;
        setOnKeyListener(new HotseatIconKeyEventListener());
    }

    CellLayout getLayout()
    {
        return mContent;
    }

    int getOrderInHotseat(int x, int y)
    {
        return mIsLandscape ? mContent.getCountY() - y - 1 : x;
    }

    int getCellXFromOrder(int rank)
    {
        return mIsLandscape ? 0 : rank;
    }

    int getCellYFromOrder(int rank)
    {
        return mIsLandscape ? mContent.getCountY() - (rank + 1) : 0;
    }

    public static boolean isAllAppsButtonRank(int rank)
    {
        return rank == 2;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        if(mCellCountX < 0)
            mCellCountX = LauncherModel.getCellCountX();
        if(mCellCountY < 0)
            mCellCountY = LauncherModel.getCellCountY();
        mContent = (CellLayout)findViewById(0x7f060016);
        mContent.setGridSize(mCellCountX, mCellCountY);
        resetLayout();
    }

    void resetLayout()
    {
        mContent.removeAllViewsInLayout();
        Context context = getContext();
        LayoutInflater inflater = LayoutInflater.from(context);
        BubbleTextView allAppsButton = (BubbleTextView)inflater.inflate(0x7f030002, mContent, false);
        allAppsButton.setCompoundDrawablesWithIntrinsicBounds(null, context.getResources().getDrawable(0x7f020000), null, null);
        allAppsButton.setContentDescription(context.getString(0x7f0c001e));
        allAppsButton.setOnTouchListener(new android.view.View.OnTouchListener() {

            public boolean onTouch(View v, MotionEvent event)
            {
                if(mLauncher != null && (event.getAction() & 0xff) == 0)
                    mLauncher.onTouchDownAllAppsButton(v);
                return false;
            }

            final Hotseat this$0;

            
            {
                this$0 = Hotseat.this;
                super();
            }
        }
);
        allAppsButton.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View v)
            {
                if(mLauncher != null)
                    mLauncher.onClickAllAppsButton(v);
            }

            final Hotseat this$0;

            
            {
                this$0 = Hotseat.this;
                super();
            }
        }
);
        int x = getCellXFromOrder(2);
        int y = getCellYFromOrder(2);
        mContent.addViewToCellLayout(allAppsButton, -1, 0, new CellLayout.LayoutParams(x, y, 1, 1), true);
    }

    private static final String TAG = "Hotseat";
    private static final int sAllAppsButtonRank = 2;
    private Launcher mLauncher;
    private CellLayout mContent;
    private int mCellCountX;
    private int mCellCountY;
    private boolean mIsLandscape;

}
