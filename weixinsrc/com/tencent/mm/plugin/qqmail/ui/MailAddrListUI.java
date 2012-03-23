// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.plugin.qqmail.model.MailAddrMgr;
import com.tencent.mm.plugin.qqmail.model.MailAppService;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMAlert;
import java.util.ArrayList;
import java.util.List;

public class MailAddrListUI extends MMActivity
{

    public MailAddrListUI()
    {
        a = null;
        b = null;
        d = null;
        g = new _cls1();
    }

    static ProgressDialog a(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.a;
    }

    static List a(MailAddrListUI mailaddrlistui, List list)
    {
        mailaddrlistui.f = list;
        return list;
    }

    static MailAddrMgr b(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.d;
    }

    static List c(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.f;
    }

    static TextView d(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.b;
    }

    static AddrListAdapter e(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.e;
    }

    static ListView f(MailAddrListUI mailaddrlistui)
    {
        return mailaddrlistui.c;
    }

    protected final int a()
    {
        return 0x7f0300aa;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d(0x7f0a0471);
        f = new ArrayList();
        d = MMCore.n().b();
        c = (ListView)findViewById(0x7f0701c2);
        b = (TextView)findViewById(0x7f070130);
        e = new AddrListAdapter(this);
        View view = View.inflate(this, 0x7f0300ce, null);
        EditText edittext = (EditText)view.findViewById(0x7f07022c);
        Button button = (Button)view.findViewById(0x7f07022d);
        edittext.setCompoundDrawablesWithIntrinsicBounds(0x7f02026b, 0, 0, 0);
        edittext.addTextChangedListener(new _cls2(button));
        button.setOnClickListener(new _cls3(edittext));
        c.addHeaderView(view);
        c.setAdapter(e);
        c.setOnItemClickListener(new _cls4());
        f = d.a(null);
        e.notifyDataSetChanged();
        b(new _cls5());
        a(new _cls6());
        a(0x7f0a0472, new _cls7());
        a = MMAlert.a(c(), getString(0x7f0a0010), getString(0x7f0a0457), true, new _cls8());
        d.a(g);
        d.a();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        d.b(g);
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
        e.notifyDataSetChanged();
    }

    private ProgressDialog a;
    private TextView b;
    private ListView c;
    private MailAddrMgr d;
    private AddrListAdapter e;
    private List f;
    private com.tencent.mm.plugin.qqmail.model.MailAddrMgr.CallBack g;

    private class _cls1 extends com.tencent.mm.plugin.qqmail.model.MailAddrMgr.CallBack
    {

        public final void a()
        {
            if(MailAddrListUI.a(a) != null)
                MailAddrListUI.a(a).dismiss();
            MailAddrListUI.a(a, com.tencent.mm.plugin.qqmail.ui.MailAddrListUI.b(a).a(null));
            if(MailAddrListUI.c(a).size() == 0)
            {
                MailAddrListUI.d(a).setText(0x7f0a01bc);
                MailAddrListUI.d(a).setVisibility(0);
            }
            String as[] = a.getIntent().getStringArrayExtra("INIT_SELECTED_ADDRS_INTENT_EXTRA");
            String as1[];
            int i;
            int j;
            MailAddrListUI mailaddrlistui;
            StringBuilder stringbuilder;
            String s;
            MailAddr mailaddr;
            Iterator iterator;
            boolean flag;
            MailAddr mailaddr1;
            if(as == null)
            {
                String as2[] = new String[1];
                as2[0] = "";
                as1 = as2;
            } else
            {
                as1 = as;
            }
            i = as1.length;
            j = 0;
            if(j >= i) goto _L2; else goto _L1
_L1:
            mailaddr = MailAddrMgr.b(as1[j]);
            if(mailaddr == null)
                continue; /* Loop/switch isn't completed */
            iterator = MailAddrListUI.c(a).iterator();
            do
            {
                if(!iterator.hasNext())
                    break MISSING_BLOCK_LABEL_335;
                mailaddr1 = (MailAddr)iterator.next();
            } while(!mailaddr1.e().equalsIgnoreCase(mailaddr.e()));
            MailAddrListUI.e(a).a(mailaddr1);
            flag = true;
_L4:
            if(!flag)
                MailAddrListUI.e(a).a(mailaddr);
            j++;
            break MISSING_BLOCK_LABEL_116;
_L2:
            mailaddrlistui = a;
            stringbuilder = (new StringBuilder()).append(a.getString(0x7f0a0471));
            if(MailAddrListUI.e(a).b() > 0)
                s = (new StringBuilder()).append("(").append(MailAddrListUI.e(a).b()).append(")").toString();
            else
                s = "";
            mailaddrlistui.d(stringbuilder.append(s).toString());
            MailAddrListUI.e(a).notifyDataSetChanged();
            return;
            flag = false;
            if(true) goto _L4; else goto _L3
_L3:
        }

