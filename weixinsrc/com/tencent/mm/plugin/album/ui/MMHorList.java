// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.*;
import android.widget.*;
import java.util.LinkedList;
import java.util.Queue;

public class MMHorList extends AdapterView
{

    public MMHorList(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        f = 0x20000000;
        g = new LinkedList();
        h = false;
        i = false;
        o = new _cls2();
        p = new _cls3();
        b();
    }

    public MMHorList(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        f = 0x20000000;
        g = new LinkedList();
        h = false;
        i = false;
        o = new _cls2();
        p = new _cls3();
        b();
    }

    static int a(MMHorList mmhorlist, int i1)
    {
        int j1 = i1 + mmhorlist.e;
        mmhorlist.e = j1;
        return j1;
    }

    private void a(int i1)
    {
        if(getChildCount() > 0 && i)
        {
            c = i1 + c;
            int j1 = c;
            (new StringBuilder()).append("ChildLayout nums :").append(getChildCount()).toString();
            int k1 = j1;
            for(int l1 = 0; l1 < getChildCount(); l1++)
            {
                View view = getChildAt(l1);
                int i2 = view.getMeasuredWidth();
                view.layout(k1, 0, k1 + i2, view.getMeasuredHeight());
                (new StringBuilder()).append(" i : ").append(l1).append(" left : ").append(k1).append(" childWidth :").append(i2).append("  all: ").append(i2 + k1).toString();
                k1 += i2;
            }

        }
    }

    private void a(int i1, int j1)
    {
        for(; i1 + j1 < getWidth() && b < n.getCount(); b = 1 + b)
        {
            View view = n.getView(b, (View)g.poll(), this);
            a(view, -1);
            i1 += view.getMeasuredWidth();
            if(b == -1 + n.getCount())
                f = (i1 + d) - getWidth();
        }

    }

    private void a(View view, int i1)
    {
        i = true;
        android.view.ViewGroup.LayoutParams layoutparams = view.getLayoutParams();
        if(layoutparams == null)
            layoutparams = new android.view.ViewGroup.LayoutParams(-1, -1);
        addViewInLayout(view, i1, layoutparams, true);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(getWidth(), 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(getHeight(), 0x80000000));
    }

    static boolean a(MMHorList mmhorlist)
    {
        mmhorlist.h = true;
        return true;
    }

    private void b()
    {
        j = new Scroller(getContext());
        a = -1;
        b = 0;
        c = 0;
        d = 0;
        e = 0;
        h = false;
        f = 0x20000000;
        k = new GestureDetector(getContext(), p);
        (new StringBuilder()).append("getmScroller ").append(j.getCurrX()).toString();
    }

    private void b(int i1)
    {
        for(View view = getChildAt(0); view != null && i1 + view.getRight() <= 0;)
        {
            c = c + view.getMeasuredWidth();
            g.offer(view);
            removeViewInLayout(view);
            a = 1 + a;
            view = getChildAt(0);
            i = true;
        }

        for(View view1 = getChildAt(-1 + getChildCount()); view1 != null && i1 + view1.getLeft() >= getWidth();)
        {
            g.offer(view1);
            removeViewInLayout(view1);
            b = -1 + b;
            view1 = getChildAt(-1 + getChildCount());
            i = true;
        }

    }

    private void b(int i1, int j1)
    {
        while(i1 + j1 > 0 && a >= 0) 
        {
            View view = n.getView(a, (View)g.poll(), this);
            a(view, 0);
            i1 -= view.getMeasuredWidth();
            a = -1 + a;
            c = c - view.getMeasuredWidth();
        }
    }

    static void b(MMHorList mmhorlist)
    {
        mmhorlist.c();
    }

    static int c(MMHorList mmhorlist)
    {
        return mmhorlist.e;
    }

    private void c()
    {
        b();
        removeAllViewsInLayout();
        requestLayout();
    }

    static android.widget.AdapterView.OnItemClickListener d(MMHorList mmhorlist)
    {
        return mmhorlist.m;
    }

    static int e(MMHorList mmhorlist)
    {
        return mmhorlist.a;
    }

    static ListAdapter f(MMHorList mmhorlist)
    {
        return mmhorlist.n;
    }

    static android.widget.AdapterView.OnItemSelectedListener g(MMHorList mmhorlist)
    {
        return mmhorlist.l;
    }

    protected final boolean a()
    {
        j.forceFinished(true);
        return true;
    }

    protected final boolean a(float f1, float f2)
    {
        (new StringBuilder()).append("onFling : nextX :").append(e).append(" velocityX : ").append(f1).append("  velocityY : ").append(f2).toString();
        j.fling(e, 0, (int)(-f1), 0, 0, f, 0, 0);
        requestLayout();
        return true;
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        boolean flag = k.onTouchEvent(motionevent);
        (new StringBuilder()).append("dispatchTouchEvent handled\uFF1A").append(flag).toString();
        return flag;
    }

