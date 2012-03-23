// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IMavenConsoleListener.java

package org.eclipse.m2e.core.ui.internal.console;

import java.util.EventListener;

public interface IMavenConsoleListener
    extends EventListener
{

    public abstract void loggingMessage(String s);

    public abstract void loggingError(String s);
}
