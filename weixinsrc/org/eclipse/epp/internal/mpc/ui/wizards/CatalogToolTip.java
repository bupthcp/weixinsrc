// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CatalogToolTip.java

package org.eclipse.epp.internal.mpc.ui.wizards;

import org.eclipse.epp.internal.mpc.core.util.TextUtil;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUiPlugin;
import org.eclipse.epp.mpc.ui.CatalogDescriptor;
import org.eclipse.equinox.internal.p2.ui.discovery.util.GradientToolTip;
import org.eclipse.jface.layout.GridDataFactory;
import org.eclipse.jface.layout.GridLayoutFactory;
import org.eclipse.jface.resource.*;
import org.eclipse.swt.graphics.*;
import org.eclipse.swt.widgets.*;

public class CatalogToolTip extends GradientToolTip
{

    public static void attachCatalogToolTip(Label label, CatalogDescriptor catalogDescriptor)
    {
        new CatalogToolTip(label, catalogDescriptor);
    }

    private CatalogToolTip(Label label, CatalogDescriptor catalogDescriptor)
    {
        super(label);
        this.label = label;
        this.catalogDescriptor = catalogDescriptor;
    }

    protected Composite createToolTipArea(Event event, Composite parent)
    {
        GridLayoutFactory.fillDefaults().numColumns(2).margins(5, 5).equalWidth(false).applyTo(parent);
        createIcon(parent);
        createLabel(parent);
        createDescription(parent);
        return parent;
    }

    private void createDescription(Composite parent)
    {
        Label descriptionLabel = new Label(parent, 64);
        GridDataFactory.fillDefaults().grab(true, false).span(2, 1).hint(100, -1).applyTo(descriptionLabel);
        descriptionLabel.setBackground(null);
        String description = catalogDescriptor.getDescription() != null ? TextUtil.escapeText(catalogDescriptor.getDescription()) : "";
        descriptionLabel.setText(description);
    }

    private void createLabel(Composite parent)
    {
        Label nameLabel = new Label(parent, 0);
        FontDescriptor h1FontDescriptor = createFontDescriptor(1, 1.35F);
        nameLabel.setFont(h1FontDescriptor.createFont(parent.getDisplay()));
        nameLabel.setText(TextUtil.escapeText(catalogDescriptor.getLabel()));
        nameLabel.setBackground(null);
        GridDataFactory.fillDefaults().grab(true, false).applyTo(nameLabel);
    }

    private void createIcon(Composite parent)
    {
        image = label.getImage();
        if(image == null)
        {
            ImageRegistry registry = MarketplaceClientUiPlugin.getInstance().getImageRegistry();
            image = registry.get("NO_ICON_PROVIDED_CATALOG");
        }
        Label iconLabel = new Label(parent, 0);
        iconLabel.setImage(image);
        iconLabel.setBackground(null);
        GridDataFactory.swtDefaults().align(0x1000000, 1).span(1, 2).applyTo(iconLabel);
    }

    private FontDescriptor createFontDescriptor(int style, float heightMultiplier)
    {
        Font baseFont = JFaceResources.getDialogFont();
        FontData fontData[] = baseFont.getFontData();
        FontData newFontData[] = new FontData[fontData.length];
        for(int i = 0; i < newFontData.length; i++)
            newFontData[i] = new FontData(fontData[i].getName(), (int)((float)fontData[i].getHeight() * heightMultiplier), fontData[i].getStyle() | style);

        return FontDescriptor.createFrom(newFontData);
    }

    private Image image;
    private final CatalogDescriptor catalogDescriptor;
    private final Label label;
}
