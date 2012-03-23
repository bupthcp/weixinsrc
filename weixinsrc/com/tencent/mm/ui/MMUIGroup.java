// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.ActivityGroup;
import android.app.LocalActivityManager;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.view.*;
import com.tencent.mm.platformtools.Log;
import java.lang.reflect.Field;
import java.util.*;

public abstract class MMUIGroup extends ActivityGroup
{

    public MMUIGroup()
    {
    }

    private boolean a(String s)
    {
        if(b == null) goto _L2; else goto _L1
_L1:
        b.destroyActivity(s, true);
        Log.e("MMUIGroup", (new StringBuilder()).append("destroy activity: ").append(s).toString());
        boolean flag;
        try
        {
label0:
            {
                Field field = android/app/LocalActivityManager.getDeclaredField("mActivities");
                if(field == null)
                    break label0;
                field.setAccessible(true);
                Map map = (Map)field.get(b);
                if(map != null)
                    map.remove(s);
                Field field1 = android/app/LocalActivityManager.getDeclaredField("mActivityArray");
                if(field1 == null)
                    break label0;
                field1.setAccessible(true);
                ArrayList arraylist = (ArrayList)field1.get(b);
                if(arraylist == null)
                    break label0;
                Iterator iterator = arraylist.iterator();
                Object obj;
                Field field2;
                do
                {
                    do
                    {
                        if(!iterator.hasNext())
                            break label0;
                        obj = iterator.next();
                        field2 = obj.getClass().getDeclaredField("id");
                    } while(field2 == null);
                    field2.setAccessible(true);
                } while(!s.equals((String)field2.get(obj)));
                arraylist.remove(obj);
            }
        }
        catch(Exception exception) { }
_L3:
        flag = true;
_L4:
        return flag;
_L2:
        flag = false;
        if(true) goto _L4; else goto _L3
    }

    private void b(Intent intent)
    {
        String s;
        int i;
        s = intent.getComponent().toString();
        i = -1 + a.size();
_L7:
        if(i < 0) goto _L2; else goto _L1
_L1:
        if(!((ChildActivityInfo)a.get(i)).b.equals(s)) goto _L4; else goto _L3
_L3:
        boolean flag = true;
_L9:
        if(!flag) goto _L6; else goto _L5
_L4:
        i--;
          goto _L7
_L5:
        for(int j = -1 + a.size(); j > i; j--)
        {
            a(((ChildActivityInfo)a.get(j)).b);
            a.remove(-1 + a.size());
        }

        ChildActivityInfo childactivityinfo = (ChildActivityInfo)a.get(-1 + a.size());
        childactivityinfo.a = b.startActivity(childactivityinfo.b, childactivityinfo.c).getDecorView();
        setContentView(childactivityinfo.a);
_L8:
        return;
_L6:
        c(intent);
        if(true) goto _L8; else goto _L2
_L2:
        flag = false;
          goto _L9
    }

    private void c(Intent intent)
    {
        String s = intent.getComponent().toString();
        View view = b.startActivity(s, intent).getDecorView();
        if(view == null)
        {
            Log.a("MMUIGroup", "null decor view");
        } else
        {
            view.setVisibility(0);
            view.setFocusableInTouchMode(true);
            ((ViewGroup)view).setDescendantFocusability(0x40000);
            ChildActivityInfo childactivityinfo = new ChildActivityInfo(view, intent.getComponent().toString(), intent);
            a.add(childactivityinfo);
            Log.e("MMUIGroup", (new StringBuilder()).append("start activity: ").append(childactivityinfo.b).toString());
            view.requestFocus();
            setContentView(view);
            Log.e("MMUIGroup", (new StringBuilder()).append("stack size after add: ").append(a.size()).toString());
        }
    }

    protected abstract void a();

    public final void a(Intent intent)
    {
        Log.e("MMUIGroup", (new StringBuilder()).append("component name: ").append(intent.getComponent().toString()).toString());
        if((0x4000000 & intent.getFlags()) != 0)
            b(intent);
        else
            c(intent);
    }

    public final void b()
    {
        if(a.size() > 1)
        {
            a(((ChildActivityInfo)a.get(-1 + a.size())).b);
            a.remove(-1 + a.size());
            ChildActivityInfo childactivityinfo = (ChildActivityInfo)a.get(-1 + a.size());
            childactivityinfo.a = b.startActivity(childactivityinfo.b, childactivityinfo.c).getDecorView();
            setContentView(childactivityinfo.a);
        } else
        {
            finish();
        }
    }

    public final int c()
    {
        return a.size();
    }

    public final void d()
    {
        if(a.size() != 1)
        {
            b.dispatchDestroy(true);
            a.clear();
            a();
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        Log.e("MMUIGroup", "ui group onKeyDown");
        boolean flag;
        if(keyevent.getKeyCode() == 4 && keyevent.getAction() == 0)
        {
            b();
            flag = true;
        } else
        {
            flag = super.dispatchKeyEvent(keyevent);
        }
        return flag;
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = new ArrayList();
        b = getLocalActivityManager();
        a();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        b.dispatchDestroy(true);
        a.clear();
        b = null;
        Log.e("MMUIGroup", "on destroy");
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    private List a;
    private LocalActivityManager b;

    private class ChildActivityInfo
    {

        View a;
        String b;
        Intent c;

        public ChildActivityInfo(View view, String s, Intent intent)
        {
            a = view;
            b = s;
            c = intent;
        }
    }

}
