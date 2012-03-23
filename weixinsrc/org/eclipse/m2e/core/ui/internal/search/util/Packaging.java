// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Packaging.java

package org.eclipse.m2e.core.ui.internal.search.util;

import org.eclipse.m2e.core.internal.index.SearchExpression;
import org.eclipse.m2e.core.internal.index.SourcedSearchExpression;

public final class Packaging extends Enum
{

    private Packaging(String s, int i, String text)
    {
        super(s, i);
        this.text = text;
    }

    public String getText()
    {
        return text;
    }

    public SearchExpression toSearchExpression()
    {
        if(ALL.equals(this))
            return null;
        else
            return new SourcedSearchExpression(getText());
    }

    public static Packaging[] values()
    {
        Packaging apackaging[];
        int i;
        Packaging apackaging1[];
        System.arraycopy(apackaging = ENUM$VALUES, 0, apackaging1 = new Packaging[i = apackaging.length], 0, i);
        return apackaging1;
    }

    public static Packaging valueOf(String s)
    {
        return (Packaging)Enum.valueOf(org/eclipse/m2e/core/ui/internal/search/util/Packaging, s);
    }

    public static final Packaging ALL;
    public static final Packaging PLUGIN;
    public static final Packaging POM;
    private final String text;
    private static final Packaging ENUM$VALUES[];

    static 
    {
        ALL = new Packaging("ALL", 0, null);
        PLUGIN = new Packaging("PLUGIN", 1, "maven-plugin");
        POM = new Packaging("POM", 2, "pom");
        ENUM$VALUES = (new Packaging[] {
            ALL, PLUGIN, POM
        });
    }
}
