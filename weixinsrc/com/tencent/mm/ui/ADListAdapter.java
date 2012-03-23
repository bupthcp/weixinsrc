// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.tencent.mm.modelpmsg.PushMessage;
import java.util.ArrayList;

// Referenced classes of package com.tencent.mm.ui:
//            MListAdapter, Message, ViewHolder

class ADListAdapter extends MListAdapter
{

    public ADListAdapter(Context context)
    {
        super(context, null);
        a = new ArrayList();
        b = null;
        a();
    }

    public final Message a(int i)
    {
        return (Message)a.get(i);
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        return null;
    }

    protected final void a()
    {
        b();
    }

    public final void a(PushMessage pushmessage)
    {
        b = pushmessage;
    }

    public final void b()
    {
        a.clear();
        if(b != null)
        {
            Message message = new Message(b);
            a.add(message);
            notifyDataSetChanged();
        }
    }

    public int getCount()
    {
        return a.size();
    }

    public volatile Object getItem(int i)
    {
        return a(i);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Message message = (Message)a.get(i);
        ViewHolder viewholder;
        if(view == null)
        {
            view = View.inflate(d, 0x7f030004, null);
            ViewHolder viewholder1 = new ViewHolder();
            viewholder1.a = view;
            viewholder1.b = (Button)view.findViewById(0x7f07000f);
            view.setTag(viewholder1);
            viewholder = viewholder1;
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        message.a(viewholder);
        return view;
    }

    private ArrayList a;
    private PushMessage b;
}
