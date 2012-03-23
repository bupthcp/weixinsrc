// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.skin;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.*;
import android.widget.*;
import b.a.e;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.TimeLogger;
import java.io.IOException;
import java.util.*;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class MMSkinFactory
    implements android.view.LayoutInflater.Factory
{

    public MMSkinFactory(Context context)
    {
        d = "com.tencent.mmskin";
        b = context;
        b();
    }

    private View a(View view, String s)
    {
        Drawable drawable = c(s);
        if(drawable != null)
            view.setBackgroundDrawable(drawable);
        if(s.equals("@null") || s.equals("@0"))
            view.setBackgroundResource(0);
        return view;
    }

    private ImageView a(View view, AttributeSet attributeset)
    {
        ImageView imageview = (ImageView)view;
        int i = attributeset.getAttributeCount();
        for(int j = 0; j < i; j++)
        {
            if("style".equals(attributeset.getAttributeName(j)) && a.containsKey(attributeset.getAttributeValue(j).substring("@style/".length())))
            {
                String s = attributeset.getAttributeValue(j).substring("@style/".length());
                Map map = (Map)a.get(s);
                Iterator iterator = map.keySet().iterator();
                do
                {
                    if(!iterator.hasNext())
                        break;
                    String s1 = (String)iterator.next();
                    if(s1.equals("src") && !a(attributeset, "src"))
                        a(imageview, (String)map.get(s1));
                } while(true);
            }
            if("src".equals(attributeset.getAttributeName(j)))
                a(imageview, attributeset.getAttributeValue(j));
        }

        return imageview;
    }

    private void a(ImageView imageview, String s)
    {
        Drawable drawable = c(s);
        if(drawable != null)
            imageview.setImageDrawable(drawable);
    }

    private void a(TextView textview, String s)
    {
        Drawable drawable = c(s);
        if(drawable != null)
        {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            textview.setCompoundDrawables(null, drawable, null, null);
        }
    }

    private static void a(Map map, Map map1)
    {
        Iterator iterator = map1.keySet().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            String s = (String)iterator.next();
            if(!map.containsKey(s))
                map.put(s, map1.get(s));
        } while(true);
    }

    private static boolean a(AttributeSet attributeset, String s)
    {
        boolean flag = false;
        int i = attributeset.getAttributeCount();
        int j = ((flag) ? 1 : 0);
        do
        {
label0:
            {
                if(j < i)
                {
                    if(!attributeset.getAttributeName(j).equals(s))
                        break label0;
                    flag = true;
                }
                return flag;
            }
            j++;
        } while(true);
    }

    private CheckBox b(View view, AttributeSet attributeset)
    {
        CheckBox checkbox = (CheckBox)view;
        if(!a(attributeset, "background"))
            try
            {
                String s = b.getResources().getResourceName(0x7f02018c);
                String s1 = s.substring(1 + s.lastIndexOf("/"));
                int i = c.getResources().getIdentifier(s1, "drawable", d);
                if(i != 0)
                    checkbox.setBackgroundDrawable(c.getResources().getDrawable(i));
            }
            catch(Exception exception) { }
        return checkbox;
    }

    private static Map b(String s)
    {
        if(s.startsWith("@style/"))
            s = s.substring(s.indexOf("@style/") + "@style/".length());
        return (Map)a.get(s);
    }

    private void b(TextView textview, String s)
    {
        if(!s.startsWith("@color/")) goto _L2; else goto _L1
_L1:
        int k;
        String s3 = s.substring("@color/".length());
        k = c.getResources().getIdentifier(s3, "color", d);
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("color name:").append(s3).append(" id:").append(k).toString());
        textview.setTextColor(c.getResources().getColorStateList(k));
_L3:
        return;
        Exception exception1;
        exception1;
        textview.setTextColor(c.getResources().getColor(k));
          goto _L3
