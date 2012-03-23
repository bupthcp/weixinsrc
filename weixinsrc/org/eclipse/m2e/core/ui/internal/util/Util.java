// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   Util.java

package org.eclipse.m2e.core.ui.internal.util;

import java.lang.reflect.*;
import java.net.URI;

public class Util
{
    public static interface FileStoreEditorInputStub
    {

        public abstract URI getURI();
    }


    public Util()
    {
    }

    public static Object proxy(final Object o, Class type)
    {
        return Proxy.newProxyInstance(type.getClassLoader(), new Class[] {
            type
        }, new InvocationHandler() {

            public Object invoke(Object proxy, Method m, Object args[])
                throws Throwable
            {
                try
                {
                    Method mm = o.getClass().getMethod(m.getName(), m.getParameterTypes());
                    return mm.invoke(o, args);
                }
                catch(NoSuchMethodException _ex)
                {
                    return null;
                }
            }

            private final Object val$o;

            
            {
                o = obj;
                super();
            }
        }
);
    }

    public static String nvl(String s)
    {
        return s != null ? s : "";
    }
}
