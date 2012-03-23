// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   RemoveFilterDialog.java

package org.eclipse.epp.usagedata.internal.ui.preview;

import java.util.Arrays;
import org.eclipse.epp.usagedata.internal.recording.filtering.PreferencesBasedFilter;
import org.eclipse.jface.viewers.*;
import org.eclipse.swt.widgets.Shell;
import org.eclipse.ui.dialogs.ListDialog;

// Referenced classes of package org.eclipse.epp.usagedata.internal.ui.preview:
//            Messages

public class RemoveFilterDialog
{

    public RemoveFilterDialog(PreferencesBasedFilter filter)
    {
        this.filter = filter;
    }

    public void prompt(Shell shell)
    {
        ListDialog dialog = new ListDialog(shell) {

            protected int getTableStyle()
            {
                return (super.getTableStyle() - 4) + 2;
            }

            final RemoveFilterDialog this$0;

            
            {
                this$0 = RemoveFilterDialog.this;
                super($anonymous0);
            }
        }
;
        dialog.setTitle(Messages.RemoveFilterDialog_0);
        dialog.setMessage(Messages.RemoveFilterDialog_1);
        dialog.setAddCancelButton(true);
        dialog.setLabelProvider(new LabelProvider() {

            public String getText(Object element)
            {
                return (String)element;
            }

            final RemoveFilterDialog this$0;

            
            {
                this$0 = RemoveFilterDialog.this;
                super();
            }
        }
);
        dialog.setContentProvider(new IStructuredContentProvider() {

            public Object[] getElements(Object inputElement)
            {
                return (Object[])inputElement;
            }

            public void dispose()
            {
            }

            public void inputChanged(Viewer viewer1, Object obj, Object obj1)
            {
            }

            final RemoveFilterDialog this$0;

            
            {
                this$0 = RemoveFilterDialog.this;
                super();
            }
        }
);
        String filterPatterns[] = filter.getFilterPatterns();
        Arrays.sort(filterPatterns);
        dialog.setInput(filterPatterns);
        dialog.open();
        Object selected[] = dialog.getResult();
        if(selected == null)
        {
            return;
        } else
        {
            filter.removeFilterPatterns(selected);
            return;
        }
    }

    private final PreferencesBasedFilter filter;
}
