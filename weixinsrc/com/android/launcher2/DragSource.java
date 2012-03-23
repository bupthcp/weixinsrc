// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DragSource.java

package com.android.launcher2;

import android.view.View;

// Referenced classes of package com.android.launcher2:
//            DropTarget

public interface DragSource
{

    public abstract void onDropCompleted(View view, DropTarget.DragObject dragobject, boolean flag);
}
