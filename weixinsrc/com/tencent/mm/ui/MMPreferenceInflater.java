// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.preference.Preference;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.tencent.mm.ui:
//            IPreferenceScreen

public class MMPreferenceInflater
{

    public MMPreferenceInflater(Context context)
    {
        b = context;
    }

    private Preference a(String s, AttributeSet attributeset)
    {
        Preference preference1;
label0:
        {
            Preference preference;
            try
            {
                if(-1 == s.indexOf('.'))
                {
                    preference1 = a(s, "android.preference.", attributeset);
                    break label0;
                }
                preference = a(s, ((String) (null)), attributeset);
            }
            catch(InflateException inflateexception2)
            {
                throw inflateexception2;
            }
            catch(ClassNotFoundException classnotfoundexception)
            {
                InflateException inflateexception1 = new InflateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Error inflating class ").append(s).toString());
                inflateexception1.initCause(classnotfoundexception);
                throw inflateexception1;
            }
            catch(Exception exception)
            {
                InflateException inflateexception = new InflateException((new StringBuilder()).append(attributeset.getPositionDescription()).append(": Error inflating class ").append(s).toString());
                inflateexception.initCause(exception);
                throw inflateexception;
            }
            preference1 = preference;
        }
        return preference1;
    }

    private Preference a(String s, String s1, AttributeSet attributeset)
    {
        Constructor constructor = (Constructor)a.get(s);
        if(constructor != null) goto _L2; else goto _L1
_L1:
        ClassLoader classloader = b.getClassLoader();
        if(s1 == null) goto _L4; else goto _L3
_L3:
        String s3 = (new StringBuilder()).append(s1).append(s).toString();
_L5:
        Constructor constructor2 = classloader.loadClass(s3).getConstructor(d);
        Constructor constructor1 = constructor2;
        a.put(s, constructor1);
_L7:
        Preference preference;
        Object aobj[] = c;
        aobj[1] = attributeset;
        preference = (Preference)constructor1.newInstance(aobj);
        return preference;
_L4:
        s3 = s;
          goto _L5
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        StringBuilder stringbuilder = (new StringBuilder()).append(attributeset.getPositionDescription()).append(": Error inflating class ");
        if(s1 != null)
            s = (new StringBuilder()).append(s1).append(s).toString();
        InflateException inflateexception1 = new InflateException(stringbuilder.append(s).toString());
        inflateexception1.initCause(nosuchmethodexception);
        throw inflateexception1;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        throw classnotfoundexception;
        Exception exception1;
        exception1;
_L6:
        String s2;
        InflateException inflateexception;
        if(attributeset != null)
            s2 = attributeset.getPositionDescription();
        else
        if((new StringBuilder()).append("(null): Error inflating class ").append(constructor).toString() != null)
            s2 = constructor.getClass().getName();
        else
            s2 = "(null)";
        inflateexception = new InflateException(s2);
        inflateexception.initCause(exception1);
        throw inflateexception;
        Exception exception;
        exception;
        constructor = constructor1;
        exception1 = exception;
        if(true) goto _L6; else goto _L2
_L2:
        constructor1 = constructor;
          goto _L7
    }

    private void a(XmlPullParser xmlpullparser, IPreferenceScreen ipreferencescreen, AttributeSet attributeset)
    {
        int i = xmlpullparser.getDepth();
        for(int j = xmlpullparser.next(); (j != 3 || xmlpullparser.getDepth() > i) && j != 1;)
            if(j != 2)
            {
                j = xmlpullparser.next();
            } else
            {
                ipreferencescreen.a(a(xmlpullparser.getName(), attributeset));
                j = xmlpullparser.next();
            }

    }

    public final void a(int i, IPreferenceScreen ipreferencescreen)
    {
        XmlResourceParser xmlresourceparser = b.getResources().getXml(i);
        Object aobj[] = c;
        aobj;
        JVM INSTR monitorenter ;
        AttributeSet attributeset;
        attributeset = Xml.asAttributeSet(xmlresourceparser);
        c[0] = b;
        int j;
        for(j = xmlresourceparser.next(); j != 2 && j != 1; j = xmlresourceparser.next());
        if(j != 2)
            throw new InflateException((new StringBuilder()).append(xmlresourceparser.getPositionDescription()).append(": No start tag found!").toString());
        break MISSING_BLOCK_LABEL_130;
        InflateException inflateexception2;
        inflateexception2;
        throw inflateexception2;
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        xmlresourceparser.close();
        throw exception;
        a(xmlresourceparser.getName(), attributeset);
        a(((XmlPullParser) (xmlresourceparser)), ipreferencescreen, attributeset);
        aobj;
        JVM INSTR monitorexit ;
        xmlresourceparser.close();
        return;
        XmlPullParserException xmlpullparserexception;
        xmlpullparserexception;
        InflateException inflateexception1 = new InflateException(xmlpullparserexception.getMessage());
        inflateexception1.initCause(xmlpullparserexception);
        throw inflateexception1;
        IOException ioexception;
        ioexception;
        InflateException inflateexception = new InflateException((new StringBuilder()).append(xmlresourceparser.getPositionDescription()).append(": ").append(ioexception.getMessage()).toString());
        inflateexception.initCause(ioexception);
        throw inflateexception;
    }

    private static HashMap a = new HashMap();
    private static final Class d[];
    private final Context b;
    private final Object c[] = new Object[2];

    static 
    {
        Class aclass[] = new Class[2];
        aclass[0] = android/content/Context;
        aclass[1] = android/util/AttributeSet;
        d = aclass;
    }
}