        private MailAddrListUI a;

        _cls1()
        {
            a = MailAddrListUI.this;
            super();
        }
    }


    private class AddrListAdapter extends BaseAdapter
    {

        private MailAddr b(int i)
        {
            return (MailAddr)MailAddrListUI.c(c).get(i);
        }

        public final List a()
        {
            ArrayList arraylist = new ArrayList();
            String s;
            for(Iterator iterator = b.keySet().iterator(); iterator.hasNext(); arraylist.add(b.get(s)))
                s = (String)iterator.next();

            return arraylist;
        }

        public final void a(int i)
        {
            MailAddr mailaddr = b(i);
            String s = mailaddr.e();
            if(b.containsKey(s))
                b.remove(s);
            else
                b.put(s, mailaddr);
            notifyDataSetChanged();
        }

        public final void a(MailAddr mailaddr)
        {
            b.put(mailaddr.e(), mailaddr);
        }

        public final int b()
        {
            return b.size();
        }

        public int getCount()
        {
            return MailAddrListUI.c(c).size();
        }

        public volatile Object getItem(int i)
        {
            return b(i);
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                TextView a;
                TextView b;
                CheckBox c;
                private AddrListAdapter d;

                ViewHolder()
                {
                    d = AddrListAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder1;
            MailAddr mailaddr;
            CheckBox checkbox;
            boolean flag;
            if(view == null)
            {
                ViewHolder viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f0300ab, null);
                viewholder.a = (TextView)view.findViewById(0x7f0701c4);
                viewholder.b = (TextView)view.findViewById(0x7f0701c5);
                viewholder.c = (CheckBox)view.findViewById(0x7f0701c6);
                view.setTag(viewholder);
                viewholder1 = viewholder;
            } else
            {
                viewholder1 = (ViewHolder)view.getTag();
            }
            mailaddr = b(i);
            viewholder1.a.setText(mailaddr.d());
            viewholder1.b.setText(mailaddr.e());
            checkbox = viewholder1.c;
            if(b.get(mailaddr.e()) != null)
                flag = true;
            else
                flag = false;
            checkbox.setChecked(flag);
            return view;
        }

        private final Context a;
        private Map b;
        private MailAddrListUI c;

        public AddrListAdapter(Context context)
        {
            c = MailAddrListUI.this;
            super();
            b = new HashMap();
            a = context;
        }
    }


    private class _cls2
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            MailAddrListUI.a(b, com.tencent.mm.plugin.qqmail.ui.MailAddrListUI.b(b).a(charsequence.toString().trim()));
            MailAddrListUI.e(b).notifyDataSetChanged();
            Button button = a;
            int l;
            if(charsequence.toString().length() > 0)
                l = 0;
            else
                l = 8;
            button.setVisibility(l);
        }

        private Button a;
        private MailAddrListUI b;

        _cls2(Button button)
        {
            b = MailAddrListUI.this;
            a = button;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setText("");
        }

        private EditText a;
        private MailAddrListUI b;

        _cls3(EditText edittext)
        {
            b = MailAddrListUI.this;
            a = edittext;
            super();
        }
    }


    private class _cls4
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            MailAddrListUI.e(a).a(i + -1);
            MailAddrListUI mailaddrlistui = a;
            StringBuilder stringbuilder = (new StringBuilder()).append(a.getString(0x7f0a0471));
            String s;
            if(MailAddrListUI.e(a).b() > 0)
                s = (new StringBuilder()).append("(").append(MailAddrListUI.e(a).b()).append(")").toString();
            else
                s = "";
            mailaddrlistui.d(stringbuilder.append(s).toString());
        }

        private MailAddrListUI a;

        _cls4()
        {
            a = MailAddrListUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.setResult(0);
            a.finish();
        }

        private MailAddrListUI a;

        _cls5()
        {
            a = MailAddrListUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            b.a.b.a(MailAddrListUI.f(a));
        }

        private MailAddrListUI a;

        _cls6()
        {
            a = MailAddrListUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ComposeUI.a(MailAddrListUI.e(a).a());
            a.setResult(-1);
            a.finish();
        }

        private MailAddrListUI a;

        _cls7()
        {
            a = MailAddrListUI.this;
            super();
        }
    }


    private class _cls8
        implements android.content.DialogInterface.OnCancelListener
    {

        public void onCancel(DialogInterface dialoginterface)
        {
        }

        private MailAddrListUI a;

        _cls8()
        {
            a = MailAddrListUI.this;
            super();
        }
    }

}
