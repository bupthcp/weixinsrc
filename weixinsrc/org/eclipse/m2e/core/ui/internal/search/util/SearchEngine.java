// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   SearchEngine.java

package org.eclipse.m2e.core.ui.internal.search.util;

import java.util.Collection;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.search.util:
//            Packaging, ArtifactInfo

public interface SearchEngine
{

    public abstract Collection findGroupIds(String s, Packaging packaging, ArtifactInfo artifactinfo);

    public abstract Collection findArtifactIds(String s, String s1, Packaging packaging, ArtifactInfo artifactinfo);

    public abstract Collection findVersions(String s, String s1, String s2, Packaging packaging);

    public abstract Collection findClassifiers(String s, String s1, String s2, String s3, Packaging packaging);

    public abstract Collection findTypes(String s, String s1, String s2, String s3, Packaging packaging);
}
