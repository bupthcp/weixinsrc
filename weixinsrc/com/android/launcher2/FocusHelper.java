// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   FocusHelper.java

package com.android.launcher2;

import android.view.*;
import android.widget.TabHost;
import android.widget.TabWidget;
import java.util.*;

// Referenced classes of package com.android.launcher2:
//            PagedView, PagedViewCellLayout, PagedViewWidget, PagedViewGridLayout, 
//            PagedViewCellLayoutChildren, LauncherApplication, AccessibleTabView, FocusOnlyTabWidget, 
//            Workspace, CellLayout, CellLayoutChildren, BubbleTextView, 
//            FolderIcon, Folder

public class FocusHelper
{

    public FocusHelper()
    {
    }

    private static TabHost findTabHostParent(View v)
    {
        ViewParent p;
        for(p = v.getParent(); p != null && !(p instanceof TabHost); p = p.getParent());
        return (TabHost)p;
    }

    static boolean handleAppsCustomizeTabKeyEvent(View v, int keyCode, KeyEvent e)
    {
        TabHost tabHost = findTabHostParent(v);
        ViewGroup contents = (ViewGroup)tabHost.findViewById(0x1020011);
        View shop = tabHost.findViewById(0x7f060007);
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        boolean wasHandled = false;
        switch(keyCode)
        {
        case 21: // '\025'
        default:
            break;

        case 22: // '\026'
            if(handleKeyEvent && v != shop)
                shop.requestFocus();
            wasHandled = true;
            break;

        case 20: // '\024'
            if(handleKeyEvent && v == shop)
            {
                contents.requestFocus();
                wasHandled = true;
            }
            break;
        }
        return wasHandled;
    }

    private static boolean isVisible(View v)
    {
        return v.getVisibility() == 0;
    }

    private static ViewGroup getAppsCustomizePage(ViewGroup container, int index)
    {
        ViewGroup page = (ViewGroup)((PagedView)container).getPageAt(index);
        if(page instanceof PagedViewCellLayout)
            page = (ViewGroup)page.getChildAt(0);
        return page;
    }

