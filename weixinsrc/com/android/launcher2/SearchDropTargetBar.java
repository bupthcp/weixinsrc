// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SearchDropTargetBar.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;

// Referenced classes of package com.android.launcher2:
//            DragController, ButtonDropTarget, Launcher, DragSource

public class SearchDropTargetBar extends FrameLayout
    implements DragController.DragListener
{

    public SearchDropTargetBar(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
    }

    public SearchDropTargetBar(Context context, AttributeSet attrs, int defStyle)
    {
        super(context, attrs, defStyle);
        mDeferOnDragEnd = false;
    }

    public void setup(Launcher launcher, DragController dragController)
    {
        dragController.addDragListener(this);
        dragController.addDragListener(mInfoDropTarget);
        dragController.addDragListener(mDeleteDropTarget);
        dragController.addDropTarget(mInfoDropTarget);
        dragController.addDropTarget(mDeleteDropTarget);
        mInfoDropTarget.setLauncher(launcher);
        mDeleteDropTarget.setLauncher(launcher);
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        mQSBSearchBar = findViewById(0x7f060025);
        mDropTargetBar = findViewById(0x7f060026);
        mInfoDropTarget = (ButtonDropTarget)mDropTargetBar.findViewById(0x7f060028);
        mDeleteDropTarget = (ButtonDropTarget)mDropTargetBar.findViewById(0x7f060027);
        mBarHeight = getResources().getDimensionPixelSize(0x7f0a0003);
        mInfoDropTarget.setSearchDropTargetBar(this);
        mDeleteDropTarget.setSearchDropTargetBar(this);
        boolean enableDropDownDropTargets = getResources().getBoolean(0x7f080002);
        mDropTargetBar.setAlpha(0.0F);
        ObjectAnimator fadeInAlphaAnim = ObjectAnimator.ofFloat(mDropTargetBar, "alpha", new float[] {
            1.0F
        });
        fadeInAlphaAnim.setInterpolator(new DecelerateInterpolator());
        mDropTargetBarFadeInAnim = new AnimatorSet();
        android.animation.AnimatorSet.Builder fadeInAnimators = mDropTargetBarFadeInAnim.play(fadeInAlphaAnim);
        if(enableDropDownDropTargets)
        {
            mDropTargetBar.setTranslationY(-mBarHeight);
            fadeInAnimators.with(ObjectAnimator.ofFloat(mDropTargetBar, "translationY", new float[] {
                0.0F
            }));
        }
        mDropTargetBarFadeInAnim.setDuration(200L);
        mDropTargetBarFadeInAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                mDropTargetBar.setVisibility(0);
            }

            final SearchDropTargetBar this$0;

            
            {
                this$0 = SearchDropTargetBar.this;
                super();
            }
        }
);
        ObjectAnimator fadeOutAlphaAnim = ObjectAnimator.ofFloat(mDropTargetBar, "alpha", new float[] {
            0.0F
        });
        fadeOutAlphaAnim.setInterpolator(new AccelerateInterpolator());
        mDropTargetBarFadeOutAnim = new AnimatorSet();
        android.animation.AnimatorSet.Builder fadeOutAnimators = mDropTargetBarFadeOutAnim.play(fadeOutAlphaAnim);
        if(enableDropDownDropTargets)
            fadeOutAnimators.with(ObjectAnimator.ofFloat(mDropTargetBar, "translationY", new float[] {
                (float)(-mBarHeight)
            }));
        mDropTargetBarFadeOutAnim.setDuration(175L);
        mDropTargetBarFadeOutAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                mDropTargetBar.setVisibility(8);
                mDropTargetBar.setLayerType(0, null);
            }

            final SearchDropTargetBar this$0;

            
            {
                this$0 = SearchDropTargetBar.this;
                super();
            }
        }
);
        mQSBSearchBarFadeInAnim = ObjectAnimator.ofFloat(mQSBSearchBar, "alpha", new float[] {
            1.0F
        });
        mQSBSearchBarFadeInAnim.setDuration(200L);
        mQSBSearchBarFadeInAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationStart(Animator animation)
            {
                mQSBSearchBar.setVisibility(0);
            }

            final SearchDropTargetBar this$0;

            
            {
                this$0 = SearchDropTargetBar.this;
                super();
            }
        }
);
        mQSBSearchBarFadeOutAnim = ObjectAnimator.ofFloat(mQSBSearchBar, "alpha", new float[] {
            0.0F
        });
        mQSBSearchBarFadeOutAnim.setDuration(175L);
        mQSBSearchBarFadeOutAnim.addListener(new AnimatorListenerAdapter() {

            public void onAnimationEnd(Animator animation)
            {
                mQSBSearchBar.setVisibility(8);
            }

            final SearchDropTargetBar this$0;

            
            {
                this$0 = SearchDropTargetBar.this;
                super();
            }
        }
);
    }

    private void cancelAnimations()
    {
        mDropTargetBarFadeInAnim.cancel();
        mDropTargetBarFadeOutAnim.cancel();
        mQSBSearchBarFadeInAnim.cancel();
        mQSBSearchBarFadeOutAnim.cancel();
    }

    public void showSearchBar(boolean animated)
    {
        cancelAnimations();
        if(animated)
        {
            mQSBSearchBarFadeInAnim.start();
        } else
        {
            mQSBSearchBar.setVisibility(0);
            mQSBSearchBar.setAlpha(1.0F);
        }
        mIsSearchBarHidden = false;
    }

    public void hideSearchBar(boolean animated)
    {
        cancelAnimations();
        if(animated)
        {
            mQSBSearchBarFadeOutAnim.start();
        } else
        {
            mQSBSearchBar.setVisibility(8);
            mQSBSearchBar.setAlpha(0.0F);
        }
        mIsSearchBarHidden = true;
    }

    public int getTransitionInDuration()
    {
        return 200;
    }

    public int getTransitionOutDuration()
    {
        return 175;
    }

    public void onDragStart(DragSource source, Object info, int dragAction)
    {
        mDropTargetBar.setLayerType(2, null);
        mDropTargetBar.buildLayer();
        mDropTargetBarFadeOutAnim.cancel();
        mDropTargetBarFadeInAnim.start();
        if(!mIsSearchBarHidden)
        {
            mQSBSearchBarFadeInAnim.cancel();
            mQSBSearchBarFadeOutAnim.start();
        }
    }

    public void deferOnDragEnd()
    {
        mDeferOnDragEnd = true;
    }

    public void onDragEnd()
    {
        if(!mDeferOnDragEnd)
        {
            mDropTargetBarFadeInAnim.cancel();
            mDropTargetBarFadeOutAnim.start();
            if(!mIsSearchBarHidden)
            {
                mQSBSearchBarFadeOutAnim.cancel();
                mQSBSearchBarFadeInAnim.start();
            }
        } else
        {
            mDeferOnDragEnd = false;
        }
    }

    public void onSearchPackagesChanged(boolean searchVisible, boolean voiceVisible)
    {
        if(mQSBSearchBar != null)
        {
            Drawable bg = mQSBSearchBar.getBackground();
            if(bg != null && !searchVisible && !voiceVisible)
            {
                mPreviousBackground = bg;
                mQSBSearchBar.setBackgroundResource(0);
            } else
            if(mPreviousBackground != null && (searchVisible || voiceVisible))
                mQSBSearchBar.setBackgroundDrawable(mPreviousBackground);
        }
    }

    private static final int sTransitionInDuration = 200;
    private static final int sTransitionOutDuration = 175;
    private AnimatorSet mDropTargetBarFadeInAnim;
    private AnimatorSet mDropTargetBarFadeOutAnim;
    private ObjectAnimator mQSBSearchBarFadeInAnim;
    private ObjectAnimator mQSBSearchBarFadeOutAnim;
    private boolean mIsSearchBarHidden;
    private View mQSBSearchBar;
    private View mDropTargetBar;
    private ButtonDropTarget mInfoDropTarget;
    private ButtonDropTarget mDeleteDropTarget;
    private int mBarHeight;
    private boolean mDeferOnDragEnd;
    private Drawable mPreviousBackground;


}
