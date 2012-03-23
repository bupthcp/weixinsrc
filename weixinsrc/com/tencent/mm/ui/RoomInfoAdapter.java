// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.*;

public class RoomInfoAdapter extends BaseAdapter
{

    public RoomInfoAdapter(Context context, String s, int k, int l)
    {
        int ai[] = new int[4];
        ai[0] = 4;
        ai[1] = 3;
        ai[2] = 2;
        ai[3] = 1;
        a = ai;
        b = null;
        f = new ArrayList();
        g = new HashSet();
        h = 0;
        i = 0;
        j = 0;
        d = context;
        b = s;
        c = k;
        j = l;
        e = false;
        c();
    }

    private void c()
    {
        Log.d("MicroMsg.RoomInfoAdapter", (new StringBuilder()).append("initData roomID ").append(b).append(" roomType : ").append(c).toString());
        g.clear();
        f.clear();
        if(b != null && !b.equals("")) goto _L2; else goto _L1
_L1:
        return;
_L2:
        List list;
        if(j == 1)
            e = false;
        if(c == 1)
        {
            Contact contact1 = MMCore.f().h().c(b);
            f.add(contact1);
            g.add(contact1.s());
            if(j == 0)
            {
                i = f.size();
                h = i + a[3 & i];
            } else
            {
                i = f.size();
                h = f.size();
            }
            super.notifyDataSetChanged();
            continue; /* Loop/switch isn't completed */
        }
        new LinkedList();
        list = ChatroomMembersLogic.c(b);
        if(list != null)
            break; /* Loop/switch isn't completed */
        Log.d("MicroMsg.RoomInfoAdapter", "RoomInfo chatUserNames is null");
_L4:
        super.notifyDataSetChanged();
        if(true) goto _L1; else goto _L3
_L3:
        Cursor cursor = MMCore.f().h().a(list);
        String s = Util.a((String)MMCore.f().f().a(2), "");
        cursor.moveToFirst();
        do
        {
            Contact contact = new Contact();
            contact.a(cursor);
            if(!contact.s().endsWith(s))
            {
                f.add(contact);
                g.add(contact.s());
            }
        } while(cursor.moveToNext());
        cursor.close();
        if(j == 0)
        {
            i = f.size();
            h = i + a[3 & i];
        } else
        {
            i = f.size();
            h = f.size();
        }
        Log.d("MicroMsg.RoomInfoAdapter", (new StringBuilder()).append("Number Size  contactSize :").append(i).append(" realySize : ").append(h).toString());
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final void a(String s)
    {
        if(g.contains(s) || s.equals(b))
            notifyDataSetChanged();
    }

    public final boolean a()
    {
        return e;
    }

    public final boolean a(int k)
    {
        boolean flag = false;
        if(e && k >= i)
        {
            e = flag;
            notifyDataSetChanged();
            flag = true;
        }
        return flag;
    }

    public final void b()
    {
        c();
    }

    public final boolean b(int k)
    {
        boolean flag = true;
        if(j != flag && c != flag) goto _L2; else goto _L1
_L1:
        flag = false;
_L4:
        return flag;
_L2:
        if(!e)
        {
            if(k < i)
            {
                e = flag;
                notifyDataSetChanged();
            }
        } else
        {
            flag = false;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final boolean c(int k)
    {
        boolean flag;
        if(k == i)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final boolean d(int k)
    {
        boolean flag;
        if(k < i)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public int getCount()
    {
        return h;
    }

    public Object getItem(int k)
    {
        Object obj;
        if(k < i)
            obj = f.get(k);
        else
            obj = null;
        return obj;
    }

    public long getItemId(int k)
    {
        return (long)k;
    }

    public View getView(int k, View view, ViewGroup viewgroup)
    {
        int l;
        ViewHolder viewholder1;
        Contact contact;
        if(k < i)
        {
            contact = (Contact)getItem(k);
            l = 0;
        } else
        if(k == i)
        {
            contact = null;
            l = 1;
        } else
        {
            contact = null;
            l = 2;
        }
        if(view == null)
        {
            ViewHolder viewholder = new ViewHolder();
            view = View.inflate(d, 0x7f0300c7, null);
            viewholder.a = (ImageView)view.findViewById(0x7f07021f);
            viewholder.b = (TextView)view.findViewById(0x7f070220);
            viewholder.c = (TextView)view.findViewById(0x7f070221);
            viewholder.a.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        if(l != 0) goto _L2; else goto _L1
_L1:
        viewholder1.a.setVisibility(0);
        viewholder1.c.setVisibility(0);
        viewholder1.c.setText(SpanUtil.a(d, contact.A(), (int)viewholder1.c.getTextSize()));
        viewholder1.a.setBackgroundResource(0x7f020101);
        viewholder1.a.setImageBitmap(AvatarLogic.i(contact.s()));
        if(e)
            viewholder1.b.setVisibility(0);
        else
            viewholder1.b.setVisibility(8);
_L4:
        viewholder1.d = l;
        return view;
_L2:
        if(l == 1)
        {
            viewholder1.c.setVisibility(4);
            viewholder1.b.setVisibility(8);
            if(e)
            {
                viewholder1.a.setImageResource(0x7f0201cf);
                viewholder1.a.setBackgroundResource(0x7f0201cf);
            } else
            {
                viewholder1.a.setVisibility(0);
                viewholder1.a.setImageResource(0x7f02025e);
                viewholder1.a.setBackgroundResource(0x7f0201cf);
            }
        } else
        if(l == 2)
        {
            viewholder1.c.setVisibility(4);
            viewholder1.b.setVisibility(8);
            viewholder1.a.setVisibility(0);
            viewholder1.a.setImageResource(0x7f0201cf);
            viewholder1.a.setBackgroundResource(0x7f0201cf);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private final int a[];
    private String b;
    private int c;
    private Context d;
    private boolean e;
    private List f;
    private Set g;
    private int h;
    private int i;
    private int j;

    private class ViewHolder
    {

        public ImageView a;
        public TextView b;
        public TextView c;
        public int d;

        public ViewHolder()
        {
        }
    }

}
