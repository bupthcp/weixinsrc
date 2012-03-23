// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Util.java

package org.eclipse.epp.internal.mpc.ui.util;

import org.eclipse.core.runtime.IStatus;
import org.eclipse.swt.graphics.*;

public class Util
{

    public Util()
    {
    }

    public static Image scaleImage(Image image, int maxWidth, int maxHeight)
    {
        Rectangle bounds;
        int newHeight;
        int newWidth;
        Image scaledImage;
        GC gc;
        bounds = image.getBounds();
        float widthRatio = (float)bounds.width / (float)maxWidth;
        float heightRatio = (float)bounds.height / (float)maxHeight;
        if(widthRatio > heightRatio)
        {
            newWidth = maxWidth;
            newHeight = Math.min(maxHeight, (int)((float)bounds.height / widthRatio));
        } else
        {
            newWidth = Math.min(maxWidth, (int)((float)bounds.width / heightRatio));
            newHeight = maxHeight;
        }
        scaledImage = new Image(image.getDevice(), newWidth, newHeight);
        gc = new GC(scaledImage);
        gc.drawImage(image, 0, 0, bounds.width, bounds.height, 0, 0, newWidth, newHeight);
        break MISSING_BLOCK_LABEL_135;
        Exception exception;
        exception;
        gc.dispose();
        throw exception;
        gc.dispose();
        return scaledImage;
    }

    public static int computeMessageType(IStatus status)
    {
        int messageType;
        switch(status.getSeverity())
        {
        case 0: // '\0'
        case 1: // '\001'
            messageType = 1;
            break;

        case 2: // '\002'
            messageType = 2;
            break;

        default:
            messageType = 3;
            break;
        }
        return messageType;
    }
}