    static boolean handlePagedViewGridLayoutWidgetKeyEvent(PagedViewWidget w, int keyCode, KeyEvent e)
    {
        PagedViewGridLayout parent = (PagedViewGridLayout)w.getParent();
        PagedView container = (PagedView)parent.getParent();
        TabHost tabHost = findTabHostParent(container);
        TabWidget tabs = (TabWidget)tabHost.findViewById(0x1020013);
        int widgetIndex = parent.indexOfChild(w);
        int widgetCount = parent.getChildCount();
        int pageIndex = container.indexToPage(container.indexOfChild(parent));
        int pageCount = container.getChildCount();
        int cellCountX = parent.getCellCountX();
        int cellCountY = parent.getCellCountY();
        int x = widgetIndex % cellCountX;
        int y = widgetIndex / cellCountX;
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        ViewGroup newParent = null;
        View child = null;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
            if(handleKeyEvent)
                if(widgetIndex > 0)
                    parent.getChildAt(widgetIndex - 1).requestFocus();
                else
                if(pageIndex > 0)
                {
                    newParent = getAppsCustomizePage(container, pageIndex - 1);
                    if(newParent != null)
                    {
                        child = newParent.getChildAt(newParent.getChildCount() - 1);
                        if(child != null)
                            child.requestFocus();
                    }
                }
            wasHandled = true;
            break;

        case 22: // '\026'
            if(handleKeyEvent)
                if(widgetIndex < widgetCount - 1)
                    parent.getChildAt(widgetIndex + 1).requestFocus();
                else
                if(pageIndex < pageCount - 1)
                {
                    newParent = getAppsCustomizePage(container, pageIndex + 1);
                    if(newParent != null)
                    {
                        child = newParent.getChildAt(0);
                        if(child != null)
                            child.requestFocus();
                    }
                }
            wasHandled = true;
            break;

        case 19: // '\023'
            if(handleKeyEvent)
                if(y > 0)
                {
                    int newWidgetIndex = (y - 1) * cellCountX + x;
                    child = parent.getChildAt(newWidgetIndex);
                    if(child != null)
                        child.requestFocus();
                } else
                {
                    tabs.requestFocus();
                }
            wasHandled = true;
            break;

        case 20: // '\024'
            if(handleKeyEvent && y < cellCountY - 1)
            {
                int newWidgetIndex = Math.min(widgetCount - 1, (y + 1) * cellCountX + x);
                child = parent.getChildAt(newWidgetIndex);
                if(child != null)
                    child.requestFocus();
            }
            wasHandled = true;
            break;

        case 23: // '\027'
        case 66: // 'B'
            if(handleKeyEvent)
            {
                android.view.View.OnClickListener clickListener = (android.view.View.OnClickListener)container;
                clickListener.onClick(w);
            }
            wasHandled = true;
            break;

        case 92: // '\\'
            if(handleKeyEvent)
            {
                if(pageIndex > 0)
                {
                    newParent = getAppsCustomizePage(container, pageIndex - 1);
                    if(newParent != null)
                        child = newParent.getChildAt(0);
                } else
                {
                    child = parent.getChildAt(0);
                }
                if(child != null)
                    child.requestFocus();
            }
            wasHandled = true;
            break;

        case 93: // ']'
            if(handleKeyEvent)
            {
                if(pageIndex < pageCount - 1)
                {
                    newParent = getAppsCustomizePage(container, pageIndex + 1);
                    if(newParent != null)
                        child = newParent.getChildAt(0);
                } else
                {
                    child = parent.getChildAt(widgetCount - 1);
                }
                if(child != null)
                    child.requestFocus();
            }
            wasHandled = true;
            break;

        case 122: // 'z'
            if(handleKeyEvent)
            {
                child = parent.getChildAt(0);
                if(child != null)
                    child.requestFocus();
            }
            wasHandled = true;
            break;

        case 123: // '{'
            if(handleKeyEvent)
                parent.getChildAt(widgetCount - 1).requestFocus();
            wasHandled = true;
            break;
        }
        return wasHandled;
    }

    static boolean handleAppsCustomizeKeyEvent(View v, int keyCode, KeyEvent e)
    {
        ViewGroup parentLayout;
        ViewGroup itemContainer;
        int countX;
        int countY;
        if(v.getParent() instanceof PagedViewCellLayoutChildren)
        {
            itemContainer = (ViewGroup)v.getParent();
            parentLayout = (ViewGroup)itemContainer.getParent();
            countX = ((PagedViewCellLayout)parentLayout).getCellCountX();
            countY = ((PagedViewCellLayout)parentLayout).getCellCountY();
        } else
        {
            itemContainer = parentLayout = (ViewGroup)v.getParent();
            countX = ((PagedViewGridLayout)parentLayout).getCellCountX();
            countY = ((PagedViewGridLayout)parentLayout).getCellCountY();
        }
        PagedView container = (PagedView)parentLayout.getParent();
        TabHost tabHost = findTabHostParent(container);
        TabWidget tabs = (TabWidget)tabHost.findViewById(0x1020013);
        int iconIndex = itemContainer.indexOfChild(v);
        int itemCount = itemContainer.getChildCount();
        int pageIndex = container.indexToPage(container.indexOfChild(parentLayout));
        int pageCount = container.getChildCount();
        int x = iconIndex % countX;
        int y = iconIndex / countX;
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        ViewGroup newParent = null;
        View child = null;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
            if(handleKeyEvent)
                if(iconIndex > 0)
                    itemContainer.getChildAt(iconIndex - 1).requestFocus();
                else
                if(pageIndex > 0)
                {
                    newParent = getAppsCustomizePage(container, pageIndex - 1);
                    if(newParent != null)
                    {
                        container.snapToPage(pageIndex - 1);
                        child = newParent.getChildAt(newParent.getChildCount() - 1);
                        if(child != null)
                            child.requestFocus();
                    }
                }
            wasHandled = true;
            break;

        case 22: // '\026'
            if(handleKeyEvent)
                if(iconIndex < itemCount - 1)
                    itemContainer.getChildAt(iconIndex + 1).requestFocus();
                else
                if(pageIndex < pageCount - 1)
                {
                    newParent = getAppsCustomizePage(container, pageIndex + 1);
                    if(newParent != null)
                    {
                        container.snapToPage(pageIndex + 1);
                        child = newParent.getChildAt(0);
                        if(child != null)
                            child.requestFocus();
                    }
                }
            wasHandled = true;
            break;

        case 19: // '\023'
            if(handleKeyEvent)
                if(y > 0)
                {
                    int newiconIndex = (y - 1) * countX + x;
                    itemContainer.getChildAt(newiconIndex).requestFocus();
                } else
                {
                    tabs.requestFocus();
                }
            wasHandled = true;
            break;

        case 20: // '\024'
            if(handleKeyEvent && y < countY - 1)
            {
                int newiconIndex = Math.min(itemCount - 1, (y + 1) * countX + x);
                itemContainer.getChildAt(newiconIndex).requestFocus();
            }
            wasHandled = true;
            break;

        case 23: // '\027'
        case 66: // 'B'
            if(handleKeyEvent)
            {
                android.view.View.OnClickListener clickListener = (android.view.View.OnClickListener)container;
                clickListener.onClick(v);
            }
            wasHandled = true;
            break;

        case 92: // '\\'
            if(handleKeyEvent)
                if(pageIndex > 0)
                {
                    newParent = getAppsCustomizePage(container, pageIndex - 1);
                    if(newParent != null)
                    {
                        container.snapToPage(pageIndex - 1);
                        child = newParent.getChildAt(0);
                        if(child != null)
                            child.requestFocus();
                    }
                } else
                {
                    itemContainer.getChildAt(0).requestFocus();
                }
            wasHandled = true;
            break;

        case 93: // ']'
            if(handleKeyEvent)
                if(pageIndex < pageCount - 1)
                {
                    newParent = getAppsCustomizePage(container, pageIndex + 1);
                    if(newParent != null)
                    {
                        container.snapToPage(pageIndex + 1);
                        child = newParent.getChildAt(0);
                        if(child != null)
                            child.requestFocus();
                    }
                } else
                {
                    itemContainer.getChildAt(itemCount - 1).requestFocus();
                }
            wasHandled = true;
            break;

        case 122: // 'z'
            if(handleKeyEvent)
                itemContainer.getChildAt(0).requestFocus();
            wasHandled = true;
            break;

        case 123: // '{'
            if(handleKeyEvent)
                itemContainer.getChildAt(itemCount - 1).requestFocus();
            wasHandled = true;
            break;
        }
        return wasHandled;
    }

    static boolean handleTabKeyEvent(AccessibleTabView v, int keyCode, KeyEvent e)
    {
        if(!LauncherApplication.isScreenLarge())
            return false;
        FocusOnlyTabWidget parent = (FocusOnlyTabWidget)v.getParent();
        TabHost tabHost = findTabHostParent(parent);
        ViewGroup contents = (ViewGroup)tabHost.findViewById(0x1020011);
        int tabCount = parent.getTabCount();
        int tabIndex = parent.getChildTabIndex(v);
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
            if(handleKeyEvent && tabIndex > 0)
                parent.getChildTabViewAt(tabIndex - 1).requestFocus();
            wasHandled = true;
            break;

        case 22: // '\026'
            if(handleKeyEvent)
                if(tabIndex < tabCount - 1)
                    parent.getChildTabViewAt(tabIndex + 1).requestFocus();
                else
                if(v.getNextFocusRightId() != -1)
                    tabHost.findViewById(v.getNextFocusRightId()).requestFocus();
            wasHandled = true;
            break;

        case 19: // '\023'
            wasHandled = true;
            break;

        case 20: // '\024'
            if(handleKeyEvent)
                contents.requestFocus();
            wasHandled = true;
            break;
        }
        return wasHandled;
    }

    static boolean handleHotseatButtonKeyEvent(View v, int keyCode, KeyEvent e, int orientation)
    {
        ViewGroup parent = (ViewGroup)v.getParent();
        ViewGroup launcher = (ViewGroup)parent.getParent();
        Workspace workspace = (Workspace)launcher.findViewById(0x7f06001a);
        int buttonIndex = parent.indexOfChild(v);
        int buttonCount = parent.getChildCount();
        int pageIndex = workspace.getCurrentPage();
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
            if(handleKeyEvent)
                if(buttonIndex > 0)
                    parent.getChildAt(buttonIndex - 1).requestFocus();
                else
                    workspace.snapToPage(pageIndex - 1);
            wasHandled = true;
            break;

        case 22: // '\026'
            if(handleKeyEvent)
                if(buttonIndex < buttonCount - 1)
                    parent.getChildAt(buttonIndex + 1).requestFocus();
                else
                    workspace.snapToPage(pageIndex + 1);
            wasHandled = true;
            break;

        case 19: // '\023'
            if(handleKeyEvent)
            {
                CellLayout layout = (CellLayout)workspace.getChildAt(pageIndex);
                CellLayoutChildren children = layout.getChildrenLayout();
                View newIcon = getIconInDirection(layout, children, -1, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
                else
                    workspace.requestFocus();
            }
            wasHandled = true;
            break;

        case 20: // '\024'
            wasHandled = true;
            break;
        }
        return wasHandled;
    }

    private static CellLayoutChildren getCellLayoutChildrenForIndex(ViewGroup container, int i)
    {
        ViewGroup parent = (ViewGroup)container.getChildAt(i);
        return (CellLayoutChildren)parent.getChildAt(0);
    }

    private static ArrayList getCellLayoutChildrenSortedSpatially(CellLayout layout, ViewGroup parent)
    {
        final int cellCountX = layout.getCountX();
        int count = parent.getChildCount();
        ArrayList views = new ArrayList();
        for(int j = 0; j < count; j++)
            views.add(parent.getChildAt(j));

        Collections.sort(views, new Comparator() {

            public int compare(View lhs, View rhs)
            {
                CellLayout.LayoutParams llp = (CellLayout.LayoutParams)lhs.getLayoutParams();
                CellLayout.LayoutParams rlp = (CellLayout.LayoutParams)rhs.getLayoutParams();
                int lvIndex = llp.cellY * cellCountX + llp.cellX;
                int rvIndex = rlp.cellY * cellCountX + rlp.cellX;
                return lvIndex - rvIndex;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((View)obj, (View)obj1);
            }

            private final int val$cellCountX;

            
            {
                cellCountX = i;
                super();
            }
        }
);
        return views;
    }

    private static View findIndexOfIcon(ArrayList views, int i, int delta)
    {
        int count = views.size();
        for(int newI = i + delta; newI >= 0 && newI < count; newI += delta)
        {
            View newV = (View)views.get(newI);
            if((newV instanceof BubbleTextView) || (newV instanceof FolderIcon))
                return newV;
        }

        return null;
    }

    private static View getIconInDirection(CellLayout layout, ViewGroup parent, int i, int delta)
    {
        ArrayList views = getCellLayoutChildrenSortedSpatially(layout, parent);
        return findIndexOfIcon(views, i, delta);
    }

    private static View getIconInDirection(CellLayout layout, ViewGroup parent, View v, int delta)
    {
        ArrayList views = getCellLayoutChildrenSortedSpatially(layout, parent);
        return findIndexOfIcon(views, views.indexOf(v), delta);
    }

    private static View getClosestIconOnLine(CellLayout layout, ViewGroup parent, View v, int lineDelta)
    {
        ArrayList views = getCellLayoutChildrenSortedSpatially(layout, parent);
        CellLayout.LayoutParams lp = (CellLayout.LayoutParams)v.getLayoutParams();
        int cellCountX = layout.getCountX();
        int cellCountY = layout.getCountY();
        int row = lp.cellY;
        int newRow = row + lineDelta;
        if(newRow >= 0 && newRow < cellCountY)
        {
            float closestDistance = 3.402823E+038F;
            int closestIndex = -1;
            int index = views.indexOf(v);
            for(int endIndex = lineDelta >= 0 ? views.size() : -1; index != endIndex;)
            {
                View newV = (View)views.get(index);
                CellLayout.LayoutParams tmpLp = (CellLayout.LayoutParams)newV.getLayoutParams();
                boolean satisfiesRow = lineDelta >= 0 ? tmpLp.cellY > row : tmpLp.cellY < row;
                if(satisfiesRow && ((newV instanceof BubbleTextView) || (newV instanceof FolderIcon)))
                {
                    float tmpDistance = (float)Math.sqrt(Math.pow(tmpLp.cellX - lp.cellX, 2D) + Math.pow(tmpLp.cellY - lp.cellY, 2D));
                    if(tmpDistance < closestDistance)
                    {
                        closestIndex = index;
                        closestDistance = tmpDistance;
                    }
                }
                if(index <= endIndex)
                    index++;
                else
                    index--;
            }

            if(closestIndex > -1)
                return (View)views.get(closestIndex);
        }
        return null;
    }

    static boolean handleIconKeyEvent(View v, int keyCode, KeyEvent e)
    {
        CellLayoutChildren parent = (CellLayoutChildren)v.getParent();
        CellLayout layout = (CellLayout)parent.getParent();
        Workspace workspace = (Workspace)layout.getParent();
        ViewGroup launcher = (ViewGroup)workspace.getParent();
        ViewGroup tabs = (ViewGroup)launcher.findViewById(0x7f060020);
        ViewGroup hotseat = (ViewGroup)launcher.findViewById(0x7f060022);
        int pageIndex = workspace.indexOfChild(layout);
        int pageCount = workspace.getChildCount();
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
        {
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, v, -1);
                if(newIcon != null)
                    newIcon.requestFocus();
                else
                if(pageIndex > 0)
                {
                    parent = getCellLayoutChildrenForIndex(workspace, pageIndex - 1);
                    newIcon = getIconInDirection(layout, parent, parent.getChildCount(), -1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                    else
                        workspace.snapToPage(pageIndex - 1);
                }
            }
            wasHandled = true;
            break;
        }

        case 22: // '\026'
        {
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, v, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
                else
                if(pageIndex < pageCount - 1)
                {
                    parent = getCellLayoutChildrenForIndex(workspace, pageIndex + 1);
                    newIcon = getIconInDirection(layout, parent, -1, 1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                    else
                        workspace.snapToPage(pageIndex + 1);
                }
            }
            wasHandled = true;
            break;
        }

        case 19: // '\023'
        {
            if(!handleKeyEvent)
                break;
            View newIcon = getClosestIconOnLine(layout, parent, v, -1);
            if(newIcon != null)
            {
                newIcon.requestFocus();
                wasHandled = true;
            } else
            {
                tabs.requestFocus();
            }
            break;
        }

        case 20: // '\024'
        {
            if(!handleKeyEvent)
                break;
            View newIcon = getClosestIconOnLine(layout, parent, v, 1);
            if(newIcon != null)
            {
                newIcon.requestFocus();
                wasHandled = true;
                break;
            }
            if(hotseat != null)
                hotseat.requestFocus();
            break;
        }

        case 92: // '\\'
        {
            if(handleKeyEvent)
                if(pageIndex > 0)
                {
                    parent = getCellLayoutChildrenForIndex(workspace, pageIndex - 1);
                    View newIcon = getIconInDirection(layout, parent, -1, 1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                    else
                        workspace.snapToPage(pageIndex - 1);
                } else
                {
                    View newIcon = getIconInDirection(layout, parent, -1, 1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                }
            wasHandled = true;
            break;
        }

        case 93: // ']'
        {
            if(handleKeyEvent)
                if(pageIndex < pageCount - 1)
                {
                    parent = getCellLayoutChildrenForIndex(workspace, pageIndex + 1);
                    View newIcon = getIconInDirection(layout, parent, -1, 1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                    else
                        workspace.snapToPage(pageIndex + 1);
                } else
                {
                    View newIcon = getIconInDirection(layout, parent, parent.getChildCount(), -1);
                    if(newIcon != null)
                        newIcon.requestFocus();
                }
            wasHandled = true;
            break;
        }

        case 122: // 'z'
        {
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, -1, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;
        }

        case 123: // '{'
        {
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, parent.getChildCount(), -1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;
        }
        }
        return wasHandled;
    }

    static boolean handleFolderKeyEvent(View v, int keyCode, KeyEvent e)
    {
        CellLayoutChildren parent = (CellLayoutChildren)v.getParent();
        CellLayout layout = (CellLayout)parent.getParent();
        Folder folder = (Folder)layout.getParent();
        View title = folder.mFolderName;
        int action = e.getAction();
        boolean handleKeyEvent = action != 1;
        boolean wasHandled = false;
        switch(keyCode)
        {
        default:
            break;

        case 21: // '\025'
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, v, -1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;

        case 22: // '\026'
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, v, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
                else
                    title.requestFocus();
            }
            wasHandled = true;
            break;

        case 19: // '\023'
            if(handleKeyEvent)
            {
                View newIcon = getClosestIconOnLine(layout, parent, v, -1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;

        case 20: // '\024'
            if(handleKeyEvent)
            {
                View newIcon = getClosestIconOnLine(layout, parent, v, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
                else
                    title.requestFocus();
            }
            wasHandled = true;
            break;

        case 122: // 'z'
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, -1, 1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;

        case 123: // '{'
            if(handleKeyEvent)
            {
                View newIcon = getIconInDirection(layout, parent, parent.getChildCount(), -1);
                if(newIcon != null)
                    newIcon.requestFocus();
            }
            wasHandled = true;
            break;
        }
        return wasHandled;
    }
}
