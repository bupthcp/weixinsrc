// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.shake;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.Button;

public class DraggerButton extends Button
{

    public DraggerButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = new GestureDetector(context, new MyGestureListener());
    }

    static OnDragListener a(DraggerButton draggerbutton)
    {
        return draggerbutton.b;
    }

    public final void a(OnDragListener ondraglistener)
    {
        b = ondraglistener;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return a.onTouchEvent(motionevent);
    }

    private GestureDetector a;
    private OnDragListener b;

    private class MyGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        public boolean onDoubleTap(MotionEvent motionevent)
        {
            System.out.println("onDoubleTap");
            return false;
        }

        public boolean onDoubleTapEvent(MotionEvent motionevent)
        {
            System.out.println("onDoubleTapEvent");
            return false;
        }

        public boolean onDown(MotionEvent motionevent)
        {
            System.out.println("onDown");
            return false;
        }

        public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
        {
            System.out.println("onFling");
            return false;
        }

        public void onLongPress(MotionEvent motionevent)
        {
            System.out.println("onLongPress");
        }

        public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
        {
            return false;
        }

        public void onShowPress(MotionEvent motionevent)
        {
            System.out.println("onShowPress");
        }

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            System.out.println("onSingleTapConfirmed");
            return false;
        }

        public boolean onSingleTapUp(MotionEvent motionevent)
        {
            System.out.println("onSingleTapUp");
            boolean flag;
            if(DraggerButton.a(a) != null)
                flag = DraggerButton.a(a).a();
            else
                flag = false;
            return flag;
        }

        private DraggerButton a;

        MyGestureListener()
        {
            a = DraggerButton.this;
            super();
        }

        private class OnDragListener
        {

            public abstract boolean a();
        }

    }

}
