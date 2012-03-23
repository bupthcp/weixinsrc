// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfo;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfoStorage;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

public class ReaderItemListView extends ListView
{

    public ReaderItemListView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = 0L;
        b = 0;
        c = new ArrayList();
        a(context);
    }

    public ReaderItemListView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        a = 0L;
        b = 0;
        c = new ArrayList();
        a(context);
    }

    static long a(ReaderItemListView readeritemlistview)
    {
        return readeritemlistview.a;
    }

    private void a(Context context)
    {
        f = getContext().getResources().getColor(0x7f080015);
        g = getContext().getResources().getColor(0x7f080016);
        b = ((Activity)context).getIntent().getIntExtra("type", 0);
        boolean flag;
        View view;
        DisplayMetrics displaymetrics;
        if(ReaderAppInfo.a(b) != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        view = inflate(context, 0x7f0300b6, null);
        view.setOnLongClickListener(new _cls1(context));
        d = (TextView)view.findViewById(0x7f0701eb);
        addHeaderView(view);
        displaymetrics = getResources().getDisplayMetrics();
        e = new ItemAdapter();
        setAdapter(e);
        setOnItemClickListener(new _cls2(context, displaymetrics));
    }

    static int b(ReaderItemListView readeritemlistview)
    {
        return readeritemlistview.b;
    }

    static List c(ReaderItemListView readeritemlistview)
    {
        return readeritemlistview.c;
    }

    public final void a(long l)
    {
        a = l;
        c = MMCore.f().r().a(l, b);
        d.setText(((ReaderAppInfo)c.get(0)).f());
        TextView textview = d;
        int i;
        if(((ReaderAppInfo)c.get(0)).e() == 20)
            i = f;
        else
            i = g;
        textview.setBackgroundColor(i);
        e.notifyDataSetChanged();
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, android.view.View.MeasureSpec.makeMeasureSpec(0x1fffffff, 0x80000000));
    }

    private long a;
    private int b;
    private List c;
    private TextView d;
    private ItemAdapter e;
    private int f;
    private int g;

    private class _cls1
        implements android.view.View.OnLongClickListener
    {

        public boolean onLongClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    MMCore.f().r().b(ReaderItemListView.a(a.a), ReaderItemListView.b(a.a));
                }

                private _cls1 a;

                _cls1()
                {
                    a = _cls1.this;
                    super();
                }
            }

            if(ReaderItemListView.a(a) != 0L)
                MMAlert.a(b, a.getResources().getString(0x7f0a0497), null, new _cls1(), null);
            return true;
        }

        final ReaderItemListView a;
        private Context b;

        _cls1(Context context)
        {
            a = ReaderItemListView.this;
            b = context;
            super();
        }
    }


    private class ItemAdapter extends BaseAdapter
    {

        public int getCount()
        {
            return ReaderItemListView.c(a).size();
        }

        public Object getItem(int i)
        {
            return ReaderItemListView.c(a).get(i);
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public int getItemViewType(int i)
        {
            int j;
            if(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).e() == 20)
            {
                if(i == 0)
                {
                    String s = ((ReaderAppInfo)ReaderItemListView.c(a).get(i)).m();
                    String s1 = ((ReaderAppInfo)ReaderItemListView.c(a).get(i)).n();
                    if(Util.i(s))
                    {
                        if(Util.i(s1))
                            j = 1;
                        else
                            j = 2;
                    } else
                    if(Util.i(s1))
                        j = 3;
                    else
                        j = 0;
                } else
                {
                    j = 1;
                }
            } else
            if(i == 0 && !Util.i(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).m()))
                j = 4;
            else
                j = 5;
            return j;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            Object obj;
            int j;
            obj = null;
            j = getItemViewType(i);
            if(view != null)
                break MISSING_BLOCK_LABEL_820;
            j;
            JVM INSTR tableswitch 0 5: default 56
        //                       0 535
        //                       1 427
        //                       2 474
        //                       3 535
        //                       4 610
        //                       5 727;
               goto _L1 _L2 _L3 _L4 _L2 _L5 _L6
_L1:
            Object obj1 = obj;
_L7:
            boolean flag;
            boolean flag1;
            if(obj1 != null)
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
            if(((ViewHolder) (obj1)).a != null)
                flag1 = true;
            else
                flag1 = false;
            Assert.assertTrue(flag1);
            ((ViewHolder) (obj1)).a.setText(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).g().trim());
            if(((ViewHolder) (obj1)).b != null)
                ((ViewHolder) (obj1)).b.setText(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).n().trim());
            if(((ViewHolder) (obj1)).d != null)
                ((ViewHolder) (obj1)).d.setText((new StringBuilder()).append(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).j().trim()).append(a.getContext().getString(0x7f0a049d)).toString());
            if(((ViewHolder) (obj1)).e != null)
            {
                String s1 = MMCore.h().a(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).k(), ((ReaderAppInfo)ReaderItemListView.c(a).get(i)).e(), i);
                String s;
                android.graphics.Bitmap bitmap;
                ViewHolder viewholder;
                if(!Util.i(s1))
                {
                    android.graphics.Bitmap bitmap1 = b.a.e.a(s1, 1.5F);
                    ((ViewHolder) (obj1)).e.setImageBitmap(bitmap1);
                    ((ViewHolder) (obj1)).e.setVisibility(0);
                    ((ViewHolder) (obj1)).f.setVisibility(8);
                } else
                {
                    ((ViewHolder) (obj1)).f.setVisibility(0);
                    ((ViewHolder) (obj1)).e.setVisibility(8);
                }
            }
            if(((ViewHolder) (obj1)).c != null)
            {
                s = MMCore.h().a(((ReaderAppInfo)ReaderItemListView.c(a).get(i)).m(), ((ReaderAppInfo)ReaderItemListView.c(a).get(i)).e(), i);
                if(!Util.i(s))
                {
                    bitmap = b.a.e.a(s, 1.5F);
                    ((ViewHolder) (obj1)).c.setImageBitmap(bitmap);
                    ((ViewHolder) (obj1)).c.setVisibility(0);
                    ((ViewHolder) (obj1)).g.setVisibility(8);
                } else
                {
                    ((ViewHolder) (obj1)).g.setVisibility(0);
                    ((ViewHolder) (obj1)).c.setVisibility(8);
                }
            }
            return view;
