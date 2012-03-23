// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.widget.ListView;

// Referenced classes of package b.a:
//            l

class t
    implements l
{

    t()
    {
    }

    public void a(ListView listview)
    {
        if(listview.getFirstVisiblePosition() > 15)
            listview.setSelection(15);
        listview.smoothScrollToPosition(0);
    }

    private static final int a = 15;
}
