// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppsCustomizeTabHost.java

package com.android.launcher2;

import android.animation.*;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.*;
import android.widget.*;

// Referenced classes of package com.android.launcher2:
//            LauncherTransitionable, AppsCustomizePagedView, AppsCustomizeTabKeyEventListener, LauncherApplication, 
//            Launcher

public class AppsCustomizeTabHost extends TabHost
    implements LauncherTransitionable, android.widget.TabHost.OnTabChangeListener
{

    public AppsCustomizeTabHost(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        mSuppressContentCallback = false;
        mLayoutInflater = LayoutInflater.from(context);
    }

    private void setContentTypeImmediate(AppsCustomizePagedView.ContentType type)
    {
        onTabChangedStart();
        onTabChangedEnd(type);
    }

    void selectAppsTab()
    {
        setContentTypeImmediate(AppsCustomizePagedView.ContentType.Applications);
        setCurrentTabByTag("APPS");
    }

    void selectWidgetsTab()
    {
        setContentTypeImmediate(AppsCustomizePagedView.ContentType.Widgets);
        setCurrentTabByTag("WIDGETS");
    }

    protected void onFinishInflate()
    {
        setup();
        ViewGroup tabsContainer = (ViewGroup)findViewById(0x7f060006);
        TabWidget tabs = (TabWidget)findViewById(0x1020013);
        final AppsCustomizePagedView appsCustomizePane = (AppsCustomizePagedView)findViewById(0x7f060008);
        mTabs = tabs;
        mTabsContainer = tabsContainer;
        mAppsCustomizePane = appsCustomizePane;
        mAnimationBuffer = (ImageView)findViewById(0x7f060009);
        if(tabs == null || mAppsCustomizePane == null)
        {
            throw new android.content.res.Resources.NotFoundException();
        } else
        {
            android.widget.TabHost.TabContentFactory contentFactory = new android.widget.TabHost.TabContentFactory() {

                public View createTabContent(String tag)
                {
                    return appsCustomizePane;
                }

                final AppsCustomizeTabHost this$0;
                private final AppsCustomizePagedView val$appsCustomizePane;

            
            {
                this$0 = AppsCustomizeTabHost.this;
                appsCustomizePane = appscustomizepagedview;
                super();
            }
            }
;
            String label = mContext.getString(0x7f0c001e);
            TextView tabView = (TextView)mLayoutInflater.inflate(0x7f030012, tabs, false);
            tabView.setText(label);
            tabView.setContentDescription(label);
            addTab(newTabSpec("APPS").setIndicator(tabView).setContent(contentFactory));
            label = mContext.getString(0x7f0c0007);
            tabView = (TextView)mLayoutInflater.inflate(0x7f030012, tabs, false);
            tabView.setText(label);
            tabView.setContentDescription(label);
            addTab(newTabSpec("WIDGETS").setIndicator(tabView).setContent(contentFactory));
            setOnTabChangedListener(this);
            AppsCustomizeTabKeyEventListener keyListener = new AppsCustomizeTabKeyEventListener();
            View lastTab = tabs.getChildTabViewAt(tabs.getTabCount() - 1);
            lastTab.setOnKeyListener(keyListener);
            View shopButton = findViewById(0x7f060007);
            shopButton.setOnKeyListener(keyListener);
            mTabsContainer.setAlpha(0.0F);
            return;
        }
    }

    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {
        boolean remeasureTabWidth = mTabs.getLayoutParams().width <= 0;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        if(remeasureTabWidth)
        {
            int contentWidth = mAppsCustomizePane.getPageContentWidth();
            if(contentWidth > 0)
            {
                mTabs.getLayoutParams().width = contentWidth;
                post(new Runnable() {

                    public void run()
                    {
                        mTabs.requestLayout();
                        mTabsContainer.setAlpha(1.0F);
                    }

                    final AppsCustomizeTabHost this$0;

            
            {
                this$0 = AppsCustomizeTabHost.this;
                super();
            }
                }
);
            }
        }
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
    }

    public boolean onTouchEvent(MotionEvent event)
    {
        if(event.getY() < (float)mAppsCustomizePane.getBottom())
            return true;
        else
            return super.onTouchEvent(event);
    }

    private void onTabChangedStart()
    {
        mAppsCustomizePane.hideScrollingIndicator(false);
    }

    private void reloadCurrentPage()
    {
        if(!LauncherApplication.isScreenLarge())
            mAppsCustomizePane.flashScrollingIndicator();
        mAppsCustomizePane.loadAssociatedPages(mAppsCustomizePane.getCurrentPage());
        mAppsCustomizePane.requestFocus();
    }

    private void onTabChangedEnd(AppsCustomizePagedView.ContentType type)
    {
        mAppsCustomizePane.setContentType(type);
    }

    public void onTabChanged(String tabId)
    {
        final AppsCustomizePagedView.ContentType type = getContentTypeForTabTag(tabId);
        if(mSuppressContentCallback)
        {
            mSuppressContentCallback = false;
            return;
        } else
        {
            Resources res = getResources();
            final int duration = res.getInteger(0x7f090013);
            post(new Runnable() {

                public void run()
                {
                    if(mAppsCustomizePane.getMeasuredWidth() <= 0 || mAppsCustomizePane.getMeasuredHeight() <= 0)
                    {
                        reloadCurrentPage();
                        return;
                    } else
                    {
                        Bitmap b = Bitmap.createBitmap(mAppsCustomizePane.getMeasuredWidth(), mAppsCustomizePane.getMeasuredHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                        Canvas c = new Canvas(b);
                        mAppsCustomizePane.draw(c);
                        mAppsCustomizePane.setAlpha(0.0F);
                        mAnimationBuffer.setImageBitmap(b);
                        mAnimationBuffer.setAlpha(1.0F);
                        mAnimationBuffer.setVisibility(0);
                        c.setBitmap(null);
                        b = null;
                        onTabChangedStart();
                        onTabChangedEnd(type);
                        ObjectAnimator outAnim = ObjectAnimator.ofFloat(mAnimationBuffer, "alpha", new float[] {
                            0.0F
                        });
                        outAnim.addListener(new AnimatorListenerAdapter() {

                            public void onAnimationEnd(Animator animation)
                            {
                                mAnimationBuffer.setVisibility(8);
                                mAnimationBuffer.setImageBitmap(null);
                            }

                            final _cls3 this$1;

                    
                    {
                        this$1 = _cls3.this;
                        super();
                    }
                        }
);
                        ObjectAnimator inAnim = ObjectAnimator.ofFloat(mAppsCustomizePane, "alpha", new float[] {
                            1.0F
                        });
                        inAnim.addListener(new AnimatorListenerAdapter() {

                            public void onAnimationEnd(Animator animation)
                            {
                                reloadCurrentPage();
                            }

                            final _cls3 this$1;

                    
                    {
                        this$1 = _cls3.this;
                        super();
                    }
                        }
);
                        AnimatorSet animSet = new AnimatorSet();
                        animSet.playTogether(new Animator[] {
                            outAnim, inAnim
                        });
                        animSet.setDuration(duration);
                        animSet.start();
                        return;
                    }
                }

                final AppsCustomizeTabHost this$0;
                private final AppsCustomizePagedView.ContentType val$type;
                private final int val$duration;


            
            {
                this$0 = AppsCustomizeTabHost.this;
                type = contenttype;
                duration = i;
                super();
            }
            }
);
            return;
        }
    }

    public void setCurrentTabFromContent(AppsCustomizePagedView.ContentType type)
    {
        mSuppressContentCallback = true;
        setCurrentTabByTag(getTabTagForContentType(type));
    }

    public AppsCustomizePagedView.ContentType getContentTypeForTabTag(String tag)
    {
        if(tag.equals("APPS"))
            return AppsCustomizePagedView.ContentType.Applications;
        if(tag.equals("WIDGETS"))
            return AppsCustomizePagedView.ContentType.Widgets;
        else
            return AppsCustomizePagedView.ContentType.Applications;
    }

    public String getTabTagForContentType(AppsCustomizePagedView.ContentType type)
    {
        if(type == AppsCustomizePagedView.ContentType.Applications)
            return "APPS";
        if(type == AppsCustomizePagedView.ContentType.Widgets)
            return "WIDGETS";
        else
            return "APPS";
    }

    public int getDescendantFocusability()
    {
        if(getVisibility() != 0)
            return 0x60000;
        else
            return super.getDescendantFocusability();
    }

    void reset()
    {
        if(mInTransition)
            mResetAfterTransition = true;
        else
            mAppsCustomizePane.reset();
    }

    public void onLauncherTransitionStart(Launcher l, Animator animation, boolean toWorkspace)
    {
        mInTransition = true;
        if(animation != null && isHardwareAccelerated())
        {
            setLayerType(2, null);
            buildLayer();
        }
        if(!toWorkspace && !LauncherApplication.isScreenLarge())
            mAppsCustomizePane.showScrollingIndicator(false);
        if(mResetAfterTransition)
        {
            mAppsCustomizePane.reset();
            mResetAfterTransition = false;
        }
    }

    public void onLauncherTransitionEnd(Launcher l, Animator animation, boolean toWorkspace)
    {
        mInTransition = false;
        if(animation != null)
            setLayerType(0, null);
        if(!toWorkspace)
        {
            l.dismissWorkspaceCling(null);
            if(!LauncherApplication.isScreenLarge())
                mAppsCustomizePane.hideScrollingIndicator(false);
        }
    }

    boolean isTransitioning()
    {
        return mInTransition;
    }

    static final String LOG_TAG = "AppsCustomizeTabHost";
    private static final String APPS_TAB_TAG = "APPS";
    private static final String WIDGETS_TAB_TAG = "WIDGETS";
    private final LayoutInflater mLayoutInflater;
    private ViewGroup mTabs;
    private ViewGroup mTabsContainer;
    private AppsCustomizePagedView mAppsCustomizePane;
    private boolean mSuppressContentCallback;
    private ImageView mAnimationBuffer;
    private boolean mInTransition;
    private boolean mResetAfterTransition;







}
