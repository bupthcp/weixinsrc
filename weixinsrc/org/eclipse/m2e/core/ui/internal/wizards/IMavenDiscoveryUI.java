// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IMavenDiscoveryUI.java

package org.eclipse.m2e.core.ui.internal.wizards;

import java.util.Collection;
import java.util.List;
import org.eclipse.jface.operation.IRunnableContext;
import org.eclipse.jface.operation.IRunnableWithProgress;

public interface IMavenDiscoveryUI
{

    public abstract boolean implement(List list, IRunnableWithProgress irunnablewithprogress, IRunnableContext irunnablecontext, Collection collection);
}
