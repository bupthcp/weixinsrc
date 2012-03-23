// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SelectionModel.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.*;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.epp.internal.mpc.ui.operations.FeatureDescriptor;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.osgi.util.NLS;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            InstallProfile, Messages, Operation

public class SelectionModel
{
    public static class CatalogItemEntry
    {

        public CatalogItem getItem()
        {
            return item;
        }

        public Operation getOperation()
        {
            return operation;
        }

        public List getChildren()
        {
            return children;
        }

        public int hashCode()
        {
            int result = 1;
            result = 31 * result + (item != null ? item.hashCode() : 0);
            return result;
        }

        public boolean equals(Object obj)
        {
            if(this == obj)
                return true;
            if(obj == null)
                return false;
            if(getClass() != obj.getClass())
                return false;
            CatalogItemEntry other = (CatalogItemEntry)obj;
            if(item == null)
            {
                if(other.item != null)
                    return false;
            } else
            if(!item.equals(other.item))
                return false;
            return true;
        }

        private final CatalogItem item;
        private final Operation operation;
        private List children;




        private CatalogItemEntry(CatalogItem item, Operation operation)
        {
            this.item = item;
            this.operation = operation;
        }

        CatalogItemEntry(CatalogItem catalogitem, Operation operation1, CatalogItemEntry catalogitementry)
        {
            this(catalogitem, operation1);
        }
    }

    public class FeatureEntry
    {

        public FeatureDescriptor getFeatureDescriptor()
        {
            return featureDescriptor;
        }

        public void setFeatureDescriptor(FeatureDescriptor featureDescriptor)
        {
            if(featureDescriptor != null && this.featureDescriptor != null && !this.featureDescriptor.getId().equals(featureDescriptor.getId()))
            {
                throw new IllegalStateException();
            } else
            {
                this.featureDescriptor = featureDescriptor;
                return;
            }
        }

        public boolean isChecked()
        {
            return checked;
        }

        public void setChecked(boolean checked)
        {
            this.checked = checked;
            selectionChanged();
        }

        public boolean isInstalled()
        {
            return installed;
        }

        public void setInstalled(boolean installed)
        {
            this.installed = installed;
        }

        public CatalogItemEntry getParent()
        {
            return parent;
        }

        public int hashCode()
        {
            int result = 1;
            result = 31 * result + (featureDescriptor != null ? featureDescriptor.hashCode() : 0);
            result = 31 * result + (parent != null ? parent.hashCode() : 0);
            return result;
        }

        public boolean equals(Object obj)
        {
            if(this == obj)
                return true;
            if(obj == null)
                return false;
            if(getClass() != obj.getClass())
                return false;
            FeatureEntry other = (FeatureEntry)obj;
            if(featureDescriptor == null)
            {
                if(other.featureDescriptor != null)
                    return false;
            } else
            if(!featureDescriptor.equals(other.featureDescriptor))
                return false;
            if(parent == null)
            {
                if(other.parent != null)
                    return false;
            } else
            if(!parent.equals(other.parent))
                return false;
            return true;
        }

        private final CatalogItemEntry parent;
        private FeatureDescriptor featureDescriptor;
        private boolean checked;
        private boolean installed;
        final SelectionModel this$0;




        private FeatureEntry(CatalogItemEntry parent, FeatureDescriptor featureDescriptor)
        {
            this$0 = SelectionModel.this;
            super();
            this.parent = parent;
            this.featureDescriptor = featureDescriptor;
        }

        FeatureEntry(CatalogItemEntry catalogitementry, FeatureDescriptor featuredescriptor, FeatureEntry featureentry)
        {
            this(catalogitementry, featuredescriptor);
        }
    }


    public SelectionModel(InstallProfile installProfile)
    {
        this.installProfile = installProfile;
    }

    public void select(CatalogItem item, Operation operation)
    {
        boolean changed = false;
        if(operation == null || Operation.NONE == operation)
        {
            if(itemToOperation.remove(item) != Operation.NONE)
                changed = true;
            if(entries != null)
            {
                for(Iterator it = entries.iterator(); it.hasNext();)
                {
                    CatalogItemEntry entry = (CatalogItemEntry)it.next();
                    if(entry.getItem().equals(item))
                        it.remove();
                }

            }
        } else
        {
            Operation previous = (Operation)itemToOperation.put(item, operation);
            if(previous != operation)
            {
                changed = true;
                if(entries != null)
                {
                    for(Iterator it = entries.iterator(); it.hasNext();)
                    {
                        CatalogItemEntry entry = (CatalogItemEntry)it.next();
                        if(entry.getItem().equals(item))
                            it.remove();
                    }

                    CatalogItemEntry itemEntry = createItemEntry(item, operation);
                    entries.add(itemEntry);
                }
            }
        }
        if(changed)
            selectionChanged();
    }

