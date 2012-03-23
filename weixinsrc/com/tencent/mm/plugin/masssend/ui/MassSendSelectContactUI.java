// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.ui;

import android.os.Bundle;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.ContactStorageLogic;
import com.tencent.mm.ui.*;
import java.util.*;

public class MassSendSelectContactUI extends MMActivity
{

    public MassSendSelectContactUI()
    {
        e = "";
        f = false;
        g = new _cls6();
    }

    static String a(MassSendSelectContactUI masssendselectcontactui, String s)
    {
        masssendselectcontactui.e = s;
        return s;
    }

    static void a(MassSendSelectContactUI masssendselectcontactui)
    {
        if(masssendselectcontactui.b != null)
            masssendselectcontactui.b.c(masssendselectcontactui.e);
    }

    static void a(MassSendSelectContactUI masssendselectcontactui, int i)
    {
        masssendselectcontactui.h(i);
    }

    static boolean a(MassSendSelectContactUI masssendselectcontactui, boolean flag)
    {
        masssendselectcontactui.f = flag;
        return flag;
    }

    static AddressAdapter b(MassSendSelectContactUI masssendselectcontactui)
    {
        return masssendselectcontactui.b;
    }

    static boolean c(MassSendSelectContactUI masssendselectcontactui)
    {
        return masssendselectcontactui.f;
    }

    static ListView d(MassSendSelectContactUI masssendselectcontactui)
    {
        return masssendselectcontactui.a;
    }

    private void h(int i)
    {
        Button button = d;
        boolean flag;
        Button button1;
        StringBuilder stringbuilder;
        String s;
        if(i > 0)
            flag = true;
        else
            flag = false;
        button.setEnabled(flag);
        button1 = d;
        stringbuilder = (new StringBuilder()).append(getString(0x7f0a0427));
        if(i > 0)
            s = (new StringBuilder()).append("(").append(i).append(")").toString();
        else
            s = "";
        button1.setText(stringbuilder.append(s).toString());
    }

    protected final int a()
    {
        return 0x7f03006e;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        AvatarDrawable.a(this);
        d(0x7f0a0435);
        a = (ListView)findViewById(0x7f07016b);
        View view = View.inflate(this, 0x7f0300ce, null);
        EditText edittext = (EditText)view.findViewById(0x7f07022c);
        edittext.setCompoundDrawablesWithIntrinsicBounds(0x7f02026b, 0, 0, 0);
        edittext.addTextChangedListener(new _cls1());
        b = new AddressAdapter(this, "@micromsg.qq.com", null, 0);
        LinkedList linkedlist = new LinkedList();
        String as[] = ContactStorageLogic.d;
        int i = as.length;
        for(int j = 0; j < i; j++)
            linkedlist.add(as[j]);

        linkedlist.add("weixin");
        for(Iterator iterator = ContactStorageLogic.a().iterator(); iterator.hasNext(); linkedlist.add((String)iterator.next()));
        b.a(linkedlist);
        a.addHeaderView(view);
        a.setAdapter(b);
        a.setOnItemClickListener(new _cls2());
        d = (Button)findViewById(0x7f07015b);
        d.setOnClickListener(new _cls3());
        h(0);
        c = (AlphabetScrollBar)findViewById(0x7f07016c);
        c.a(g);
        b(new _cls4());
        a(0x7f0a042a, new _cls5());
    }

    public void onDestroy()
    {
        AvatarDrawable.b(this);
        c.a();
        b.n();
        b.m();
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        b.a_(null);
        h(b.h());
    }

    private ListView a;
    private AddressAdapter b;
    private AlphabetScrollBar c;
    private Button d;
    private String e;
    private boolean f;
    private com.tencent.mm.ui.AlphabetScrollBar.OnScollBarTouchListener g;

    private class _cls6
        implements com.tencent.mm.ui.AlphabetScrollBar.OnScollBarTouchListener
    {

        public final void a(String s)
        {
            int i = 0;
            if(!a.getString(0x7f0a0043).equals(s)) goto _L2; else goto _L1
_L1:
            MassSendSelectContactUI.d(a).setSelection(i);
_L4:
            return;
_L2:
            String as[];
            as = MassSendSelectContactUI.b(a).j();
            if(as == null)
                continue; /* Loop/switch isn't completed */
_L5:
            if(i < as.length)
            {
label0:
                {
                    if(!as[i].equals(s))
                        break label0;
                    int j = MassSendSelectContactUI.b(a).b(i);
                    MassSendSelectContactUI.d(a).setSelection(j + 1);
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
            i++;
              goto _L5
            if(true) goto _L4; else goto _L6
_L6:
        }

        private MassSendSelectContactUI a;

        _cls6()
        {
            a = MassSendSelectContactUI.this;
            super();
        }
    }


    private class _cls1
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
            MassSendSelectContactUI.a(a, Util.a(charsequence.toString()));
            MassSendSelectContactUI.a(a);
        }

        private MassSendSelectContactUI a;

        _cls1()
        {
            a = MassSendSelectContactUI.this;
            super();
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
                MassSendSelectContactUI.b(a).a(j);
                MassSendSelectContactUI.a(a, MassSendSelectContactUI.b(a).h());
            }
        }

        private MassSendSelectContactUI a;

        _cls2()
        {
            a = MassSendSelectContactUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            List list = MassSendSelectContactUI.b(a).e();
            list.remove(ConfigStorageLogic.b());
            String s = Util.a(list, ";");
            Intent intent = new Intent(a, com/tencent/mm/plugin/masssend/ui/MassSendMsgUI);
            intent.putExtra("mass_send_contact_list", s);
            a.startActivity(intent);
        }

        private MassSendSelectContactUI a;

        _cls3()
        {
            a = MassSendSelectContactUI.this;
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

        private MassSendSelectContactUI a;

        _cls4()
        {
            a = MassSendSelectContactUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MassSendSelectContactUI masssendselectcontactui;
            boolean flag;
            if(!MassSendSelectContactUI.c(a))
            {
                ((MMImageButton)view).b(0x7f0a0015);
                MassSendSelectContactUI.b(a).c();
            } else
            {
                ((MMImageButton)view).b(0x7f0a042a);
                MassSendSelectContactUI.b(a).d();
            }
            MassSendSelectContactUI.a(a, MassSendSelectContactUI.b(a).h());
            masssendselectcontactui = a;
            if(!MassSendSelectContactUI.c(a))
                flag = true;
            else
                flag = false;
            MassSendSelectContactUI.a(masssendselectcontactui, flag);
            MassSendSelectContactUI.b(a).a_(null);
        }

        private MassSendSelectContactUI a;

        _cls5()
        {
            a = MassSendSelectContactUI.this;
            super();
        }
    }

}
