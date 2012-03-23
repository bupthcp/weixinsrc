// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.view.KeyEvent;
import android.view.MotionEvent;

class ai
{

    ai()
    {
    }

    public float a(MotionEvent motionevent, int i)
    {
        return motionevent.getX(i);
    }

    public int a(MotionEvent motionevent)
    {
        return motionevent.getPointerCount();
    }

    public void a(KeyEvent keyevent)
    {
        keyevent.startTracking();
    }

    public float b(MotionEvent motionevent, int i)
    {
        return motionevent.getY(i);
    }

    public boolean b(KeyEvent keyevent)
    {
        return keyevent.isTracking();
    }

    public boolean c(KeyEvent keyevent)
    {
        return keyevent.isCanceled();
    }
}
