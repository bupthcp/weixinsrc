// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ItemButtonController.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.util.List;
import org.eclipse.epp.internal.mpc.ui.catalog.MarketplaceNodeCatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.swt.events.SelectionEvent;
import org.eclipse.swt.events.SelectionListener;
import org.eclipse.swt.widgets.Button;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            DiscoveryItem, Operation, MarketplaceViewer, Messages

class ItemButtonController
{
    private static final class ButtonState extends Enum
    {

        public ButtonState nextState()
        {
            switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState()[ordinal()])
            {
            case 1: // '\001'
                return INSTALL_PENDING;

            case 3: // '\003'
                return INSTALL;

            case 2: // '\002'
                return UNINSTALL_PENDING;

            case 4: // '\004'
                return UNINSTALL;

            case 7: // '\007'
                return UPDATE_PENDING;

            case 8: // '\b'
                return UPDATE;

            case 5: // '\005'
            case 6: // '\006'
            default:
                return this;
            }
        }

        public ButtonState noActionState()
        {
            switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState()[ordinal()])
            {
            case 3: // '\003'
                return INSTALL;

            case 4: // '\004'
                return UNINSTALL;

            case 8: // '\b'
                return UPDATE;

            case 5: // '\005'
            case 6: // '\006'
            case 7: // '\007'
            default:
                return this;
            }
        }

        public static ButtonState[] values()
        {
            ButtonState abuttonstate[];
            int i;
            ButtonState abuttonstate1[];
            System.arraycopy(abuttonstate = ENUM$VALUES, 0, abuttonstate1 = new ButtonState[i = abuttonstate.length], 0, i);
            return abuttonstate1;
        }

        public static ButtonState valueOf(String s)
        {
            return (ButtonState)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/wizards/ItemButtonController$ButtonState, s);
        }

        static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState()
        {
            $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState;
            if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState == null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            JVM INSTR pop ;
            int ai[] = new int[values().length];
            try
            {
                ai[DISABLED.ordinal()] = 5;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[INSTALL.ordinal()] = 1;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[INSTALL_PENDING.ordinal()] = 3;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[UNINSTALL.ordinal()] = 2;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[UNINSTALL_PENDING.ordinal()] = 4;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[UPDATE.ordinal()] = 7;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[UPDATE_DISABLED.ordinal()] = 6;
            }
            catch(NoSuchFieldError _ex) { }
            try
            {
                ai[UPDATE_PENDING.ordinal()] = 8;
            }
            catch(NoSuchFieldError _ex) { }
            return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState = ai;
        }

        public static final ButtonState INSTALL;
        public static final ButtonState UNINSTALL;
        public static final ButtonState INSTALL_PENDING;
        public static final ButtonState UNINSTALL_PENDING;
        public static final ButtonState DISABLED;
        public static final ButtonState UPDATE_DISABLED;
        public static final ButtonState UPDATE;
        public static final ButtonState UPDATE_PENDING;
        final String label;
        private final Operation operation;
        private final boolean disabled;
        private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$ItemButtonController$ButtonState[];
        private static final ButtonState ENUM$VALUES[];

        static 
        {
            INSTALL = new ButtonState("INSTALL", 0, Messages.ItemButtonController_install, Operation.NONE, false);
            UNINSTALL = new ButtonState("UNINSTALL", 1, Messages.ItemButtonController_uninstall, Operation.NONE, false);
            INSTALL_PENDING = new ButtonState("INSTALL_PENDING", 2, Messages.ItemButtonController_installPending, Operation.INSTALL, false);
            UNINSTALL_PENDING = new ButtonState("UNINSTALL_PENDING", 3, Messages.ItemButtonController_uninstallPending, Operation.UNINSTALL, false);
            DISABLED = new ButtonState("DISABLED", 4, Messages.ItemButtonController_install, Operation.NONE, true);
            UPDATE_DISABLED = new ButtonState("UPDATE_DISABLED", 5, Messages.ItemButtonController_update, Operation.NONE, true);
            UPDATE = new ButtonState("UPDATE", 6, Messages.ItemButtonController_update, Operation.NONE, false);
            UPDATE_PENDING = new ButtonState("UPDATE_PENDING", 7, Messages.ItemButtonController_updatePending, Operation.CHECK_FOR_UPDATES, false);
            ENUM$VALUES = (new ButtonState[] {
                INSTALL, UNINSTALL, INSTALL_PENDING, UNINSTALL_PENDING, DISABLED, UPDATE_DISABLED, UPDATE, UPDATE_PENDING
            });
        }



        private ButtonState(String s, int i, String label, Operation operation, boolean disabled)
        {
            super(s, i);
            this.label = label;
            this.operation = operation;
            this.disabled = disabled;
        }
    }


    public ItemButtonController(MarketplaceViewer marketplaceViewer, DiscoveryItem discoveryItem, Button button, Button secondaryButton)
    {
        item = discoveryItem;
        this.button = button;
        viewer = marketplaceViewer;
        this.secondaryButton = secondaryButton;
        updateButtonState();
        updateAppearance();
        button.addSelectionListener(new SelectionListener() {

            public void widgetSelected(SelectionEvent e)
            {
                buttonClicked(buttonState, secondaryButtonState);
            }

            public void widgetDefaultSelected(SelectionEvent e)
            {
                widgetSelected(e);
            }

            final ItemButtonController this$0;

            
            {
                this$0 = ItemButtonController.this;
                super();
            }
        }
);
        if(secondaryButton != null)
            secondaryButton.addSelectionListener(new SelectionListener() {

                public void widgetSelected(SelectionEvent e)
                {
                    buttonClicked(secondaryButtonState, buttonState);
                }

                public void widgetDefaultSelected(SelectionEvent e)
                {
                    widgetSelected(e);
                }

                final ItemButtonController this$0;

            
            {
                this$0 = ItemButtonController.this;
                super();
            }
            }
);
    }

    private void buttonClicked(ButtonState primary, ButtonState secondary)
    {
        if(primary != ButtonState.DISABLED)
        {
            primary = primary.nextState();
            secondary = secondary.noActionState();
            item.maybeModifySelection(primary.operation);
        }
        refresh();
    }

    private void updateButtonState()
    {
        MarketplaceNodeCatalogItem catalogItem = (MarketplaceNodeCatalogItem)item.getData();
        if(catalogItem.getInstallableUnits().isEmpty())
        {
            buttonState = ButtonState.DISABLED;
            secondaryButtonState = ButtonState.DISABLED;
        } else
        {
            Operation operation = item.getOperation();
            boolean installed = isItemInstalled();
            if(installed)
            {
                switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation()[operation.ordinal()])
                {
                case 3: // '\003'
                    buttonState = ButtonState.UPDATE_PENDING;
                    secondaryButtonState = ButtonState.UNINSTALL;
                    break;

                case 2: // '\002'
                    buttonState = ButtonState.UPDATE;
                    secondaryButtonState = ButtonState.UNINSTALL_PENDING;
                    break;

                case 4: // '\004'
                    buttonState = ButtonState.UPDATE;
                    secondaryButtonState = ButtonState.UNINSTALL;
                    break;
                }
                if(buttonState == ButtonState.UPDATE && catalogItem.getUpdateAvailable() != null && !catalogItem.getUpdateAvailable().booleanValue())
                    buttonState = ButtonState.UPDATE_DISABLED;
            } else
            {
                switch($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation()[operation.ordinal()])
                {
                case 1: // '\001'
                    buttonState = ButtonState.INSTALL_PENDING;
                    break;

                case 4: // '\004'
                    buttonState = ButtonState.INSTALL;
                    break;
                }
                secondaryButtonState = ButtonState.DISABLED;
                if(!isItemAvailable())
                    buttonState = ButtonState.DISABLED;
            }
        }
    }

    private boolean isItemInstalled()
    {
        return ((CatalogItem)item.getData()).isInstalled();
    }

    private boolean isItemAvailable()
    {
        Boolean available = ((CatalogItem)item.getData()).getAvailable();
        return available == null || available.booleanValue();
    }

    private void updateAppearance()
    {
        button.setText(buttonState.label);
        button.setEnabled(!buttonState.disabled);
        if(secondaryButton != null)
        {
            secondaryButton.setText(secondaryButtonState.label);
            secondaryButton.setEnabled(!secondaryButtonState.disabled);
        }
        item.layout(true, true);
    }

    public void refresh()
    {
        updateButtonState();
        updateAppearance();
    }

    static int[] $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation()
    {
        $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation;
        if($SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JVM INSTR pop ;
        int ai[] = new int[Operation.values().length];
        try
        {
            ai[Operation.CHECK_FOR_UPDATES.ordinal()] = 3;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[Operation.INSTALL.ordinal()] = 1;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[Operation.NONE.ordinal()] = 4;
        }
        catch(NoSuchFieldError _ex) { }
        try
        {
            ai[Operation.UNINSTALL.ordinal()] = 2;
        }
        catch(NoSuchFieldError _ex) { }
        return $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation = ai;
    }

    private final DiscoveryItem item;
    private final Button button;
    private ButtonState buttonState;
    private final Button secondaryButton;
    private ButtonState secondaryButtonState;
    private final MarketplaceViewer viewer;
    private static int $SWITCH_TABLE$org$eclipse$epp$internal$mpc$ui$wizards$Operation[];



}
