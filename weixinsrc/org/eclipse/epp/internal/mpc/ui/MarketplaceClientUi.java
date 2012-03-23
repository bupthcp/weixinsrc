// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   MarketplaceClientUi.java

package org.eclipse.epp.internal.mpc.ui;

import java.lang.reflect.InvocationTargetException;
import java.util.*;
import org.eclipse.core.runtime.*;
import org.eclipse.equinox.p2.core.IProvisioningAgent;
import org.eclipse.equinox.p2.engine.IProfile;
import org.eclipse.equinox.p2.engine.IProfileRegistry;
import org.eclipse.equinox.p2.metadata.IInstallableUnit;
import org.eclipse.equinox.p2.query.IQueryResult;
import org.eclipse.equinox.p2.query.QueryUtil;
import org.eclipse.equinox.p2.ui.ProvisioningUI;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.widgets.Control;
import org.eclipse.ui.IWorkbench;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.help.IWorkbenchHelpSystem;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleContext;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui:
//            MarketplaceClientUiPlugin, Messages

public class MarketplaceClientUi
{

    public MarketplaceClientUi()
    {
    }

    public static ILog getLog()
    {
        return Platform.getLog(Platform.getBundle("org.eclipse.epp.mpc.ui"));
    }

    public static void error(String message, Throwable exception)
    {
        if(message == null)
            message = NLS.bind(Messages.MarketplaceClientUi_unexpectedException_reason, exception.getMessage());
        getLog().log(new Status(4, "org.eclipse.epp.mpc.ui", 4, message, exception));
    }

    public static void error(Throwable exception)
    {
        error(null, exception);
    }

    public static IStatus computeStatus(InvocationTargetException e, String message)
    {
        Throwable cause = e.getCause();
        IStatus statusCause;
        if(cause instanceof CoreException)
            statusCause = ((CoreException)cause).getStatus();
        else
            statusCause = new Status(4, "org.eclipse.epp.mpc.ui", cause.getMessage(), cause);
        if(statusCause.getMessage() != null)
            message = NLS.bind(Messages.MarketplaceClientUi_message_message2, message, statusCause.getMessage());
        IStatus status = new MultiStatus("org.eclipse.epp.mpc.ui", 0, new IStatus[] {
            statusCause
        }, message, cause);
        return status;
    }

    public static BundleContext getBundleContext()
    {
        return MarketplaceClientUiPlugin.getInstance().getBundle().getBundleContext();
    }

    public static Map computeInstalledIUsById(IProgressMonitor monitor)
    {
        Map iUs;
        BundleContext bundleContext;
        org.osgi.framework.ServiceReference serviceReference;
        IProvisioningAgent agent;
        iUs = new HashMap();
        bundleContext = getBundleContext();
        serviceReference = bundleContext.getServiceReference(IProvisioningAgent.SERVICE_NAME);
        if(serviceReference == null)
            break MISSING_BLOCK_LABEL_165;
        agent = (IProvisioningAgent)bundleContext.getService(serviceReference);
        IProfileRegistry profileRegistry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if(profileRegistry != null)
        {
            IProfile profile = profileRegistry.getProfile(ProvisioningUI.getDefaultUI().getProfileId());
            if(profile != null)
            {
                IQueryResult result = profile.available(QueryUtil.createIUGroupQuery(), monitor);
                IInstallableUnit unit;
                for(Iterator it = result.iterator(); it.hasNext(); iUs.put(unit.getId(), unit))
                    unit = (IInstallableUnit)it.next();

            }
        }
        break MISSING_BLOCK_LABEL_157;
        Exception exception;
        exception;
        bundleContext.ungetService(serviceReference);
        throw exception;
        bundleContext.ungetService(serviceReference);
        return iUs;
    }

    public static Set computeInstalledFeatures(IProgressMonitor monitor)
    {
        Set features;
        BundleContext bundleContext;
        org.osgi.framework.ServiceReference serviceReference;
        IProvisioningAgent agent;
        features = new HashSet();
        bundleContext = getBundleContext();
        serviceReference = bundleContext.getServiceReference(IProvisioningAgent.SERVICE_NAME);
        if(serviceReference == null)
            break MISSING_BLOCK_LABEL_163;
        agent = (IProvisioningAgent)bundleContext.getService(serviceReference);
        IProfileRegistry profileRegistry = (IProfileRegistry)agent.getService(IProfileRegistry.SERVICE_NAME);
        if(profileRegistry != null)
        {
            IProfile profile = profileRegistry.getProfile(ProvisioningUI.getDefaultUI().getProfileId());
            if(profile != null)
            {
                IQueryResult result = profile.available(QueryUtil.createIUGroupQuery(), monitor);
                IInstallableUnit unit;
                for(Iterator it = result.iterator(); it.hasNext(); features.add(unit.getId()))
                    unit = (IInstallableUnit)it.next();

            }
        }
        break MISSING_BLOCK_LABEL_155;
        Exception exception;
        exception;
        bundleContext.ungetService(serviceReference);
        throw exception;
        bundleContext.ungetService(serviceReference);
        if(features.isEmpty())
        {
            IBundleGroupProvider bundleGroupProviders[] = Platform.getBundleGroupProviders();
            IBundleGroupProvider aibundlegroupprovider[];
            int j = (aibundlegroupprovider = bundleGroupProviders).length;
            for(int i = 0; i < j; i++)
            {
                IBundleGroupProvider provider = aibundlegroupprovider[i];
                if(monitor.isCanceled())
                    break;
                IBundleGroup bundleGroups[] = provider.getBundleGroups();
                IBundleGroup aibundlegroup[];
                int l = (aibundlegroup = bundleGroups).length;
                for(int k = 0; k < l; k++)
                {
                    IBundleGroup group = aibundlegroup[k];
                    String identifier = group.getIdentifier();
                    if(!identifier.endsWith(".feature.group"))
                        identifier = (new StringBuilder(String.valueOf(identifier))).append(".feature.group").toString();
                    features.add(identifier);
                }

            }

        }
        return features;
    }

    public static void setDefaultHelp(Control control)
    {
        PlatformUI.getWorkbench().getHelpSystem().setHelp(control, "org.eclipse.epp.mpc.help.ui.userGuide");
    }

    private static final String DOT_FEATURE_DOT_GROUP = ".feature.group";
    public static final String BUNDLE_ID = "org.eclipse.epp.mpc.ui";
}