    public volatile Adapter getAdapter()
    {
        return n;
    }

    public View getSelectedView()
    {
        return null;
    }

    protected void onLayout(boolean flag, int i1, int j1, int k1, int l1)
    {
        boolean flag1;
        flag1 = false;
        super.onLayout(flag, i1, j1, k1, l1);
        if(n != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        (new StringBuilder()).append("onLayout scroller :").append(j.getCurrX()).toString();
        i = true;
        if(h)
        {
            int k2 = d;
            b();
            removeAllViewsInLayout();
            e = k2;
            h = flag1;
        }
        if(j.computeScrollOffset())
            e = j.getCurrX();
        if(e < 0)
        {
            e = ((flag1) ? 1 : 0);
            j.forceFinished(true);
        }
        if(e > f)
        {
            e = f;
            j.forceFinished(true);
        }
        int i2 = d - e;
        b(i2);
        (new StringBuilder()).append("fillLIst: ").append(getWidth()).append(" ").append(n.getCount()).toString();
        View view = getChildAt(-1 + getChildCount());
        int j2;
        View view1;
        if(view != null)
            j2 = view.getRight();
        else
            j2 = ((flag1) ? 1 : 0);
        a(j2, i2);
        view1 = getChildAt(flag1);
        if(view1 != null)
            flag1 = view1.getLeft();
        b(flag1, i2);
        a(i2);
        d = e;
        if(!j.isFinished())
            post(new _cls1());
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected void onMeasure(int i1, int j1)
    {
        super.onMeasure(i1, android.view.View.MeasureSpec.makeMeasureSpec(0x1fffffff, 0x80000000));
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return false;
    }

    public volatile void setAdapter(Adapter adapter)
    {
        ListAdapter listadapter = (ListAdapter)adapter;
        n = listadapter;
        listadapter.registerDataSetObserver(o);
        c();
    }

    public void setOnItemClickListener(android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        m = onitemclicklistener;
    }

    public void setOnItemSelectedListener(android.widget.AdapterView.OnItemSelectedListener onitemselectedlistener)
    {
        l = onitemselectedlistener;
    }

    public void setSelection(int i1)
    {
    }

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private Queue g;
    private boolean h;
    private boolean i;
    private Scroller j;
    private GestureDetector k;
    private android.widget.AdapterView.OnItemSelectedListener l;
    private android.widget.AdapterView.OnItemClickListener m;
    private ListAdapter n;
    private DataSetObserver o;
    private android.view.GestureDetector.OnGestureListener p;

    private class _cls2 extends DataSetObserver
    {

        public void onChanged()
        {
            MMHorList.a(a);
            a.invalidate();
            a.requestLayout();
        }

        public void onInvalidated()
        {
            MMHorList.b(a);
            a.invalidate();
            a.requestLayout();
        }

        private MMHorList a;

        _cls2()
        {
            a = MMHorList.this;
            super();
        }
    }


    private class _cls3 extends android.view.GestureDetector.SimpleOnGestureListener
    {

        public boolean onDown(MotionEvent motionevent)
        {
            return a.a();
        }

        public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            return a.a(f1, f2);
        }

        public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
        {
            MMHorList.a(a, (int)f1);
            (new StringBuilder()).append("onGesture onScroll netX : ").append(MMHorList.c(a)).append(" distanceX: ").append(f1).toString();
            a.requestLayout();
            return true;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            Rect rect = new Rect();
            int i1 = 0;
            do
            {
label0:
                {
                    if(i1 < a.getChildCount())
                    {
                        View view = a.getChildAt(i1);
                        int j1 = view.getLeft();
                        int k1 = view.getRight();
                        rect.set(j1, view.getTop(), k1, view.getBottom());
                        if(!rect.contains((int)motionevent.getX(), (int)motionevent.getY()))
                            break label0;
                        if(MMHorList.d(a) != null)
                            MMHorList.d(a).onItemClick(a, view, i1 + (1 + MMHorList.e(a)), MMHorList.f(a).getItemId(i1 + (1 + MMHorList.e(a))));
                        if(MMHorList.g(a) != null)
                            MMHorList.g(a).onItemSelected(a, view, i1 + (1 + MMHorList.e(a)), MMHorList.f(a).getItemId(i1 + (1 + MMHorList.e(a))));
                    }
                    return true;
                }
                i1++;
            } while(true);
        }

        private MMHorList a;

        _cls3()
        {
            a = MMHorList.this;
            super();
        }
    }


    private class _cls1
        implements Runnable
    {

        public void run()
        {
            a.requestLayout();
        }

        private MMHorList a;

        _cls1()
        {
            a = MMHorList.this;
            super();
        }
    }

}
