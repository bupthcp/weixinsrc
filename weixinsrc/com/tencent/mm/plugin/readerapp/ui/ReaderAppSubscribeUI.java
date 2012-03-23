// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.OpLogStorage;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.contact.ContactInfoUI;

public class ReaderAppSubscribeUI extends MMActivity
{

    public ReaderAppSubscribeUI()
    {
    }

    static SubscribeAdapter a(ReaderAppSubscribeUI readerappsubscribeui)
    {
        return readerappsubscribeui.b;
    }

    static void a(ReaderAppSubscribeUI readerappsubscribeui, int i)
    {
        readerappsubscribeui.h(i);
    }

    static ListView b(ReaderAppSubscribeUI readerappsubscribeui)
    {
        return readerappsubscribeui.a;
    }

    private void h(int i)
    {
        MMCore.f().f().a(0x33c48be9, Integer.valueOf(i));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpModTXNewsCategory(i));
        Intent intent = new Intent(this, com/tencent/mm/ui/contact/ContactInfoUI);
        intent.putExtra("Contact_User", "readerapp");
        intent.addFlags(0x4000000);
        startActivity(intent);
        finish();
    }

    protected final int a()
    {
        return 0x7f0300be;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MMCore.f().f().a(0x33c48bea, new String("in"));
        d(0x7f0a04a2);
        b = new SubscribeAdapter(this, Util.a((Integer)MMCore.f().f().a(0x33c48be9)));
        a = (ListView)findViewById(0x7f0701f9);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls1());
        b.notifyDataSetChanged();
        b(new _cls2());
        a(new _cls3());
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if(i == 4)
        {
            if(b != null)
                h(b.a());
            flag = true;
        } else
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
    }

    protected void onResume()
    {
        super.onResume();
        b.notifyDataSetChanged();
    }

    private ListView a;
    private SubscribeAdapter b;

    private class SubscribeAdapter extends BaseAdapter
    {

        private int b(int i)
        {
            int j = 0;
            int k = j;
            for(; j < a.length; j++)
                if((i & a[j]) != 0)
                    k++;

            return k;
        }

        public final int a()
        {
            return c;
        }

        public final boolean a(int i)
        {
            boolean flag = true;
            if((c & a[i]) != 0)
            {
                c = c & (-1 ^ a[i]);
                e = -1 + e;
                if(e < 0)
                    e = 0;
                notifyDataSetChanged();
            } else
            if(e < 3)
            {
                c = c | a[i];
                e = 1 + e;
                if(e > a.length)
                    e = a.length;
                notifyDataSetChanged();
            } else
            {
                flag = false;
            }
            return flag;
        }

        public int getCount()
        {
            return d.length;
        }

        public volatile Object getItem(int i)
        {
            return d[i];
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                TextView a;
                CheckBox b;

                ViewHolder()
                {
                }
            }

            ViewHolder viewholder1;
            CheckBox checkbox;
            boolean flag;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(b, 0x7f0300bd, null);
                viewholder.a = (TextView)view.findViewById(0x7f0701f7);
                viewholder.b = (CheckBox)view.findViewById(0x7f0701f8);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            viewholder1.a.setText(d[i]);
            checkbox = viewholder1.b;
            if((c & a[i]) != 0)
                flag = true;
            else
                flag = false;
            checkbox.setChecked(flag);
            return view;
        }

        private final int a[];
        private final Context b;
        private int c;
        private String d[];
        private int e;

        public SubscribeAdapter(Context context, int i)
        {
            int ai[] = new int[14];
            ai[0] = 1;
            ai[1] = 2;
            ai[2] = 4;
            ai[3] = 8;
            ai[4] = 16;
            ai[5] = 32;
            ai[6] = 64;
            ai[7] = 128;
            ai[8] = 256;
            ai[9] = 512;
            ai[10] = 1024;
            ai[11] = 2048;
            ai[12] = 4096;
            ai[13] = 8192;
            a = ai;
            d = null;
            e = 0;
            b = context;
            c = i;
            d = context.getString(0x7f0a049e).split(";");
            e = b(i);
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(!ReaderAppSubscribeUI.a(a).a(i))
                MMAlert.a(a, 0x7f0a04a3, 0x7f0a0010);
        }

        private ReaderAppSubscribeUI a;

        _cls1()
        {
            a = ReaderAppSubscribeUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ReaderAppSubscribeUI.a(a, ReaderAppSubscribeUI.a(a).a());
        }

        private ReaderAppSubscribeUI a;

        _cls2()
        {
            a = ReaderAppSubscribeUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(com.tencent.mm.plugin.readerapp.ui.ReaderAppSubscribeUI.b(a));
        }

        private ReaderAppSubscribeUI a;

        _cls3()
        {
            a = ReaderAppSubscribeUI.this;
            super();
        }
    }

}
