// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MenuDetectListener.java

package org.eclipse.m2e.core.ui.internal.search.util;

import java.util.EventListener;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.search.util:
//            MenuDetectEvent

public interface MenuDetectListener
    extends EventListener
{

    public abstract void menuDetected(MenuDetectEvent menudetectevent);
}
