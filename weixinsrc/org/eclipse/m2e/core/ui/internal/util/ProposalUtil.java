// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProposalUtil.java

package org.eclipse.m2e.core.ui.internal.util;

import java.util.*;
import org.apache.lucene.queryParser.QueryParser;
import org.apache.maven.project.MavenProject;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jface.fieldassist.*;
import org.eclipse.m2e.core.ui.internal.M2EUIPluginActivator;
import org.eclipse.m2e.core.ui.internal.search.util.*;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.fieldassist.ContentAssistCommandAdapter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ProposalUtil
{
    public static abstract class Searcher
    {

        public abstract Collection search()
            throws CoreException;

        public Searcher()
        {
        }
    }

    public static final class TextProposal
        implements IContentProposal
    {

        public int getCursorPosition()
        {
            return text.length();
        }

        public String getContent()
        {
            return text;
        }

        public String getLabel()
        {
            return text;
        }

        public String getDescription()
        {
            return null;
        }

        private final String text;

        public TextProposal(String text)
        {
            this.text = text;
        }
    }


    public ProposalUtil()
    {
    }

    public static void addCompletionProposal(Control control, final Searcher searcher)
    {
        FieldDecoration fieldDecoration = FieldDecorationRegistry.getDefault().getFieldDecoration("DEC_CONTENT_PROPOSAL");
        ControlDecoration decoration = new ControlDecoration(control, 16512);
        decoration.setShowOnlyOnFocus(true);
        decoration.setDescriptionText(fieldDecoration.getDescription());
        decoration.setImage(fieldDecoration.getImage());
        IContentProposalProvider proposalProvider = new IContentProposalProvider() {

            public IContentProposal[] getProposals(String contents, int position)
            {
                String start = contents.length() <= position ? contents : contents.substring(0, position);
                ArrayList proposals = new ArrayList();
                try
                {
                    for(Iterator iterator = searcher.search().iterator(); iterator.hasNext();)
                    {
                        String text = (String)iterator.next();
                        if(text.startsWith(start))
                            proposals.add(new TextProposal(text));
                    }

                }
                catch(CoreException e)
                {
                    ProposalUtil.log.error(e.getMessage(), e);
                }
                return (IContentProposal[])proposals.toArray(new IContentProposal[proposals.size()]);
            }

            private final Searcher val$searcher;

            
            {
                searcher = searcher1;
                super();
            }
        }
;
        org.eclipse.jface.fieldassist.IControlContentAdapter contentAdapter;
        if(control instanceof Text)
            contentAdapter = new TextContentAdapter();
        else
            contentAdapter = new CComboContentAdapter();
        ContentAssistCommandAdapter adapter = new ContentAssistCommandAdapter(control, contentAdapter, proposalProvider, "org.eclipse.ui.edit.text.contentAssist.proposals", null);
        adapter.setProposalAcceptanceStyle(2);
        adapter.setPopupSize(new Point(250, 120));
        adapter.setPopupSize(new Point(250, 120));
    }

    public static void addClassifierProposal(final IProject project, final Text groupIdText, final Text artifactIdText, final Text versionText, Text classifierText, final Packaging packaging)
    {
        addCompletionProposal(classifierText, new Searcher() {

            public Collection search()
                throws CoreException
            {
                return ProposalUtil.getSearchEngine(project).findClassifiers(ProposalUtil.escapeQuerySpecialCharacters(groupIdText.getText()), ProposalUtil.escapeQuerySpecialCharacters(artifactIdText.getText()), ProposalUtil.escapeQuerySpecialCharacters(versionText.getText()), "", packaging);
            }

            private final IProject val$project;
            private final Text val$groupIdText;
            private final Text val$artifactIdText;
            private final Text val$versionText;
            private final Packaging val$packaging;

            
            {
                project = iproject;
                groupIdText = text;
                artifactIdText = text1;
                versionText = text2;
                packaging = packaging1;
                super();
            }
        }
);
    }

    public static void addVersionProposal(final IProject project, final MavenProject mp, final Text groupIdText, final Text artifactIdText, Text versionText, final Packaging packaging)
    {
        addCompletionProposal(versionText, new Searcher() {

            public Collection search()
                throws CoreException
            {
                Collection toRet = new ArrayList();
                toRet.addAll(ProposalUtil.getSearchEngine(project).findVersions(ProposalUtil.escapeQuerySpecialCharacters(groupIdText.getText()), ProposalUtil.escapeQuerySpecialCharacters(artifactIdText.getText()), "", packaging));
                if(mp != null)
                {
                    Properties props = mp.getProperties();
                    ArrayList list = new ArrayList();
                    if(props != null)
                    {
                        for(Iterator iterator = props.keySet().iterator(); iterator.hasNext();)
                        {
                            Object prop = iterator.next();
                            String propString = prop.toString();
                            if(propString.endsWith("Version") || propString.endsWith(".version"))
                                list.add((new StringBuilder("${")).append(propString).append("}").toString());
                        }

                    }
                    Collections.sort(list);
                    toRet.addAll(list);
                }
                return toRet;
            }

            private final IProject val$project;
            private final Text val$groupIdText;
            private final Text val$artifactIdText;
            private final Packaging val$packaging;
            private final MavenProject val$mp;

            
            {
                project = iproject;
                groupIdText = text;
                artifactIdText = text1;
                packaging = packaging1;
                mp = mavenproject;
                super();
            }
        }
);
    }

    public static void addArtifactIdProposal(final IProject project, final Text groupIdText, Text artifactIdText, final Packaging packaging)
    {
        addCompletionProposal(artifactIdText, new Searcher() {

            public Collection search()
                throws CoreException
            {
                return ProposalUtil.getSearchEngine(project).findArtifactIds(ProposalUtil.escapeQuerySpecialCharacters(groupIdText.getText()), "", packaging, null);
            }

            private final IProject val$project;
            private final Text val$groupIdText;
            private final Packaging val$packaging;

            
            {
                project = iproject;
                groupIdText = text;
                packaging = packaging1;
                super();
            }
        }
);
    }

    public static void addGroupIdProposal(final IProject project, final Text groupIdText, final Packaging packaging)
    {
        addCompletionProposal(groupIdText, new Searcher() {

            public Collection search()
                throws CoreException
            {
                return ProposalUtil.getSearchEngine(project).findGroupIds(ProposalUtil.escapeQuerySpecialCharacters(groupIdText.getText()), packaging, null);
            }

            private final IProject val$project;
            private final Text val$groupIdText;
            private final Packaging val$packaging;

            
            {
                project = iproject;
                groupIdText = text;
                packaging = packaging1;
                super();
            }
        }
);
    }

    private static String escapeQuerySpecialCharacters(String raw)
    {
        return QueryParser.escape(raw);
    }

    public static SearchEngine getSearchEngine(IProject project)
        throws CoreException
    {
        return M2EUIPluginActivator.getDefault().getSearchEngine(project);
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/util/ProposalUtil);



}
