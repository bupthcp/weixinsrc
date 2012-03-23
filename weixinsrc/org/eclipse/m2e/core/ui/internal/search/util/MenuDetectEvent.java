// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MenuDetectEvent.java

package org.eclipse.m2e.core.ui.internal.search.util;

import org.eclipse.swt.events.TypedEvent;
import org.eclipse.swt.widgets.Event;

public final class MenuDetectEvent extends TypedEvent
{

    public MenuDetectEvent(Event e)
    {
        super(e);
        x = e.x;
        y = e.y;
        doit = e.doit;
    }

    public String toString()
    {
        String string = super.toString();
        return (new StringBuilder(String.valueOf(string.substring(0, string.length() - 1)))).append(" x=").append(x).append(" y=").append(y).append(" doit=").append(doit).append("}").toString();
    }

    public int x;
    public int y;
    public boolean doit;
    private static final long serialVersionUID = 0xd582cbe8a564a273L;
}
