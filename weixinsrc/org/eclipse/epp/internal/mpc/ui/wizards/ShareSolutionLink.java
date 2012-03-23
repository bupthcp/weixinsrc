// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ShareSolutionLink.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.URI;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.epp.internal.mpc.core.util.TextUtil;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.equinox.internal.p2.discovery.model.CatalogItem;
import org.eclipse.equinox.internal.p2.discovery.model.Overview;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.jface.dialogs.MessageDialog;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.dnd.*;
import org.eclipse.swt.events.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Messages

public class ShareSolutionLink extends Composite
{

    public ShareSolutionLink(Composite parent, CatalogItem item)
    {
        super(parent, 0);
        catalogItem = item;
        setLayout(new GridLayout());
        Control shareControl = createShareLink(this);
        Menu popupMenu = createMenu(shareControl);
        attachMenu(shareControl, popupMenu);
    }

    private static Control createShareLink(Composite parent)
    {
        Link link = new Link(parent, 0);
        link.setLayoutData(new GridData(1, 0x1000000, false, false));
        link.setText((new StringBuilder("<a>")).append(Messages.ShareSolutionLink_Share).append("</a>").toString());
        return link;
    }

    private Menu createMenu(Control control)
    {
        Menu popupMenu = new Menu(control);
        createTweetMenu(popupMenu);
        if(isMailSupported())
            createMailMenu(popupMenu);
        return popupMenu;
    }

    private void createTweetMenu(Menu popupMenu)
    {
        MenuItem twitterItem = new MenuItem(popupMenu, 8);
        twitterItem.setText(Messages.ShareSolutionLink_Twitter);
        twitterItem.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                String tweet = NLS.bind(Messages.ShareSolutionLink_tweet, new Object[] {
                    catalogItem.getName(), catalogItem.getOverview().getUrl()
                });
                WorkbenchUtil.openUrl((new StringBuilder("http://twitter.com/?status=")).append(tweet).toString(), 128);
            }

            final ShareSolutionLink this$0;

            
            {
                this$0 = ShareSolutionLink.this;
                super();
            }
        }
);
    }

    private void createMailMenu(Menu popupMenu)
    {
        MenuItem mailItem = new MenuItem(popupMenu, 8);
        mailItem.setText(Messages.ShareSolutionLink_EMail);
        mailItem.addSelectionListener(new SelectionAdapter() {

            public void widgetSelected(SelectionEvent e)
            {
                openNewMail();
            }

            final ShareSolutionLink this$0;

            
            {
                this$0 = ShareSolutionLink.this;
                super();
            }
        }
);
    }

    protected void openNewMail()
    {
        String subject = NLS.bind(Messages.ShareSolutionLink_mailSubject, new Object[] {
            catalogItem.getName()
        });
        String body = computeMessage();
        String recipient = Messages.ShareSolutionLink_recipient;
        String mailToString = (new StringBuilder("mailto:")).append(recipient).append("?subject=").append(subject).append("&body=").append(body).toString();
        try
        {
            URI uri = URIUtil.fromString(mailToString);
            openMail(uri);
        }
        catch(Exception e)
        {
            boolean copyToClipboard = MessageDialog.openQuestion(WorkbenchUtil.getShell(), Messages.ShareSolutionLink_share, Messages.ShareSolutionLink_failed_to_open_manually_share);
            if(copyToClipboard)
            {
                Clipboard clipboard = new Clipboard(getDisplay());
                TextTransfer textTransfer = TextTransfer.getInstance();
                Transfer transfers[] = {
                    textTransfer
                };
                Object data[] = {
                    body
                };
                clipboard.setContents(data, transfers);
                clipboard.dispose();
            }
            MarketplaceClientUi.error(e);
        }
    }

    private String computeMessage()
    {
        String description = catalogItem.getDescription() != null ? catalogItem.getDescription() : "";
        description = TextUtil.stripHtmlMarkup(catalogItem.getDescription()).trim();
        return (new StringBuilder(String.valueOf(catalogItem.getName()))).append("\n").append(catalogItem.getOverview().getUrl()).append("\n\n").append(description).toString();
    }

    private void openMail(URI uri)
        throws Exception
    {
        Class desktopClazz = getDesktopClazz();
        Method getDesktopMethod = desktopClazz.getMethod("getDesktop", new Class[0]);
        Object desktop = getDesktopMethod.invoke(null, new Object[0]);
        Method mailMethod = desktopClazz.getMethod("mail", new Class[] {
            java/net/URI
        });
        mailMethod.invoke(desktop, new Object[] {
            uri
        });
    }

    private boolean isMailSupported()
    {
        boolean isDesktopSupported;
        Object desktop;
        Class actionEnum;
        Class desktopClazz = getDesktopClazz();
        Method isDesktopSupportedMethod = desktopClazz.getMethod("isDesktopSupported", new Class[0]);
        isDesktopSupported = ((Boolean)isDesktopSupportedMethod.invoke(null, new Object[0])).booleanValue();
        Method getDesktopMethod = desktopClazz.getMethod("getDesktop", new Class[0]);
        desktop = getDesktopMethod.invoke(null, new Object[0]);
        Class classes[] = desktopClazz.getClasses();
        actionEnum = null;
        Class aclass[];
        int j = (aclass = classes).length;
        for(int i = 0; i < j; i++)
        {
            Class innerClass = aclass[i];
            if(innerClass.getName().equals("java.awt.Desktop$Action"))
                actionEnum = innerClass;
        }

        if(actionEnum == null)
            return false;
        try
        {
            Method isSupportedMethod = desktop.getClass().getMethod("isSupported", new Class[] {
                actionEnum
            });
            Field mailEnumOption = actionEnum.getDeclaredField("MAIL");
            boolean isMailSupported = ((Boolean)isSupportedMethod.invoke(desktop, new Object[] {
                mailEnumOption.get(null)
            })).booleanValue();
            return isDesktopSupported && isMailSupported;
        }
        catch(Exception _ex)
        {
            return false;
        }
    }

    private Class getDesktopClazz()
        throws ClassNotFoundException
    {
        Class desktopClazz = getClass().getClassLoader().loadClass("java.awt.Desktop");
        return desktopClazz;
    }

    private static void attachMenu(Control shareControl, final Menu popupMenu)
    {
        shareControl.setMenu(popupMenu);
        shareControl.addMouseListener(new MouseAdapter() {

            public void mouseUp(MouseEvent e)
            {
                popupMenu.setVisible(true);
            }

            private final Menu val$popupMenu;

            
            {
                popupMenu = menu;
                super();
            }
        }
);
    }

    private final CatalogItem catalogItem;

}
