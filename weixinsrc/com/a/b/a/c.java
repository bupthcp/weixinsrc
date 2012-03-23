// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.a.b.a;

import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.util.*;

// Referenced classes of package com.a.b.a:
//            a

public final class c
{

    public c()
    {
    }

    public static Object a(String s)
    {
        ArrayList arraylist = new ArrayList();
        int i = s.indexOf("<");
        for(int j = 0; j < i;)
        {
            a(arraylist, s.substring(j, i));
            int k = i + 1;
            i = s.indexOf("<", k);
            int l = s.indexOf(",", k);
            if(i == -1)
                i = l;
            Iterator iterator;
            Object obj;
            Object obj1;
            Object obj2;
            Object obj3;
            boolean flag;
            boolean flag1;
            if(l != -1 && l < i)
            {
                i = l;
                j = k;
            } else
            {
                j = k;
            }
        }

        a(arraylist, s.substring(j, s.length()));
        iterator = arraylist.iterator();
        obj = null;
        obj1 = null;
        obj2 = null;
        if(!iterator.hasNext())
            break; /* Loop/switch isn't completed */
        obj = b((String)iterator.next());
        if(obj instanceof String)
        {
            if("Array".equals((String)obj))
            {
                if(obj2 != null)
                    break MISSING_BLOCK_LABEL_375;
                obj = Array.newInstance(java/lang/Byte, 0);
            } else
            {
                if("?".equals((String)obj))
                    break MISSING_BLOCK_LABEL_375;
                if(obj2 == null)
                {
                    obj2 = obj;
                } else
                {
                    obj1 = obj2;
                    obj2 = obj;
                }
            }
            continue; /* Loop/switch isn't completed */
        }
        if(obj instanceof List)
        {
            if(obj2 != null && (obj2 instanceof Byte))
            {
                obj = Array.newInstance(java/lang/Byte, 1);
                Array.set(obj, 0, obj2);
            } else
            {
                if(obj2 != null)
                    ((List)obj).add(obj2);
                obj2 = null;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(obj instanceof Map)
        {
            if(obj2 != null)
                flag = true;
            else
                flag = false;
            if(obj1 != null)
                flag1 = true;
            else
                flag1 = false;
            if(flag1 & flag)
                ((Map)obj).put(obj2, obj1);
            obj1 = null;
            obj2 = null;
            continue; /* Loop/switch isn't completed */
        }
        if(obj2 == null)
        {
            obj2 = obj;
            continue; /* Loop/switch isn't completed */
        }
        obj3 = obj2;
        obj2 = obj;
_L4:
        obj1 = obj3;
        if(true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_115;
_L1:
        return obj;
        obj3 = obj1;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String a(ArrayList arraylist)
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        while(i < arraylist.size()) 
        {
            String s1 = (String)arraylist.get(i);
            if(s1.equals("java.lang.Integer") || s1.equals("int"))
                s1 = "int32";
            else
            if(s1.equals("java.lang.Boolean") || s1.equals("boolean"))
                s1 = "bool";
            else
            if(s1.equals("java.lang.Byte") || s1.equals("byte"))
                s1 = "char";
            else
            if(s1.equals("java.lang.Double") || s1.equals("double"))
                s1 = "double";
            else
            if(s1.equals("java.lang.Float") || s1.equals("float"))
                s1 = "float";
            else
            if(s1.equals("java.lang.Long") || s1.equals("long"))
                s1 = "int64";
            else
            if(s1.equals("java.lang.Short") || s1.equals("short"))
            {
                s1 = "short";
            } else
            {
                if(s1.equals("java.lang.Character"))
                    throw new IllegalArgumentException("can not support java.lang.Character");
                if(s1.equals("java.lang.String"))
                    s1 = "string";
                else
                if(s1.equals("java.util.List"))
                    s1 = "list";
                else
                if(s1.equals("java.util.Map"))
                    s1 = "map";
            }
            arraylist.set(i, s1);
            i++;
        }
        Collections.reverse(arraylist);
        int j = 0;
        while(j < arraylist.size()) 
        {
            String s = (String)arraylist.get(j);
            if(s.equals("list"))
            {
                arraylist.set(j + -1, (new StringBuilder()).append("<").append((String)arraylist.get(j + -1)).toString());
                arraylist.set(0, (new StringBuilder()).append((String)arraylist.get(0)).append(">").toString());
            } else
            if(s.equals("map"))
            {
                arraylist.set(j + -1, (new StringBuilder()).append("<").append((String)arraylist.get(j + -1)).append(",").toString());
                arraylist.set(0, (new StringBuilder()).append((String)arraylist.get(0)).append(">").toString());
            } else
            if(s.equals("Array"))
            {
                arraylist.set(j + -1, (new StringBuilder()).append("<").append((String)arraylist.get(j + -1)).toString());
                arraylist.set(0, (new StringBuilder()).append((String)arraylist.get(0)).append(">").toString());
            }
            j++;
        }
        Collections.reverse(arraylist);
        for(Iterator iterator = arraylist.iterator(); iterator.hasNext(); stringbuffer.append((String)iterator.next()));
        return stringbuffer.toString();
    }

    private static void a(ArrayList arraylist, String s)
    {
        String s1;
        int i;
        for(i = s.length(); s.charAt(i + -1) == '>' && --i != 0;);
        s1 = s.substring(0, i);
        if(!s1.equals("int32")) goto _L2; else goto _L1
_L1:
        s1 = "java.lang.Integer";
_L4:
        arraylist.add(0, s1);
        return;
_L2:
        if(s1.equals("bool"))
            s1 = "java.lang.Boolean";
        else
        if(s1.equals("char"))
            s1 = "java.lang.Byte";
        else
        if(s1.equals("double"))
            s1 = "java.lang.Double";
        else
        if(s1.equals("float"))
            s1 = "java.lang.Float";
        else
        if(s1.equals("int64"))
            s1 = "java.lang.Long";
        else
        if(s1.equals("short"))
            s1 = "java.lang.Short";
        else
        if(s1.equals("string"))
            s1 = "java.lang.String";
        else
        if(s1.equals("list"))
            s1 = "java.util.List";
        else
        if(s1.equals("map"))
            s1 = "java.util.Map";
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static Object b(String s)
    {
        if(!s.equals("java.lang.Integer")) goto _L2; else goto _L1
_L1:
        s = Integer.valueOf(0);
_L4:
        return s;
_L2:
        if(s.equals("java.lang.Boolean"))
            s = Boolean.valueOf(false);
        else
        if(s.equals("java.lang.Byte"))
            s = Byte.valueOf((byte)0);
        else
        if(s.equals("java.lang.Double"))
            s = Double.valueOf(0D);
        else
        if(s.equals("java.lang.Float"))
            s = Float.valueOf(0F);
        else
        if(s.equals("java.lang.Long"))
            s = Long.valueOf(0L);
        else
        if(s.equals("java.lang.Short"))
        {
            s = Short.valueOf((short)0);
        } else
        {
            if(s.equals("java.lang.Character"))
                throw new IllegalArgumentException("can not support java.lang.Character");
            if(s.equals("java.lang.String"))
                s = "";
            else
            if(s.equals("java.util.List"))
                s = new ArrayList();
            else
            if(s.equals("java.util.Map"))
                s = new HashMap();
            else
            if(s.equals("Array"))
                s = "Array";
            else
            if(!s.equals("?"))
            {
                Object obj;
                try
                {
                    obj = Class.forName(s).getConstructor(new Class[0]).newInstance(new Object[0]);
                }
                catch(Exception exception)
                {
                    throw new a(exception);
                }
                s = ((String) (obj));
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }
}