    public List getCatalogItemEntries()
    {
        if(this.entries == null)
        {
            List entries = new ArrayList();
            CatalogItemEntry itemEntry;
            for(Iterator iterator = itemToOperation.entrySet().iterator(); iterator.hasNext(); entries.add(itemEntry))
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                CatalogItem item = (CatalogItem)entry.getKey();
                Operation operation = (Operation)entry.getValue();
                itemEntry = createItemEntry(item, operation);
            }

            this.entries = entries;
        }
        return this.entries;
    }

    public CatalogItemEntry createItemEntry(CatalogItem item, Operation operation)
    {
        CatalogItemEntry itemEntry = new CatalogItemEntry(item, operation, null);
        computeChildren(itemEntry);
        return itemEntry;
    }

    private void computeChildren(CatalogItemEntry itemEntry)
    {
        List children = new ArrayList();
        FeatureEntry featureEntry;
        for(Iterator iterator = itemEntry.getItem().getInstallableUnits().iterator(); iterator.hasNext(); children.add(featureEntry))
        {
            String iu = (String)iterator.next();
            featureEntry = new FeatureEntry(itemEntry, new FeatureDescriptor(iu), null);
            featureEntry.setInstalled(computeInstalled(featureEntry));
            computeInitialChecked(featureEntry);
        }

        itemEntry.children = children;
    }

    private boolean computeInstalled(FeatureEntry entry)
    {
        Set installedFeatures = installProfile.getInstalledFeatures();
        return installedFeatures.contains(entry.featureDescriptor.getId()) || installedFeatures.contains(entry.featureDescriptor.getSimpleId());
    }

    private void computeInitialChecked(FeatureEntry entry)
    {
        Operation operation = entry.parent.operation;
        if(operation == Operation.CHECK_FOR_UPDATES)
        {
            if(entry.isInstalled())
                entry.checked = true;
        } else
        {
            entry.checked = true;
        }
    }

    public Map getItemToOperation()
    {
        return Collections.unmodifiableMap(itemToOperation);
    }

    public void selectionChanged()
    {
    }

    public Set getSelectedFeatureDescriptors()
    {
        Set featureDescriptors = new HashSet();
        for(Iterator iterator = getCatalogItemEntries().iterator(); iterator.hasNext();)
        {
            CatalogItemEntry entry = (CatalogItemEntry)iterator.next();
            for(Iterator iterator1 = entry.getChildren().iterator(); iterator1.hasNext();)
            {
                FeatureEntry featureEntry = (FeatureEntry)iterator1.next();
                if(featureEntry.isChecked())
                    featureDescriptors.add(featureEntry.getFeatureDescriptor());
            }

        }

        return Collections.unmodifiableSet(featureDescriptors);
    }

    public Set getSelectedCatalogItems()
    {
        Set items = new HashSet();
        for(Iterator iterator = getCatalogItemEntries().iterator(); iterator.hasNext();)
        {
            CatalogItemEntry entry = (CatalogItemEntry)iterator.next();
            for(Iterator iterator1 = entry.getChildren().iterator(); iterator1.hasNext();)
            {
                FeatureEntry featureEntry = (FeatureEntry)iterator1.next();
                if(featureEntry.isChecked())
                    items.add(entry.item);
            }

        }

        return Collections.unmodifiableSet(items);
    }

    public Operation getOperation(CatalogItem item)
    {
        Operation operation = (Operation)itemToOperation.get(item);
        return operation != null ? operation : Operation.NONE;
    }

    public boolean computeProvisioningOperationViable()
    {
        if(getSelectedFeatureDescriptors().isEmpty())
            return false;
        IStatus status = computeProvisioningOperationViability();
        if(status != null)
        {
            switch(status.getSeverity())
            {
            case 0: // '\0'
            case 1: // '\001'
            case 2: // '\002'
                return true;
            }
            return false;
        } else
        {
            return true;
        }
    }

    public IStatus computeProvisioningOperationViability()
    {
        Set selectedFeatureDescriptors = getSelectedFeatureDescriptors();
        if(selectedFeatureDescriptors.isEmpty())
            return null;
        Map operationToItem = computeOperationToItem();
        if(operationToItem.size() == 1)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)operationToItem.entrySet().iterator().next();
            return new Status(1, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.SelectionModel_count_selectedFor_operation, ((List)entry.getValue()).size() != 1 ? ((Object) (NLS.bind(Messages.SelectionModel_countSolutions, Integer.valueOf(((List)entry.getValue()).size())))) : ((Object) (Messages.SelectionModel_oneSolution)), ((Operation)entry.getKey()).getLabel()));
        }
        if(operationToItem.size() == 2 && operationToItem.containsKey(Operation.INSTALL) && operationToItem.containsKey(Operation.CHECK_FOR_UPDATES))
        {
            int count = 0;
            for(Iterator iterator = operationToItem.values().iterator(); iterator.hasNext();)
            {
                List items = (List)iterator.next();
                count += items.size();
            }

            return new Status(1, "org.eclipse.epp.mpc.ui", NLS.bind(Messages.SelectionModel_countSolutionsSelectedForInstallUpdate, Integer.valueOf(count)));
        }
        if(operationToItem.size() > 1 && (operationToItem.size() != 2 || !operationToItem.containsKey(Operation.INSTALL) || !operationToItem.containsKey(Operation.CHECK_FOR_UPDATES)))
            return new Status(4, "org.eclipse.epp.mpc.ui", Messages.SelectionModel_cannotInstallRemoveConcurrently);
        else
            return null;
    }

    private Map computeOperationToItem()
    {
        Map itemToOperation = getItemToOperation();
        Map catalogItemByOperation = new HashMap();
        for(Iterator iterator = itemToOperation.entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if(entry.getValue() != Operation.NONE)
            {
                List list = (List)catalogItemByOperation.get(entry.getValue());
                if(list == null)
                {
                    list = new ArrayList();
                    catalogItemByOperation.put((Operation)entry.getValue(), list);
                }
                list.add((CatalogItem)entry.getKey());
            }
        }

        return catalogItemByOperation;
    }

    public void clear()
    {
        itemToOperation.clear();
        entries = null;
    }

    private final Map itemToOperation = new HashMap();
    private List entries;
    private final InstallProfile installProfile;
}
