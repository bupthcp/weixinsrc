// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   IndexSearchEngine.java

package org.eclipse.m2e.core.ui.internal.search.util;

import java.util.*;
import org.apache.maven.artifact.versioning.ComparableVersion;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.m2e.core.internal.index.*;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.search.util:
//            Packaging, SearchEngine, SearchException, ArtifactInfo

public class IndexSearchEngine
    implements SearchEngine
{

    public IndexSearchEngine(IIndex index)
    {
        this.index = index;
    }

    protected boolean isBlank(String str)
    {
        return str == null || str.trim().length() == 0;
    }

    public Collection findArtifactIds(String groupId, String searchExpression, Packaging packaging, ArtifactInfo containingArtifact)
    {
        ArrayList groupIdSearchExpressions = new ArrayList();
        if(isBlank(groupId))
        {
            groupIdSearchExpressions.add(new MatchTypedStringSearchExpression("org.apache.maven.plugins", org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT));
            groupIdSearchExpressions.add(new MatchTypedStringSearchExpression("org.codehaus.mojo", org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT));
        } else
        {
            groupIdSearchExpressions.add(new MatchTypedStringSearchExpression(groupId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT));
        }
        try
        {
            TreeSet ids = new TreeSet();
            IndexedArtifact artifact;
            for(Iterator iterator = index.find(groupIdSearchExpressions, null, null, packaging.toSearchExpression() != null ? ((Collection) (Collections.singleton(packaging.toSearchExpression()))) : null).iterator(); iterator.hasNext(); ids.add(artifact.getArtifactId()))
                artifact = (IndexedArtifact)iterator.next();

            return subSet(ids, searchExpression);
        }
        catch(CoreException ex)
        {
            throw new SearchException(ex.getMessage(), ex.getStatus().getException());
        }
    }

    public Collection findClassifiers(String groupId, String artifactId, String version, String prefix, Packaging packaging)
    {
        Collection values;
        TreeSet ids;
        Set files;
        try
        {
            values = index.find(new MatchTypedStringSearchExpression(groupId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), new MatchTypedStringSearchExpression(artifactId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), null, packaging.toSearchExpression());
            if(values.isEmpty())
                return Collections.emptySet();
        }
        catch(CoreException ex)
        {
            throw new SearchException(ex.getMessage(), ex.getStatus().getException());
        }
        ids = new TreeSet();
        files = ((IndexedArtifact)values.iterator().next()).getFiles();
        for(Iterator iterator = files.iterator(); iterator.hasNext();)
        {
            IndexedArtifactFile artifactFile = (IndexedArtifactFile)iterator.next();
            if(artifactFile.classifier != null)
                ids.add(artifactFile.classifier);
        }

        return subSet(ids, prefix);
    }

    public Collection findGroupIds(String searchExpression, Packaging packaging, ArtifactInfo containingArtifact)
    {
        try
        {
            TreeSet ids = new TreeSet();
            org.eclipse.m2e.core.internal.index.SearchExpression groupSearchExpression = isBlank(searchExpression) ? null : ((org.eclipse.m2e.core.internal.index.SearchExpression) (new MatchTypedStringSearchExpression(searchExpression, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.PARTIAL)));
            IndexedArtifact artifact;
            for(Iterator iterator = index.find(groupSearchExpression, null, null, packaging.toSearchExpression()).iterator(); iterator.hasNext(); ids.add(artifact.getGroupId()))
                artifact = (IndexedArtifact)iterator.next();

            return subSet(ids, searchExpression);
        }
        catch(CoreException ex)
        {
            throw new SearchException(ex.getMessage(), ex.getStatus().getException());
        }
    }

    public Collection findTypes(String groupId, String artifactId, String version, String prefix, Packaging packaging)
    {
        Collection values;
        TreeSet ids;
        Set files;
        try
        {
            values = index.find(new MatchTypedStringSearchExpression(groupId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), new MatchTypedStringSearchExpression(artifactId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), null, packaging.toSearchExpression());
            if(values.isEmpty())
                return Collections.emptySet();
        }
        catch(CoreException ex)
        {
            throw new SearchException(ex.getMessage(), ex.getStatus().getException());
        }
        ids = new TreeSet();
        files = ((IndexedArtifact)values.iterator().next()).getFiles();
        for(Iterator iterator = files.iterator(); iterator.hasNext();)
        {
            IndexedArtifactFile artifactFile = (IndexedArtifactFile)iterator.next();
            if(artifactFile.type != null)
                ids.add(artifactFile.type);
        }

        return subSet(ids, prefix);
    }

    public Collection findVersions(String groupId, String artifactId, String searchExpression, Packaging packaging)
    {
        Collection values;
        TreeSet ids;
        Set files;
        Collection result;
        SortedSet versions;
        List sorted;
        try
        {
            values = index.find(new MatchTypedStringSearchExpression(groupId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), new MatchTypedStringSearchExpression(artifactId, org.eclipse.m2e.core.internal.index.MatchTyped.MatchType.EXACT), null, packaging.toSearchExpression());
            if(values.isEmpty())
                return Collections.emptySet();
        }
        catch(CoreException ex)
        {
            throw new SearchException(ex.getMessage(), ex.getStatus().getException());
        }
        ids = new TreeSet();
        files = ((IndexedArtifact)values.iterator().next()).getFiles();
        IndexedArtifactFile artifactFile;
        for(Iterator iterator = files.iterator(); iterator.hasNext(); ids.add(artifactFile.version))
            artifactFile = (IndexedArtifactFile)iterator.next();

        result = subSet(ids, searchExpression);
        versions = new TreeSet();
        String version;
        for(Iterator iterator1 = result.iterator(); iterator1.hasNext(); versions.add(new ComparableVersion(version)))
            version = (String)iterator1.next();

        result = null;
        sorted = new ArrayList(versions.size());
        ComparableVersion version;
        for(Iterator iterator2 = versions.iterator(); iterator2.hasNext(); sorted.add(version.toString()))
            version = (ComparableVersion)iterator2.next();

        versions = null;
        Collections.reverse(sorted);
        return sorted;
    }

    private Collection subSet(TreeSet ids, String searchExpression)
    {
        if(searchExpression == null || searchExpression.length() == 0)
        {
            return ids;
        } else
        {
            int n = searchExpression.length();
            return ids.subSet(searchExpression, (new StringBuilder(String.valueOf(searchExpression.substring(0, n - 1)))).append((char)(searchExpression.charAt(n - 1) + 1)).toString());
        }
    }

    private final IIndex index;
}