_L3:
            obj1 = new ViewHolder();
            view = View.inflate(a.getContext(), 0x7f0300b5, ((ViewGroup) (obj)));
            obj1.a = (TextView)view.findViewById(0x7f0701ea);
            view.setTag(obj1);
              goto _L7
_L4:
            obj1 = new ViewHolder();
            view = View.inflate(a.getContext(), 0x7f0300b4, ((ViewGroup) (obj)));
            obj1.a = (TextView)view.findViewById(0x7f0701e8);
            obj1.b = (TextView)view.findViewById(0x7f0701e9);
            view.setTag(obj1);
              goto _L7
_L2:
            obj1 = new ViewHolder();
            view = View.inflate(a.getContext(), 0x7f0300b3, ((ViewGroup) (obj)));
            obj1.a = (TextView)view.findViewById(0x7f0701e8);
            obj1.c = (ImageView)view.findViewById(0x7f0701e6);
            obj1.g = (ProgressBar)view.findViewById(0x7f0701e7);
            view.setTag(obj1);
              goto _L7
_L5:
            obj1 = new ViewHolder();
            view = View.inflate(a.getContext(), 0x7f0300b8, ((ViewGroup) (obj)));
            obj1.a = (TextView)view.findViewById(0x7f0701e8);
            obj1.c = (ImageView)view.findViewById(0x7f0701e6);
            obj1.g = (ProgressBar)view.findViewById(0x7f0701e7);
            obj1.d = (TextView)view.findViewById(0x7f0701ef);
            obj1.e = (ImageView)view.findViewById(0x7f0701ed);
            obj1.f = (ProgressBar)view.findViewById(0x7f0701ee);
            view.setTag(obj1);
              goto _L7
_L6:
            viewholder = new ViewHolder();
            view = View.inflate(a.getContext(), 0x7f0300b9, ((ViewGroup) (obj)));
            viewholder.a = (TextView)view.findViewById(0x7f0701e8);
            viewholder.d = (TextView)view.findViewById(0x7f0701ef);
            viewholder.e = (ImageView)view.findViewById(0x7f0701ed);
            viewholder.f = (ProgressBar)view.findViewById(0x7f0701ee);
            view.setTag(viewholder);
            obj = viewholder;
              goto _L1
            obj1 = (ViewHolder)view.getTag();
              goto _L7
        }

        public int getViewTypeCount()
        {
            return 6;
        }

        private ReaderItemListView a;

        ItemAdapter()
        {
            a = ReaderItemListView.this;
            super();
        }

        private class ViewHolder
        {

            TextView a;
            TextView b;
            ImageView c;
            TextView d;
            ImageView e;
            ProgressBar f;
            ProgressBar g;

            ViewHolder()
            {
            }
        }

    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(i != 0)
            {
                int j = i + -1;
                Intent intent = new Intent();
                intent.setClass(a, com/tencent/mm/plugin/readerapp/ui/ReaderAppWebViewUI);
                String s = ((ReaderAppInfo)ReaderItemListView.c(c).get(j)).h();
                String s1;
                if(s.contains("?"))
                    s1 = (new StringBuilder()).append(s).append("&dt=2&cv=0x").append(Integer.toHexString(ConstantsProtocal.b)).append("&w=").append(b.widthPixels).toString();
                else
                    s1 = (new StringBuilder()).append(s).append("?dt=2&cv=0x").append(Integer.toHexString(ConstantsProtocal.b)).append("&w=").append(b.widthPixels).toString();
                intent.putExtra("rawUrl", s1);
                intent.putExtra("title", ((ReaderAppInfo)ReaderItemListView.c(c).get(j)).f());
                intent.putExtra("useJs", true);
                intent.putExtra("vertical_scroll", true);
                intent.putExtra("shortUrl", ((ReaderAppInfo)ReaderItemListView.c(c).get(j)).i());
                intent.putExtra("type", ((ReaderAppInfo)ReaderItemListView.c(c).get(j)).e());
                intent.putExtra("tweetid", ((ReaderAppInfo)ReaderItemListView.c(c).get(j)).c());
                a.startActivity(intent);
            }
        }

        private Context a;
        private DisplayMetrics b;
        private ReaderItemListView c;

        _cls2(Context context, DisplayMetrics displaymetrics)
        {
            c = ReaderItemListView.this;
            a = context;
            b = displaymetrics;
            super();
        }
    }

}
