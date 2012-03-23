// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RepositoryViewLabelProvider.java

package org.eclipse.m2e.core.ui.internal.views;

import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.ui.internal.util.M2EUIUtils;
import org.eclipse.m2e.core.ui.internal.views.nodes.IMavenRepositoryNode;
import org.eclipse.m2e.core.ui.internal.views.nodes.RepositoryNode;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.*;

public class RepositoryViewLabelProvider extends LabelProvider
    implements org.eclipse.jface.viewers.DelegatingStyledCellLabelProvider.IStyledLabelProvider, IColorProvider, IFontProvider
{

    public RepositoryViewLabelProvider(Font treeFont)
    {
        int size = 0;
        FontData data[] = treeFont.getFontData();
        if(data == null)
        {
            size = 12;
        } else
        {
            for(int i = 0; i < data.length; i++)
                size = Math.max(size, data[i].getHeight());

        }
        italicFont = M2EUIUtils.deriveFont(treeFont, 2, size);
    }

    public void dispose()
    {
        italicFont.dispose();
        super.dispose();
    }

    public String getText(Object obj)
    {
        if(obj instanceof IMavenRepositoryNode)
            return ((IMavenRepositoryNode)obj).getName();
        else
            return obj.toString();
    }

    public Image getImage(Object obj)
    {
        if(obj instanceof IMavenRepositoryNode)
            return ((IMavenRepositoryNode)obj).getImage();
        else
            return PlatformUI.getWorkbench().getSharedImages().getImage("IMG_OBJ_ELEMENTS");
    }

    public Color getBackground(Object element)
    {
        return null;
    }

    public Color getForeground(Object element)
    {
        if(element instanceof RepositoryNode)
        {
            if(((RepositoryNode)element).isEnabledIndex())
                return Display.getDefault().getSystemColor(2);
            else
                return Display.getDefault().getSystemColor(16);
        } else
        {
            return Display.getDefault().getSystemColor(2);
        }
    }

    public Font getFont(Object element)
    {
        if(element instanceof IMavenRepositoryNode)
        {
            boolean updating = ((IMavenRepositoryNode)element).isUpdating();
            return updating ? italicFont : null;
        } else
        {
            return null;
        }
    }

    public StyledString getStyledText(Object element)
    {
        return new StyledString(getText(element));
    }

    private Font italicFont;
}
