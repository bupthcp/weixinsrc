// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   OverviewToolTip.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Platform;
import org.eclipse.epp.internal.mpc.core.util.TextUtil;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;
import org.eclipse.epp.internal.mpc.ui.util.Util;
import org.eclipse.equinox.internal.p2.discovery.AbstractCatalogSource;
import org.eclipse.equinox.internal.p2.discovery.model.Overview;
import org.eclipse.equinox.internal.p2.ui.discovery.util.WorkbenchUtil;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.window.ToolTip;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.SWTException;
import org.eclipse.swt.browser.*;
import org.eclipse.swt.events.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.widgets.*;

// Referenced classes of package org.eclipse.epp.internal.mpc.ui.wizards:
//            Messages, IMarketplaceWebBrowser

class OverviewToolTip extends ToolTip
{

    public OverviewToolTip(Control control, IMarketplaceWebBrowser browser, AbstractCatalogSource source, Overview overview, Image leftImage)
    {
        super(control, 1, true);
        Assert.isNotNull(source);
        Assert.isNotNull(overview);
        parent = control;
        this.source = source;
        this.overview = overview;
        this.leftImage = leftImage;
        this.browser = browser;
        setHideOnMouseDown(false);
    }

    protected Composite createToolTipContentArea(Event event, final Composite parent)
    {
        GridLayoutFactory.fillDefaults().applyTo(parent);
        org.eclipse.swt.graphics.Color backgroundColor = parent.getDisplay().getSystemColor(1);
        Composite container = new Composite(parent, 0);
        container.setBackground(backgroundColor);
        Image image = null;
        if(overview.getScreenshot() != null)
        {
            image = computeImage(source, overview.getScreenshot());
            if(image != null)
            {
                final Image fimage = image;
                container.addDisposeListener(new DisposeListener() {

                    public void widgetDisposed(DisposeEvent e)
                    {
                        fimage.dispose();
                    }

                    final OverviewToolTip this$0;
                    private final Image val$fimage;

            
            {
                this$0 = OverviewToolTip.this;
                fimage = image;
                super();
            }
                }
);
            }
        }
        boolean hasLearnMoreLink = overview.getUrl() != null && overview.getUrl().length() > 0;
        GridDataFactory.fillDefaults().grab(true, true).hint(image != null ? 650 : 500, -1).applyTo(container);
        GridLayoutFactory.fillDefaults().numColumns(leftImage == null ? 2 : 3).margins(5, 5).spacing(3, 0).applyTo(container);
        if(leftImage != null)
        {
            Label imageLabel = new Label(container, 0);
            imageLabel.setImage(leftImage);
            imageLabel.setBackground(backgroundColor);
            int imageWidthHint = leftImage.getBounds().width + 5;
            GridDataFactory.fillDefaults().align(1, 1).hint(imageWidthHint, -1).applyTo(imageLabel);
        }
        String summary = overview.getSummary();
        Composite summaryContainer = new Composite(container, 0);
        summaryContainer.setBackground(backgroundColor);
        GridLayoutFactory.fillDefaults().applyTo(summaryContainer);
        GridDataFactory gridDataFactory = GridDataFactory.fillDefaults().grab(true, true).span(image != null ? 1 : 2, 1);
        if(image != null)
            gridDataFactory.hint(320, 242);
        gridDataFactory.applyTo(summaryContainer);
        Browser summaryLabel = new Browser(summaryContainer, 0);
        Font dialogFont = JFaceResources.getDialogFont();
        FontData fontData[] = dialogFont.getFontData();
        String attr = "";
        String fontSizeUnitOfMeasure = "pt";
        if("macosx".equals(Platform.getOS()))
            fontSizeUnitOfMeasure = "px";
        else
        if("win32".equals(Platform.getOS()))
            attr = "overflow: auto; ";
        String cssStyle = (new StringBuilder("body, p, div, *  {")).append(attr).append("font-family:\"").append(fontData[0].getName()).append("\",Arial,sans-serif !important;font-size:").append(fontData[0].getHeight()).append(fontSizeUnitOfMeasure).append(" !important;").append("} body { margin: 0px; background-color: white;}").toString();
        summaryLabel.setFont(dialogFont);
        String html = (new StringBuilder("<html><style>")).append(cssStyle).append("</style><body>").append(TextUtil.cleanInformalHtmlMarkup(summary)).append("</body></html>").toString();
        summaryLabel.setText(html);
        summaryLabel.setBackground(backgroundColor);
        summaryLabel.addLocationListener(new LocationListener() {

            public void changing(LocationEvent event)
            {
                if(event.location.equals("about:blank"))
                {
                    return;
                } else
                {
                    event.doit = false;
                    hide();
                    WorkbenchUtil.openUrl(event.location, 128);
                    return;
                }
            }

            public void changed(LocationEvent locationevent)
            {
            }

            final OverviewToolTip this$0;

            
            {
                this$0 = OverviewToolTip.this;
                super();
            }
        }
);
        GridDataFactory.fillDefaults().align(4, 4).grab(true, true).hint(-1, image != null ? -1 : 240).applyTo(summaryLabel);
        if(image != null)
        {
            Composite imageContainer = new Composite(container, 2048);
            GridLayoutFactory.fillDefaults().applyTo(imageContainer);
            GridDataFactory.fillDefaults().grab(false, false).align(0x1000000, 1).hint(322, 242).applyTo(imageContainer);
            Label imageLabel = new Label(imageContainer, 0);
            GridDataFactory.fillDefaults().hint(320, 240).indent(1, 1).applyTo(imageLabel);
            imageLabel.setImage(image);
            imageLabel.setBackground(backgroundColor);
            imageLabel.setSize(320, 240);
            final Cursor handCursor = new Cursor(image.getDevice(), 21);
            imageLabel.setCursor(handCursor);
            imageLabel.addDisposeListener(new DisposeListener() {

                public void widgetDisposed(DisposeEvent e)
                {
                    handCursor.dispose();
                }

                final OverviewToolTip this$0;
                private final Cursor val$handCursor;

            
            {
                this$0 = OverviewToolTip.this;
                handCursor = cursor;
                super();
            }
            }
);
            imageLabel.addMouseListener(new MouseAdapter() {

                public void mouseDown(MouseEvent e)
                {
                    hide();
                    WorkbenchUtil.openUrl(overview.getScreenshot(), 128);
                }

                final OverviewToolTip this$0;

            
            {
                this$0 = OverviewToolTip.this;
                super();
            }
            }
);
            imageContainer.setBackground(parent.getDisplay().getSystemColor(16));
        }
        if(hasLearnMoreLink)
        {
            Link link = new Link(summaryContainer, 0);
            GridDataFactory.fillDefaults().grab(false, false).align(1, 0x1000000).applyTo(link);
            link.setText(Messages.OverviewToolTip_learnMoreLink);
            link.setBackground(backgroundColor);
            link.setToolTipText(NLS.bind(Messages.OverviewToolTip_openUrlInBrowser, overview.getUrl()));
            link.addSelectionListener(new SelectionListener() {

                public void widgetSelected(SelectionEvent e)
                {
                    hide();
                    browser.openUrl(overview.getUrl());
                }

                public void widgetDefaultSelected(SelectionEvent e)
                {
                    widgetSelected(e);
                }

                final OverviewToolTip this$0;

            
            {
                this$0 = OverviewToolTip.this;
                super();
            }
            }
);
        }
        if(image == null)
        {
            Point optimalSize = summaryContainer.computeSize(-1, -1, true);
            if(optimalSize.y > 252)
            {
                ((GridData)summaryContainer.getLayoutData()).heightHint = 242;
                container.layout(true);
            }
        }
        Display.getCurrent().asyncExec(new Runnable() {

            public void run()
            {
                if(!parent.isDisposed())
                    parent.setFocus();
            }

            final OverviewToolTip this$0;
            private final Composite val$parent;

            
            {
                this$0 = OverviewToolTip.this;
                parent = composite;
                super();
            }
        }
);
        return container;
    }

