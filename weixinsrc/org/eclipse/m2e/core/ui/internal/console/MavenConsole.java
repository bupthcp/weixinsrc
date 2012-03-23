// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MavenConsole.java

package org.eclipse.m2e.core.ui.internal.console;


public interface MavenConsole
{

    public abstract void debug(String s);

    public abstract void info(String s);

    public abstract void error(String s);
}