_L2:
label0:
        {
            if(!s.startsWith("@"))
                break label0;
            int i = Integer.parseInt(s.substring(1));
            String s1 = b.getResources().getResourceName(i);
            String s2 = s1.substring(1 + s1.lastIndexOf("/"));
            Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("local color : ").append(s2).append("  ").append(b.getResources().getString(i)).append("  ").append(b.getResources().getResourceTypeName(i)).toString());
            int j = c.getResources().getIdentifier(s2, "color", d);
            if(j == 0)
                break label0;
            try
            {
                textview.setTextColor(c.getResources().getColorStateList(j));
            }
            catch(Exception exception)
            {
                textview.setTextColor(c.getResources().getColor(j));
            }
        }
          goto _L3
        if(s.startsWith("#"))
            textview.setTextColor(Color.parseColor(s));
          goto _L3
    }

    private Drawable c(String s)
    {
        Drawable drawable = null;
        if(!s.startsWith("@drawable")) goto _L2; else goto _L1
_L1:
        String s5 = s.substring("@drawable/".length());
        int i1 = c.getResources().getIdentifier(s5, "drawable", d);
        if(i1 != 0)
            drawable = c.getResources().getDrawable(i1);
_L4:
        return drawable;
_L2:
        if(s.startsWith("@color/"))
        {
            String s4 = s.substring("@color/".length());
            int l = c.getResources().getIdentifier(s4, "color", d);
            if(l != 0)
                drawable = c.getResources().getDrawable(l);
            continue; /* Loop/switch isn't completed */
        }
        if(s.startsWith("@anim/"))
        {
            String s3 = s.substring("@anim/".length());
            int k = c.getResources().getIdentifier(s3, "anim", d);
            if(k != 0)
                drawable = c.getResources().getDrawable(k);
            continue; /* Loop/switch isn't completed */
        }
        if(!s.startsWith("@") || s.equals("@null") || s.equals("@0"))
            continue; /* Loop/switch isn't completed */
        Drawable drawable1;
        int i = Integer.parseInt(s.substring(1));
        String s1 = b.getResources().getResourceName(i);
        String s2 = s1.substring(1 + s1.lastIndexOf("/"));
        int j = c.getResources().getIdentifier(s2, "drawable", d);
        if(j == 0)
            j = c.getResources().getIdentifier(s2, "color", d);
        if(j == 0)
            continue; /* Loop/switch isn't completed */
        drawable1 = c.getResources().getDrawable(j);
        drawable = drawable1;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void c(TextView textview, String s)
    {
        if(!s.startsWith("@dimen/")) goto _L2; else goto _L1
_L1:
        int k;
        String s1 = s.substring("@dimen/".length());
        k = c.getResources().getIdentifier(s1, "dimen", d);
        if(k == 0)
            break MISSING_BLOCK_LABEL_65;
        textview.setTextSize(0, c.getResources().getDimension(k));
_L4:
        return;
_L2:
        if(s.endsWith("dp"))
        {
            int j = Integer.valueOf(s.substring(0, s.indexOf("dp"))).intValue();
            textview.setTextSize(0, b.a.e.a(b, j));
        } else
        if(s.endsWith("sp"))
        {
            int i = Integer.valueOf(s.substring(0, s.indexOf("sp"))).intValue();
            textview.setTextSize(0, b.a.e.a(b, i));
        }
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void d()
    {
        HashMap hashmap = null;
        c = b.createPackageContext(d, 2);
        int i = c.getResources().getIdentifier("styles", "xml", d);
        if(i != 0) goto _L2; else goto _L1
_L1:
        return;
        Exception exception;
        exception;
        c = hashmap;
        a("");
          goto _L1
_L2:
        android.content.res.XmlResourceParser xmlresourceparser = c.getResources().getXml(i);
        int j;
        String s;
        j = xmlresourceparser.getEventType();
        s = "";
_L9:
        if(j == 1) goto _L4; else goto _L3
_L3:
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("type:").append(j).toString());
        j;
        JVM INSTR tableswitch 0 3: default 152
    //                   0 164
    //                   1 152
    //                   2 215
    //                   3 454;
           goto _L5 _L6 _L5 _L7 _L8
_L5:
        j = xmlresourceparser.next();
          goto _L9
_L6:
        Log.e("MicroMsg.MMSkinFactory", "document start");
          goto _L5
        XmlPullParserException xmlpullparserexception;
        xmlpullparserexception;
_L4:
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("end remoteMap count:").append(a.size()).toString());
        e();
          goto _L1
_L7:
        String s2;
        s2 = xmlresourceparser.getName();
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("start_tag tagName:").append(s2).toString());
        if(!"style".equals(s2)) goto _L11; else goto _L10
_L10:
        int k;
        int l;
        hashmap = new HashMap();
        k = xmlresourceparser.getAttributeCount();
        l = 0;
