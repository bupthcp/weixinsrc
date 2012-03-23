// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceCategory.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.util.List;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogCategory;

public class MarketplaceCategory extends CatalogCategory
{
    public static final class Contents extends Enum
    {

        public static Contents[] values()
        {
            Contents acontents[];
            int i;
            Contents acontents1[];
            System.arraycopy(acontents = ENUM$VALUES, 0, acontents1 = new Contents[i = acontents.length], 0, i);
            return acontents1;
        }

        public static Contents valueOf(String s)
        {
            return (Contents)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/catalog/MarketplaceCategory$Contents, s);
        }

        public static final Contents FEATURED;
        public static final Contents POPULAR;
        public static final Contents INSTALLED;
        public static final Contents RECENT;
        public static final Contents QUERY;
        private static final Contents ENUM$VALUES[];

        static 
        {
            FEATURED = new Contents("FEATURED", 0);
            POPULAR = new Contents("POPULAR", 1);
            INSTALLED = new Contents("INSTALLED", 2);
            RECENT = new Contents("RECENT", 3);
            QUERY = new Contents("QUERY", 4);
            ENUM$VALUES = (new Contents[] {
                FEATURED, POPULAR, INSTALLED, RECENT, QUERY
            });
        }

        private Contents(String s, int i)
        {
            super(s, i);
        }
    }


    public MarketplaceCategory()
    {
    }

    public void setMarkets(List markets)
    {
        this.markets = markets;
    }

    public List getMarkets()
    {
        return markets;
    }

    public Contents getContents()
    {
        return contents;
    }

    public void setContents(Contents contents)
    {
        this.contents = contents;
    }

    public int getMatchCount()
    {
        return matchCount;
    }

    public void setMatchCount(int matchCount)
    {
        this.matchCount = matchCount;
    }

    private List markets;
    private Contents contents;
    private int matchCount;
}
