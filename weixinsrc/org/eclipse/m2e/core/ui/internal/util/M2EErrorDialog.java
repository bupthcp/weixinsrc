// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   M2EErrorDialog.java

package org.eclipse.m2e.core.ui.internal.util;

import java.util.*;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.jface.viewers.*;
import org.eclipse.m2e.core.internal.M2EUtils;
import org.eclipse.m2e.core.ui.internal.Messages;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

public class M2EErrorDialog extends MessageDialog
{
    class ErrorTableContentProvider
        implements IStructuredContentProvider
    {

        public Object[] getElements(Object inputElement)
        {
            if(inputElement instanceof Map)
                return ((Map)inputElement).keySet().toArray();
            else
                return new Object[0];
        }

        public void dispose()
        {
        }

        public void inputChanged(Viewer viewer1, Object obj, Object obj1)
        {
        }

        final M2EErrorDialog this$0;

        ErrorTableContentProvider()
        {
            this$0 = M2EErrorDialog.this;
            super();
        }
    }

    class ErrorTableLabelProvider
        implements ITableLabelProvider
    {

        public Image getColumnImage(Object element, int columnIndex)
        {
            return null;
        }

        public String getColumnText(Object element, int columnIndex)
        {
            if(columnIndex == 0)
            {
                return element.toString();
            } else
            {
                String msg = M2EUtils.getRootCauseMessage((Throwable)errorMap.get(element));
                return msg != null ? msg : "";
            }
        }

        public void addListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        public void dispose()
        {
        }

        public boolean isLabelProperty(Object element, String property)
        {
            return false;
        }

        public void removeListener(ILabelProviderListener ilabelproviderlistener)
        {
        }

        final M2EErrorDialog this$0;

        ErrorTableLabelProvider()
        {
            this$0 = M2EErrorDialog.this;
            super();
        }
    }


    public M2EErrorDialog(Shell parentShell, String dialogTitle, Image dialogTitleImage, String dialogMessage, int dialogImageType, String dialogButtonLabels[], int defaultIndex, 
            Map errorMap)
    {
        super(parentShell, dialogTitle, dialogTitleImage, dialogMessage, dialogImageType, dialogButtonLabels, defaultIndex);
        COL_NAMES = (new String[] {
            Messages.M2EErrorDialog_column_name, Messages.M2EErrorDialog_column_error
        });
        this.errorMap = errorMap;
        setShellStyle(getShellStyle() | 0x10);
    }

    protected Control createCustomArea(Composite parent)
    {
        Composite comp = new Composite(parent, 0);
        GridLayout layout = new GridLayout(1, true);
        comp.setLayout(layout);
        GridData gd = new GridData(4, 4, true, true);
        gd.widthHint = 750;
        gd.grabExcessHorizontalSpace = true;
        gd.grabExcessVerticalSpace = true;
        comp.setLayoutData(gd);
        gd = new GridData(4, 4, true, true);
        gd.widthHint = 700;
        gd.heightHint = 200;
        errorTable = new TableViewer(comp, 0x10b00);
        errorTable.getTable().setHeaderVisible(true);
        errorTable.getTable().setLinesVisible(true);
        errorTable.setContentProvider(new ErrorTableContentProvider());
        errorTable.setLabelProvider(new ErrorTableLabelProvider());
        errorTable.getControl().setLayoutData(gd);
        setupTableColumns();
        errorTable.setInput(errorMap);
        return comp;
    }

    protected void setupTableColumns()
    {
        GC gc = new GC(errorTable.getControl());
        gc.setFont(errorTable.getControl().getFont());
        for(int i = 0; i < COL_NAMES.length; i++)
        {
            TableColumn col = new TableColumn(errorTable.getTable(), COL_STYLES[i]);
            col.setText(COL_NAMES[i]);
            int width = calcStringWidth(gc, i);
            col.setWidth(width);
        }

        gc.dispose();
    }

    private int calcStringWidth(GC gc, int column)
    {
        int maxWidth = 100;
        if(column == 0)
        {
            Set keySet = errorMap.keySet();
            for(Iterator iterator = keySet.iterator(); iterator.hasNext();)
            {
                String projectName = (String)iterator.next();
                int width = gc.stringExtent(projectName).x + 10;
                maxWidth = Math.max(maxWidth, width);
            }

            return maxWidth;
        }
        Collection values = errorMap.values();
        for(Iterator iterator1 = values.iterator(); iterator1.hasNext();)
        {
            Throwable t = (Throwable)iterator1.next();
            String msg = M2EUtils.getRootCauseMessage(t);
            if(msg == null)
                msg = "";
            int width = gc.stringExtent(msg).x + 10;
            maxWidth = Math.max(maxWidth, width);
        }

        return maxWidth;
    }

    private TableViewer errorTable;
    private static final int PROJECT_COL = 0;
    protected static final int TABLE_WIDTH = 700;
    protected String COL_NAMES[];
    protected int COL_STYLES[] = {
        16384, 16384
    };
    protected Map errorMap;
}
