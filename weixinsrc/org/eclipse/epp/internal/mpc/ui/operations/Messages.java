// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Messages.java

package org.eclipse.epp.internal.mpc.ui.operations;

import org.eclipse.osgi.util.NLS;

class Messages extends NLS
{

    private Messages()
    {
    }

    private static final String BUNDLE_NAME = "org.eclipse.epp.internal.mpc.ui.operations.messages";
    public static String ProvisioningOperation_commaSeparator;
    public static String ProvisioningOperation_configuringProvisioningOperation;
    public static String ProvisioningOperation_nothingToUpdate;
    public static String ProvisioningOperation_proceedQuestion;
    public static String ProvisioningOperation_unavailableSolutions;
    public static String ProvisioningOperation_unavailableSolutions_proceedQuestion;
    public static String ProvisioningOperation_unavailableFeatures;
    public static String ProvisioningOperation_unexpectedErrorUrl;
    public static String ResolveFeatureNamesOperation_resolvingFeatures;

    static 
    {
        NLS.initializeMessages("org.eclipse.epp.internal.mpc.ui.operations.messages", org/eclipse/epp/internal/mpc/ui/operations/Messages);
    }
}
