// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package b.a:
//            ai

public class w
{

    public w()
    {
    }

    public static float a(MotionEvent motionevent, int i)
    {
        float f;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            f = (new ai()).a(motionevent, i);
        else
            f = motionevent.getX();
        return f;
    }

    public static int a(MotionEvent motionevent)
    {
        int i;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            i = (new ai()).a(motionevent);
        else
            i = 1;
        return i;
    }

    public static void a(KeyEvent keyevent)
    {
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            (new ai()).a(keyevent);
    }

    public static boolean a()
    {
        boolean flag;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static float b(MotionEvent motionevent, int i)
    {
        float f;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            f = (new ai()).b(motionevent, i);
        else
            f = motionevent.getY();
        return f;
    }

    public static boolean b(KeyEvent keyevent)
    {
        boolean flag;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            flag = (new ai()).b(keyevent);
        else
            flag = false;
        return flag;
    }

    public static boolean c(KeyEvent keyevent)
    {
        boolean flag;
        if(Integer.valueOf(android.os.Build.VERSION.SDK).intValue() >= 5)
            flag = (new ai()).c(keyevent);
        else
            flag = false;
        return flag;
    }

    public static final int a = 255;
    public static final int b = 5;
    public static final int c = 6;
    private static final int d = 5;
}
