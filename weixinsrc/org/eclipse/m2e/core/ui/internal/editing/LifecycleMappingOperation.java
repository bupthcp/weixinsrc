// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   LifecycleMappingOperation.java

package org.eclipse.m2e.core.ui.internal.editing;

import java.util.*;
import org.apache.maven.artifact.versioning.*;
import org.eclipse.m2e.core.lifecyclemapping.model.PluginExecutionAction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

// Referenced classes of package org.eclipse.m2e.core.ui.internal.editing:
//            PomEdits, PomHelper

public class LifecycleMappingOperation
    implements PomEdits.Operation
{

    public LifecycleMappingOperation(String pluginGroupId, String pluginArtifactId, String pluginVersion, PluginExecutionAction action, String goals[])
    {
        artifactId = pluginArtifactId;
        groupId = pluginGroupId;
        version = pluginVersion;
        if(!$assertionsDisabled && PluginExecutionAction.configurator.equals(action))
        {
            throw new AssertionError();
        } else
        {
            this.action = action;
            this.goals = goals;
            return;
        }
    }

    public void process(Document document)
    {
        Element root = document.getDocumentElement();
        Element managedPlugins = PomEdits.getChild(root, new String[] {
            "build", "pluginManagement", "plugins"
        });
        Element lifecyclePlugin = PomEdits.findChild(managedPlugins, "plugin", new PomEdits.Matcher[] {
            PomEdits.childEquals("groupId", "org.eclipse.m2e"), PomEdits.childEquals("artifactId", "lifecycle-mapping")
        });
        if(lifecyclePlugin == null)
        {
            lifecyclePlugin = PomHelper.createPlugin(managedPlugins, "org.eclipse.m2e", "lifecycle-mapping", "1.0.0");
            org.w3c.dom.Comment comment = document.createComment("This plugin's configuration is used to store Eclipse m2e settings only. It has no influence on the Maven build itself.");
            managedPlugins.insertBefore(comment, lifecyclePlugin);
            PomEdits.format(comment);
        }
        Element pluginExecutions = PomEdits.getChild(lifecyclePlugin, new String[] {
            "configuration", "lifecycleMappingMetadata", "pluginExecutions"
        });
        Element execution = null;
        for(Iterator iterator = PomEdits.findChilds(pluginExecutions, "pluginExecution").iterator(); iterator.hasNext();)
        {
            Element exec = (Element)iterator.next();
            Element filter = PomEdits.findChild(exec, "pluginExecutionFilter", new PomEdits.Matcher[] {
                PomEdits.childEquals("groupId", groupId), PomEdits.childEquals("artifactId", artifactId)
            });
            Element actionEl = PomEdits.findChild(PomEdits.findChild(exec, "action"), action.toString());
            if(filter != null && actionEl != null)
            {
                String versionRange = PomEdits.getTextValue(PomEdits.getChild(filter, new String[] {
                    "versionRange"
                }));
                if(versionRange != null)
                    try
                    {
                        VersionRange range = VersionRange.createFromVersionSpec(versionRange);
                        if(!range.containsVersion(new DefaultArtifactVersion(version)))
                        {
                            Element rangeEl = PomEdits.findChild(filter, "versionRange");
                            PomEdits.setText(rangeEl, (new StringBuilder("[")).append(version).append(",)").toString());
                        }
                    }
                    catch(InvalidVersionSpecificationException e)
                    {
                        log.error((new StringBuilder("Failed to parse version range:")).append(versionRange).toString(), e);
                    }
                execution = exec;
                break;
            }
        }

        if(execution == null)
            execution = createPluginExecution(document, pluginExecutions);
        Element goalsEl = PomEdits.getChild(execution, new String[] {
            "pluginExecutionFilter", "goals"
        });
        List toAddGoals = new ArrayList(Arrays.asList(goals));
        for(Iterator iterator1 = PomEdits.findChilds(goalsEl, "goal").iterator(); iterator1.hasNext();)
        {
            Element existingGoal = (Element)iterator1.next();
            String glValue = PomEdits.getTextValue(existingGoal);
            if(glValue != null && toAddGoals.contains(glValue))
                toAddGoals.remove(glValue);
        }

        if(toAddGoals.size() > 0)
        {
            String goal;
            for(Iterator iterator2 = toAddGoals.iterator(); iterator2.hasNext(); PomEdits.format(PomEdits.createElementWithText(goalsEl, "goal", goal)))
                goal = (String)iterator2.next();

        }
    }

    private Element createPluginExecution(Document document, Element parent)
    {
        Element exec = document.createElement("pluginExecution");
        parent.appendChild(exec);
        Element filter = document.createElement("pluginExecutionFilter");
        exec.appendChild(filter);
        PomEdits.createElementWithText(filter, "groupId", groupId);
        PomEdits.createElementWithText(filter, "artifactId", artifactId);
        PomEdits.createElementWithText(filter, "versionRange", (new StringBuilder("[")).append(version).append(",)").toString());
        Element actionEl = document.createElement("action");
        exec.appendChild(actionEl);
        Element actionEl2 = document.createElement(action.toString());
        actionEl.appendChild(actionEl2);
        if(PluginExecutionAction.execute.equals(action))
            actionEl2.appendChild(document.createComment("use <runOnIncremental>false</runOnIncremental>to only execute the mojo during full/clean build"));
        PomEdits.format(exec);
        return exec;
    }

    private static final Logger log = LoggerFactory.getLogger(org/eclipse/m2e/core/ui/internal/editing/LifecycleMappingOperation);
    private static final String LIFECYCLE_PLUGIN_VERSION = "1.0.0";
    private static final String LIFECYCLE_PLUGIN_ARTIFACTID = "lifecycle-mapping";
    private static final String LIFECYCLE_PLUGIN_GROUPID = "org.eclipse.m2e";
    private String version;
    private String groupId;
    private String artifactId;
    private PluginExecutionAction action;
    private String goals[];
    static final boolean $assertionsDisabled = !org/eclipse/m2e/core/ui/internal/editing/LifecycleMappingOperation.desiredAssertionStatus();

}
