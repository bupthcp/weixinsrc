// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ArtifactInfo.java

package org.eclipse.m2e.core.ui.internal.search.util;


public class ArtifactInfo
{

    public ArtifactInfo(String groupId, String artifactId, String version, String classfier, String type)
    {
        this.groupId = groupId;
        this.artifactId = artifactId;
        this.version = version;
        this.classfier = classfier;
        this.type = type;
    }

    public String getGroupId()
    {
        return groupId;
    }

    public String getArtifactId()
    {
        return artifactId;
    }

    public String getVersion()
    {
        return version;
    }

    public String getClassfier()
    {
        return classfier;
    }

    public String getType()
    {
        return type;
    }

    public String toString()
    {
        String retValue = "";
        retValue = (new StringBuilder("ArtifactInfo ( groupId = ")).append(groupId).append("    ").append("artifactId = ").append(artifactId).append("    ").append("version = ").append(version).append("    ").append("classfier = ").append(classfier).append("    ").append("type = ").append(type).append("    ").append(" )").toString();
        return retValue;
    }

    private final String groupId;
    private final String artifactId;
    private final String version;
    private final String classfier;
    private final String type;
}