    private Image computeImage(AbstractCatalogSource discoverySource, String imagePath)
    {
        java.net.URL resource = discoverySource.getResource(imagePath);
        if(resource != null)
            try
            {
                ImageDescriptor descriptor = ImageDescriptor.createFromURL(resource);
                Image image = descriptor.createImage();
                Rectangle imageBounds = image.getBounds();
                if(imageBounds.width > 320 || imageBounds.height > 240)
                {
                    Image scaledImage = Util.scaleImage(image, 320, 240);
                    Image originalImage = image;
                    image = scaledImage;
                    originalImage.dispose();
                }
                return image;
            }
            catch(SWTException e)
            {
                MarketplaceClientUi.error(NLS.bind(Messages.OverviewToolTip_cannotRenderImage_reason, imagePath, e.getMessage()), e);
            }
        return null;
    }

    public void show(Control titleControl)
    {
        Point titleAbsLocation = titleControl.getParent().toDisplay(titleControl.getLocation());
        Point containerAbsLocation = parent.getParent().toDisplay(parent.getLocation());
        Rectangle bounds = titleControl.getBounds();
        int relativeX = titleAbsLocation.x - containerAbsLocation.x;
        int relativeY = titleAbsLocation.y - containerAbsLocation.y;
        relativeY += bounds.height + 3;
        show(new Point(relativeX, relativeY));
    }

    final int SCREENSHOT_HEIGHT = 240;
    final int SCREENSHOT_WIDTH = 320;
    private final Overview overview;
    private final AbstractCatalogSource source;
    private final Control parent;
    private final Image leftImage;
    private final IMarketplaceWebBrowser browser;


}
