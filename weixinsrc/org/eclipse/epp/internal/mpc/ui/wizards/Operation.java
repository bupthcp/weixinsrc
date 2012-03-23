// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Operation.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Messages

public final class Operation extends Enum
{

    private Operation(String s, int i, org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType operationType, String label)
    {
        super(s, i);
        this.operationType = operationType;
        this.label = label;
    }

    public org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType getOperationType()
    {
        return operationType;
    }

    public String getLabel()
    {
        return label;
    }

    public static Operation[] values()
    {
        Operation aoperation[];
        int i;
        Operation aoperation1[];
        System.arraycopy(aoperation = ENUM$VALUES, 0, aoperation1 = new Operation[i = aoperation.length], 0, i);
        return aoperation1;
    }

    public static Operation valueOf(String s)
    {
        return (Operation)Enum.valueOf(org/eclipse/epp/internal/mpc/ui/wizards/Operation, s);
    }

    public static final Operation INSTALL;
    public static final Operation UNINSTALL;
    public static final Operation CHECK_FOR_UPDATES;
    public static final Operation NONE;
    private final org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType operationType;
    private final String label;
    private static final Operation ENUM$VALUES[];

    static 
    {
        INSTALL = new Operation("INSTALL", 0, org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.INSTALL, Messages.Operation_install);
        UNINSTALL = new Operation("UNINSTALL", 1, org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.UNINSTALL, Messages.Operation_uninstall);
        CHECK_FOR_UPDATES = new Operation("CHECK_FOR_UPDATES", 2, org.eclipse.epp.internal.mpc.ui.operations.ProfileChangeOperationComputer.OperationType.UPDATE, Messages.Operation_update);
        NONE = new Operation("NONE", 3, null, null);
        ENUM$VALUES = (new Operation[] {
            INSTALL, UNINSTALL, CHECK_FOR_UPDATES, NONE
        });
    }
}
