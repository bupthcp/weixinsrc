// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AbstractTagFilter.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.Tag;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            MarketplaceFilter

public abstract class AbstractTagFilter extends MarketplaceFilter
{

    public AbstractTagFilter()
    {
        selected = new HashSet();
    }

    public final boolean select(CatalogItem item)
    {
        if(selectAllOnNoSelection && selected.isEmpty())
            return true;
        else
            return hasSelectedTag(item);
    }

    protected boolean hasSelectedTag(CatalogItem item)
    {
        Set tags = item.getTags();
        if(tags != null)
        {
            for(Iterator iterator = selected.iterator(); iterator.hasNext();)
            {
                Tag selectedTag = (Tag)iterator.next();
                if(tags.contains(selectedTag))
                    return true;
            }

        }
        return false;
    }

    public List getChoices()
    {
        return choices;
    }

    public void setChoices(List choices)
    {
        List previousChoices = this.choices;
        this.choices = choices;
        if(previousChoices != choices && (choices == null || !choices.equals(previousChoices)))
            choicesChanged(choices, previousChoices);
    }

    protected void choicesChanged(List choices, List previousChoices)
    {
        firePropertyChange("choices", previousChoices, choices);
    }

    public Set getSelected()
    {
        return selected;
    }

    public void setSelected(Set selected)
    {
        this.selected = selected;
    }

    public boolean isSelectAllOnNoSelection()
    {
        return selectAllOnNoSelection;
    }

    public void setSelectAllOnNoSelection(boolean selectAllOnNoSelection)
    {
        this.selectAllOnNoSelection = selectAllOnNoSelection;
    }

    protected void selectionUpdated()
    {
        firePropertyChange("selected", null, getSelected());
    }

    public void catalogUpdated(boolean flag)
    {
    }

    public Object getTagClassification()
    {
        return tagClassification;
    }

    public void setTagClassification(Object tagClassification)
    {
        this.tagClassification = tagClassification;
    }

    public static final String PROP_SELECTED = "selected";
    public static final String PROP_CHOICES = "choices";
    private List choices;
    private Set selected;
    private boolean selectAllOnNoSelection;
    private Object tagClassification;
}
