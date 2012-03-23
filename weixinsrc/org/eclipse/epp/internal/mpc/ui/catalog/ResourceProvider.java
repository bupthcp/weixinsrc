// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ResourceProvider.java

package org.eclipse.epp.internal.mpc.ui.catalog;

import java.io.*;
import java.net.*;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.epp.internal.mpc.ui.MarketplaceClientUi;

class ResourceProvider
{

    public ResourceProvider()
        throws IOException
    {
        dir.delete();
        if(!dir.mkdirs())
            throw new IOException(dir.getAbsolutePath());
        else
            return;
    }

    public URL getResource(String resourceName)
    {
        File resource = (File)resources.get(resourceName);
        try
        {
            return resource != null ? resource.toURI().toURL() : null;
        }
        catch(MalformedURLException e)
        {
            MarketplaceClientUi.error(e);
        }
        return null;
    }

    public boolean containsResource(String resourceName)
    {
        return resources.containsKey(resourceName);
    }

    public void putResource(String resourceName, InputStream input)
        throws IOException
    {
        File outputFile;
        BufferedOutputStream output;
        String filenameHint = resourceName;
        if(filenameHint.lastIndexOf('/') != -1)
            filenameHint = filenameHint.substring(filenameHint.lastIndexOf('/') + 1);
        filenameHint = filenameHint.replaceAll("[^a-zA-Z0-9\\.]", "_");
        if(filenameHint.length() > 32)
            filenameHint = filenameHint.substring(filenameHint.length() - 32);
        outputFile = File.createTempFile("res_", filenameHint, dir);
        output = new BufferedOutputStream(new FileOutputStream(outputFile));
        input = new BufferedInputStream(input);
        int i;
        while((i = input.read()) != -1) 
            output.write(i);
        break MISSING_BLOCK_LABEL_128;
        Exception exception;
        exception;
        output.close();
        throw exception;
        output.close();
        resources.put(resourceName, outputFile);
        return;
    }

    public void dispose()
    {
        if(dir != null && dir.exists())
        {
            File files[] = dir.listFiles();
            if(files != null)
            {
                File afile[];
                int j = (afile = files).length;
                for(int i = 0; i < j; i++)
                {
                    File file = afile[i];
                    file.delete();
                }

            }
            dir.delete();
        }
    }

    private final File dir = File.createTempFile(org/eclipse/epp/internal/mpc/ui/catalog/ResourceProvider.getSimpleName(), ".tmp");
    private final Map resources = new ConcurrentHashMap();
}
