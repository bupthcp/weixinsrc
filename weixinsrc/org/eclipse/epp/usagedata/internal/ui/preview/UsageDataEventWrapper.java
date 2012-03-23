// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   UsageDataEventWrapper.java

package org.eclipse.epp.usagedata.internal.ui.preview;

import org.eclipse.epp.usagedata.internal.gathering.events.UsageDataEvent;
import org.eclipse.epp.usagedata.internal.recording.filtering.UsageDataEventFilter;
import org.eclipse.epp.usagedata.internal.recording.uploading.UploadParameters;

class UsageDataEventWrapper
{

    public UsageDataEventWrapper(UploadParameters parameters, UsageDataEvent event)
    {
        isIncludedByFilter = null;
        this.parameters = parameters;
        this.event = event;
    }

    public String getKind()
    {
        return event.kind;
    }

    public String getBundleId()
    {
        return event.bundleId;
    }

    public String getBundleVersion()
    {
        return event.bundleVersion;
    }

    public long getWhen()
    {
        return event.when;
    }

    public String getDescription()
    {
        return event.description;
    }

    public String getWhat()
    {
        return event.what;
    }

    public synchronized boolean isIncludedByFilter()
    {
        if(isIncludedByFilter == null)
            isIncludedByFilter = Boolean.valueOf(parameters.getFilter().includes(event));
        return isIncludedByFilter.booleanValue();
    }

    public synchronized void resetCaches()
    {
        isIncludedByFilter = null;
    }

    private final UsageDataEvent event;
    Boolean isIncludedByFilter;
    private final UploadParameters parameters;
}