_L17:
        if(l >= k) goto _L11; else goto _L12
_L12:
        String s4 = xmlresourceparser.getAttributeName(l);
        if(!"name".equals(s4)) goto _L14; else goto _L13
_L13:
        String s5 = xmlresourceparser.getAttributeValue(l);
_L16:
        if("parent".equals(s4))
        {
            hashmap.put("parent", xmlresourceparser.getAttributeValue(l));
            Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("start_tag parent:").append(xmlresourceparser.getAttributeValue(l)).toString());
        }
          goto _L15
_L11:
        if("item".equals(s2))
        {
            String s3 = xmlresourceparser.getAttributeValue(0);
            if(s3.startsWith("android:"))
                s3 = s3.substring("android:".length());
            if(hashmap != null)
                hashmap.put(s3, xmlresourceparser.nextText());
        }
          goto _L5
_L8:
        String s1 = xmlresourceparser.getName();
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("end_tag tagName:").append(s1).toString());
        if("style".equals(s1) && hashmap != null)
        {
            Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("end_tag item count:").append(hashmap.size()).toString());
            a.put(s, hashmap);
        }
          goto _L5
_L14:
        s5 = s;
          goto _L16
_L15:
        l++;
        s = s5;
          goto _L17
        IOException ioexception;
        ioexception;
          goto _L4
    }

    private static void e()
    {
        Set set = a.keySet();
        HashMap hashmap = new HashMap();
        String s1;
        HashMap hashmap1;
label0:
        for(Iterator iterator = set.iterator(); iterator.hasNext(); hashmap.put(s1, hashmap1))
        {
            s1 = (String)iterator.next();
            Map map = (Map)a.get(s1);
            hashmap1 = new HashMap();
            do
            {
                a(hashmap1, map);
                if(map.containsKey("parent"))
                {
                    hashmap1.remove("parent");
                    map = b((String)map.get("parent"));
                } else
                {
                    if(!map.containsKey("textAppearance"))
                        continue label0;
                    hashmap1.remove("textAppearance");
                    map = b((String)map.get("textAppearance"));
                }
            } while(true);
        }

        String s;
        for(Iterator iterator1 = hashmap.keySet().iterator(); iterator1.hasNext(); a.put(s, hashmap.get(s)))
            s = (String)iterator1.next();

    }

    public final Drawable a(int i)
    {
        Object obj;
        if(c == null)
        {
            obj = b.getResources().getDrawable(i);
        } else
        {
            String s = b.getResources().getResourceName(i);
            String s1 = s.substring(1 + s.lastIndexOf("/"));
            int j = c.getResources().getIdentifier(s1, "drawable", d);
            if(j != 0)
            {
                obj = c.getResources().getDrawable(j);
            } else
            {
                int k = c.getResources().getIdentifier(s1, "color", d);
                if(k != 0)
                {
                    obj = new ColorDrawable(c.getResources().getColor(k));
                } else
                {
                    int l = c.getResources().getIdentifier(s1, "anim", d);
                    if(l != 0)
                        obj = c.getResources().getDrawable(l);
                    else
                        obj = b.getResources().getDrawable(i);
                }
            }
        }
        return ((Drawable) (obj));
    }

    public final void a()
    {
        b = null;
        c = null;
    }

    public final void a(String s)
    {
        b.getSharedPreferences("com.tencent.mm_preferences", 0).edit().putString("skin_pkg_name", s).commit();
    }

    public final ColorStateList b(int i)
    {
        ColorStateList colorstatelist;
        if(c == null)
        {
            colorstatelist = b.getResources().getColorStateList(i);
        } else
        {
            String s = b.getResources().getResourceName(i);
            String s1 = s.substring(1 + s.lastIndexOf("/"));
            int j = c.getResources().getIdentifier(s1, "color", d);
            if(j != 0)
                colorstatelist = c.getResources().getColorStateList(j);
            else
                colorstatelist = b.getResources().getColorStateList(i);
        }
        return colorstatelist;
    }

    public final void b()
    {
        String s = c();
        Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("package name:").append(s).toString());
        if(s == null || s.equals(""))
        {
            c = null;
            d = "";
        } else
        {
            d = s;
            d();
        }
    }

    public final String c()
    {
        return b.getSharedPreferences("com.tencent.mm_preferences", 0).getString("skin_pkg_name", "");
    }

    protected void finalize()
    {
        super.finalize();
        b = null;
        c = null;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset)
    {
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        View view = layoutinflater.createView(s, null, attributeset);
        Object obj1 = view;
        if(c != null) goto _L2; else goto _L1
_L2:
        TimeLogger timelogger;
        int i;
        int j;
        timelogger = new TimeLogger("time", "set attr");
        i = attributeset.getAttributeCount();
        j = 0;
_L14:
        if(j >= i) goto _L4; else goto _L3
_L3:
        if("style".equals(attributeset.getAttributeName(j)) && a.containsKey(attributeset.getAttributeValue(j).substring("@style/".length())))
        {
            String s3 = attributeset.getAttributeValue(j).substring("@style/".length());
            Map map1 = (Map)a.get(s3);
            Iterator iterator1 = map1.keySet().iterator();
            do
            {
                if(!iterator1.hasNext())
                    break;
                String s4 = (String)iterator1.next();
                String s5 = (String)map1.get(s4);
                if(s4.equals("background") && !a(attributeset, "background"))
                    a(((View) (obj1)), s5);
            } while(true);
        }
        if("background".equals(attributeset.getAttributeName(j)))
            a(((View) (obj1)), attributeset.getAttributeValue(j));
          goto _L5
_L4:
        if(!(obj1 instanceof TextView)) goto _L7; else goto _L6
_L6:
        Object obj2;
        int k;
        obj2 = (TextView)obj1;
        k = attributeset.getAttributeCount();
        InflateException inflateexception;
        Object obj;
        ClassNotFoundException classnotfoundexception;
        ClassNotFoundException classnotfoundexception1;
        InflateException inflateexception1;
        CheckBox checkbox;
        for(int l = 0; l < k; l++)
        {
            if("style".equals(attributeset.getAttributeName(l)) && a.containsKey(attributeset.getAttributeValue(l).substring("@style/".length())))
            {
                String s1 = attributeset.getAttributeValue(l).substring("@style/".length());
                Map map = (Map)a.get(s1);
                Iterator iterator = map.keySet().iterator();
                do
                {
                    if(!iterator.hasNext())
                        break;
                    String s2 = (String)iterator.next();
                    if(s2.equals("textColor") && !a(attributeset, "textColor"))
                        b(((TextView) (obj2)), (String)map.get(s2));
                    if(s2.equals("textSize") && !a(attributeset, "textSize"))
                        c(((TextView) (obj2)), (String)map.get(s2));
                    if(s2.equals("drawableTop") && !a(attributeset, "drawableTop"))
                        a(((TextView) (obj2)), (String)map.get(s2));
                } while(true);
            }
            if("textColor".equals(attributeset.getAttributeName(l)))
            {
                Log.e("MicroMsg.MMSkinFactory", (new StringBuilder()).append("color outside: ").append(attributeset.getAttributeValue(l)).toString());
                b(((TextView) (obj2)), attributeset.getAttributeValue(l));
            }
            if("textSize".equals(attributeset.getAttributeName(l)))
                c(((TextView) (obj2)), attributeset.getAttributeValue(l));
            if("drawableTop".equals(attributeset.getAttributeName(l)))
                a(((TextView) (obj2)), attributeset.getAttributeValue(l));
            break MISSING_BLOCK_LABEL_768;
        }

          goto _L8
_L7:
        if(!(obj1 instanceof ImageView)) goto _L10; else goto _L9
_L9:
        obj2 = a(((View) (obj1)), attributeset);
_L8:
        timelogger.a("end set attr");
        timelogger.a();
        obj1 = obj2;
          goto _L1
_L10:
        if(!(obj1 instanceof CheckBox)) goto _L12; else goto _L11
_L11:
        checkbox = b(((View) (obj1)), attributeset);
        obj2 = checkbox;
          goto _L8
_L12:
        obj2 = obj1;
          goto _L8
        classnotfoundexception;
        obj = null;
          goto _L13
        inflateexception;
        obj = null;
          goto _L13
_L1:
        return ((View) (obj1));
        inflateexception1;
        obj = obj1;
_L13:
        obj1 = obj;
        if(true) goto _L1; else goto _L5
_L5:
        j++;
          goto _L14
        classnotfoundexception1;
        obj = obj1;
          goto _L13
    }

    private static Map a = new HashMap();
    private Context b;
    private Context c;
    private String d;

}
