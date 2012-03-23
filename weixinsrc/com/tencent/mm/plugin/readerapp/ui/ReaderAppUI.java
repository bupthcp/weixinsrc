// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.readerapp.model.*;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.ConversationStorage;
import com.tencent.mm.ui.*;

// Referenced classes of package com.tencent.mm.plugin.readerapp.ui:
//            ReaderAppIntroUI

public class ReaderAppUI extends MMActivity
    implements com.tencent.mm.plugin.readerapp.model.ReaderAppGetPicService.OnDownSucc
{

    public ReaderAppUI()
    {
        d = 0;
        e = "";
        f = null;
    }

    static int a(ReaderAppUI readerappui)
    {
        return readerappui.d;
    }

    static HistoryAdapter b(ReaderAppUI readerappui)
    {
        return readerappui.c;
    }

    static MMPullDownView c(ReaderAppUI readerappui)
    {
        return readerappui.b;
    }

    static ListView d(ReaderAppUI readerappui)
    {
        return readerappui.a;
    }

    static String e(ReaderAppUI readerappui)
    {
        return readerappui.e;
    }

    protected final int a()
    {
        return 0x7f0300b2;
    }

    public final void a(String s, int i)
    {
        if(c != null)
        {
            Log.d("MicroMsg.ReaderAppUI", (new StringBuilder()).append("onDownSucc :").append(s).toString());
            c.b();
        }
    }

    public final void b()
    {
        TextView textview = (TextView)findViewById(0x7f07018e);
        int i;
        if(d == 20)
            i = 0x7f0a049a;
        else
            i = 0x7f0a049b;
        textview.setText(i);
        if(c.getCount() == 0)
            textview.setVisibility(0);
        else
            textview.setVisibility(8);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getIntent().getIntExtra("type", 0);
        a = (ListView)findViewById(0x7f0701e5);
        b = (MMPullDownView)findViewById(0x7f0701e4);
        ((TextView)findViewById(0x7f07018e)).setText(0x7f0a0499);
        c = new HistoryAdapter(this, new Long(0L));
        a.setAdapter(c);
        a.setTranscriptMode(1);
        if(c.getCount() == 0)
        {
            Intent intent = new Intent(this, com/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI);
            intent.putExtra("type", d);
            startActivity(intent);
            finish();
        } else
        {
            b.a(a);
            b.a(new _cls2());
            c.a(new _cls3());
            b(new _cls4());
            a(0x7f0a0013, new _cls5());
            a.setSelection(-1 + c.d());
        }
        e = ReaderAppInfo.a(d);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 1 1: default 24
    //                   1 26;
           goto _L1 _L2
_L1:
        return true;
_L2:
        int i;
        if(d == 20)
            i = 0x7f0a0495;
        else
            i = 0x7f0a0496;
        MMAlert.a(this, getString(i), getString(0x7f0a0010), new _cls1(), null);
        if(true) goto _L1; else goto _L3
_L3:
    }

    protected void onPause()
    {
        super.onPause();
        if(f != null)
            f.dismiss();
        MMCore.f().r().b(c);
        MMCore.h().a(this);
        MMCore.f().j().e(e);
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        menu.clear();
        menu.add(0, 1, 1, getString(0x7f0a0494)).setIcon(0x7f020183);
        return true;
    }

    protected void onResume()
    {
        super.onResume();
        MMCore.h().b(this);
        if(d == 20)
            d(0x7f0a006c);
        else
            d(0x7f0a006f);
        MMAppMgr.a(e);
        if(MMAppMgr.b() != null && MMAppMgr.b().equals(e) && MMAppMgr.c() == 1)
            MMAppMgr.e();
        MMCore.f().j().e(e);
        MMCore.f().r().a(c);
        c.b();
        b();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if(flag && d == 20 && Util.i((String)MMCore.f().f().a(0x33c48bea)) && f == null)
            f = MMToast.a(this, getString(0x7f0a04a9), 4000L);
    }

    private ListView a;
    private MMPullDownView b;
    private HistoryAdapter c;
    private int d;
    private String e;
    private PopupWindow f;

    private class HistoryAdapter extends MListAdapter
    {

        public final volatile Object a(Object obj, Cursor cursor)
        {
            return Long.valueOf(cursor.getLong(0));
        }

        protected final void a()
        {
            b();
        }

        public final void b()
        {
            f = MMCore.f().r().a(ReaderAppUI.a(g));
            a(MMCore.f().r().a(b, ReaderAppUI.a(g)));
            super.notifyDataSetChanged();
        }

        public final boolean c()
        {
            boolean flag;
            if(b >= f)
                flag = true;
            else
                flag = false;
            return flag;
        }

        public final int d()
        {
            return b;
        }

        public final int e()
        {
            int i;
            if(c())
            {
                i = 0;
            } else
            {
                b = 3 + b;
                if(b <= f)
                    i = 3;
                else
                    i = f % 3;
            }
            return i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder1;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f0300b7, null);
                viewholder.a = (ReaderItemListView)view.findViewById(0x7f0701ec);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            viewholder1.a.a(((Long)getItem(i)).longValue());
            return view;
        }

        private Context a;
        private int b;
        private int f;
        private ReaderAppUI g;

        public HistoryAdapter(Context context, Long long1)
        {
            g = ReaderAppUI.this;
            super(context, long1);
            a = context;
            b = 3;
            f = b;
        }

        private class ViewHolder
        {

            ReaderItemListView a;

            ViewHolder()
            {
            }
        }

    }


    private class _cls2
        implements com.tencent.mm.ui.MMPullDownView.OnLoadDataListener
    {

        public final void a()
        {
            if(ReaderAppUI.b(a).c())
            {
                ReaderAppUI.d(a).setSelectionFromTop(0, ReaderAppUI.c(a).a());
            } else
            {
                int i = ReaderAppUI.b(a).e();
                Log.e("MicroMsg.ReaderAppUI", (new StringBuilder()).append("onLoadData add count:").append(i).toString());
                ReaderAppUI.b(a).a_(null);
                ReaderAppUI.d(a).setSelectionFromTop(i, ReaderAppUI.c(a).a());
            }
        }

        private ReaderAppUI a;

        _cls2()
        {
            a = ReaderAppUI.this;
            super();
        }
    }


    private class _cls3
        implements com.tencent.mm.ui.MListAdapter.CallBack
    {

        public final void a()
        {
            ReaderAppUI.c(a).a(ReaderAppUI.b(a).c());
        }

        public final void b()
        {
        }

        private ReaderAppUI a;

        _cls3()
        {
            a = ReaderAppUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private ReaderAppUI a;

        _cls4()
        {
            a = ReaderAppUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.startActivity((new Intent(a, com/tencent/mm/ui/contact/ContactInfoUI)).putExtra("Contact_User", ReaderAppUI.e(a)));
        }

        private ReaderAppUI a;

        _cls5()
        {
            a = ReaderAppUI.this;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            MMCore.f().r().b(ReaderAppUI.a(a));
            a.b();
        }

        private ReaderAppUI a;

        _cls1()
        {
            a = ReaderAppUI.this;
            super();
        }
    }

}
