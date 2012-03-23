// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.qqmail.model.*;
import com.tencent.mm.ui.*;
import java.io.File;
import java.util.*;

// Referenced classes of package com.tencent.mm.plugin.qqmail.ui:
//            ProcessVerifyErr, MailAddrsViewControl, FileUploadHelper

public class ComposeUI extends MMActivity
{

    public ComposeUI()
    {
        t = new ProcessVerifyErr(this);
        v = 1;
        y = new MTimerHandler(new _cls1(), true);
        z = new _cls2();
        A = new _cls11();
        B = new _cls12();
        C = new _cls13();
        D = new _cls14();
        E = new _cls15();
    }

    static long a(ComposeUI composeui, long l1)
    {
        composeui.x = l1;
        return l1;
    }

    static ProgressDialog a(ComposeUI composeui, ProgressDialog progressdialog)
    {
        composeui.u = progressdialog;
        return progressdialog;
    }

    static MailAddrMgr a(ComposeUI composeui)
    {
        return composeui.r;
    }

    private static void a(MailAddrsViewControl mailaddrsviewcontrol)
    {
        if(a != null)
            mailaddrsviewcontrol.b(a);
    }

    private void a(String s1)
    {
        File file = new File(s1);
        if(file.exists())
        {
            int i1 = (int)file.length();
            Object aobj[] = new Object[1];
            aobj[0] = Util.b(i1);
            MMAlert.a(this, getString(0x7f0a0459, aobj), getString(0x7f0a0010), new _cls16(i1, file, s1), null);
        }
    }

    static void a(List list)
    {
        a = list;
    }

    static boolean a(ComposeUI composeui, boolean flag)
    {
        boolean flag1;
        flag1 = false;
        break MISSING_BLOCK_LABEL_2;
        if((!flag || composeui.c.b().size() != 0 || composeui.g.b().size() != 0 || composeui.j.b().size() != 0) && (composeui.l.getText().toString().trim().length() != 0 || composeui.s.b().size() != 0 || composeui.q.getText().length() != 0 && !composeui.q.getText().toString().equals(composeui.getString(0x7f0a0464))))
            flag1 = true;
        return flag1;
    }

    static MailAddrsViewControl b(ComposeUI composeui)
    {
        return composeui.c;
    }

    static MailAddrsViewControl c(ComposeUI composeui)
    {
        return composeui.g;
    }

    static MailAddrsViewControl d(ComposeUI composeui)
    {
        return composeui.j;
    }

    static ScrollView e(ComposeUI composeui)
    {
        return composeui.b;
    }

    static EditText f(ComposeUI composeui)
    {
        return composeui.l;
    }

    static EditText g(ComposeUI composeui)
    {
        return composeui.q;
    }

    static LinearLayout h(ComposeUI composeui)
    {
        return composeui.e;
    }

    static LinearLayout i(ComposeUI composeui)
    {
        return composeui.f;
    }

    static LinearLayout j(ComposeUI composeui)
    {
        return composeui.i;
    }

    static FileUploadHelper k(ComposeUI composeui)
    {
        return composeui.s;
    }

    static String l(ComposeUI composeui)
    {
        return composeui.w;
    }

    static int m(ComposeUI composeui)
    {
        return composeui.v;
    }

    static boolean n(ComposeUI composeui)
    {
        boolean flag = false;
        if(!composeui.c.e())
            Toast.makeText(composeui, 0x7f0a044f, 3000).show();
        else
        if(!composeui.g.e())
            Toast.makeText(composeui, 0x7f0a0450, 3000).show();
        else
        if(!composeui.j.e())
            Toast.makeText(composeui, 0x7f0a0451, 3000).show();
        else
        if(composeui.c.b().size() + composeui.g.b().size() + composeui.j.b().size() > 20)
            Toast.makeText(composeui, 0x7f0a046d, 3000).show();
        else
            flag = true;
        return flag;
    }

    static long o(ComposeUI composeui)
    {
        return composeui.x;
    }

    static ProgressDialog p(ComposeUI composeui)
    {
        return composeui.u;
    }

    static long q(ComposeUI composeui)
    {
        int i1 = 40;
        HashMap hashmap = new HashMap();
        hashmap.put("from", "");
        hashmap.put("to", composeui.c.c());
        hashmap.put("cc", composeui.g.c());
        hashmap.put("bcc", composeui.j.c());
        String s1 = composeui.l.getText().toString();
        String s3;
        StringBuilder stringbuilder;
        int j1;
        com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions;
        if(s1.trim().length() > 0)
        {
            s3 = s1;
        } else
        {
            String s2 = composeui.q.getText().toString().trim();
            if(s2.length() > 0 && !s2.equals(composeui.getString(0x7f0a0464)))
            {
                String s4 = s2.replace(composeui.getString(0x7f0a0464), "").replaceAll("\n| ", "");
                if(s4.length() <= i1)
                    i1 = s4.length();
                s3 = s4.substring(0, i1);
            } else
            {
                s3 = composeui.getString(0x7f0a0463);
            }
        }
        hashmap.put("subject", s3);
        hashmap.put("content", composeui.q.getText().toString());
        hashmap.put("attachlist", composeui.s.a());
        stringbuilder = (new StringBuilder()).append("");
        if(composeui.v == 4)
            j1 = 1;
        else
            j1 = composeui.v;
        hashmap.put("sendtype", stringbuilder.append(j1).toString());
        hashmap.put("oldmailid", composeui.w);
        httpoptions = new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions();
        httpoptions.b();
        httpoptions.a();
        return MMCore.n().a("/cgi-bin/composesendwithattach", hashmap, httpoptions, composeui.E);
    }

    static ProcessVerifyErr r(ComposeUI composeui)
    {
        return composeui.t;
    }

    protected final int a()
    {
        return 0x7f0300ad;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        if(j1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i1)
        {
        case 0: // '\0'
            a(c);
            break;

        case 1: // '\001'
            a(g);
            break;

        case 2: // '\002'
            a(j);
            break;

        case 3: // '\003'
            String s2 = CameraUtil.a(this, intent, MMCore.f().M());
            if(s2 != null)
                a(s2);
            break;

        case 4: // '\004'
            if(intent != null)
            {
                String s1 = Util.a(this, intent, MMCore.f().M());
                if(s1 != null && s1.length() > 0)
                    a(s1);
            }
            break;

        case 5: // '\005'
            if(intent != null)
                a(intent.getStringExtra("choosed_file_path"));
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        DraftMail draftmail;
        super.onCreate(bundle);
        v = getIntent().getIntExtra("composeType", 1);
        w = getIntent().getStringExtra("mailid");
        if(w == null)
            w = "";
        b = (ScrollView)findViewById(0x7f0701d2);
        c = (MailAddrsViewControl)findViewById(0x7f0701d3);
        d = (ImageView)findViewById(0x7f0701d4);
        e = (LinearLayout)findViewById(0x7f0701d5);
        f = (LinearLayout)findViewById(0x7f0701d6);
        g = (MailAddrsViewControl)findViewById(0x7f0701d7);
        h = (ImageView)findViewById(0x7f0701d8);
        i = (LinearLayout)findViewById(0x7f0701d9);
        j = (MailAddrsViewControl)findViewById(0x7f0701da);
        k = (ImageView)findViewById(0x7f0701db);
        l = (EditText)findViewById(0x7f0701dc);
        m = (LinearLayout)findViewById(0x7f0701de);
        p = (TextView)findViewById(0x7f0701e1);
        q = (EditText)findViewById(0x7f0701e2);
        n = (TextView)findViewById(0x7f0701df);
        o = (LinearLayout)findViewById(0x7f0701e0);
        c.a();
        g.a();
        j.a();
        draftmail = MMCore.n().c().a(w, v);
        s = new FileUploadHelper(this, n, o);
        if(v != 4) goto _L2; else goto _L1
_L1:
        String as3[] = getIntent().getStringArrayExtra("toList");
        if(as3 != null && as3.length > 0)
            c.a(as3, false);
_L4:
        if(v == 2 || v == 3)
            p.setVisibility(0);
        if(g.b().size() > 0 || j.b().size() > 0)
        {
            e.setVisibility(8);
            f.setVisibility(0);
            i.setVisibility(0);
        }
        if(v == 2)
        {
            q.requestFocus();
            q.setSelection(0);
            b.postDelayed(new _cls3(), 1000L);
        }
        c.a(new OnAddrControlActionListener(d, 0));
        g.a(new OnAddrControlActionListener(h, 1));
        j.a(new OnAddrControlActionListener(k, 2));
        d.setOnClickListener(new _cls4());
        h.setOnClickListener(new _cls5());
        k.setOnClickListener(new _cls6());
        e.setOnClickListener(A);
        ImageView imageview = (ImageView)findViewById(0x7f0701dd);
        if(l.getText().length() > 0)
            imageview.setVisibility(0);
        l.setOnFocusChangeListener(new _cls7());
        l.addTextChangedListener(new _cls8(imageview));
        imageview.setOnClickListener(new _cls9());
        m.setOnClickListener(B);
        q.setOnFocusChangeListener(new _cls10());
        d(0x7f0a0441);
        b(0x7f0a0015, C);
        a(getString(0x7f0a0011), D).setBackgroundResource(0x7f0201b8);
        b(false);
        r = MMCore.n().b();
        r.a(z);
        r.a();
        return;
_L2:
        if(draftmail != null)
        {
            c.a(draftmail.e());
            g.a(draftmail.f());
            j.a(draftmail.g());
            s.a(draftmail.h());
            l.setText(draftmail.i());
            q.setText(draftmail.j());
        } else
        if(v != 1)
        {
            String as[] = getIntent().getStringArrayExtra("toList");
            String as1[] = getIntent().getStringArrayExtra("ccList");
            String as2[] = getIntent().getStringArrayExtra("bccList");
            String s1 = getIntent().getStringExtra("subject");
            c.a(as, false);
            g.a(as1, false);
            j.a(as2, false);
            EditText edittext = l;
            StringBuilder stringbuilder = new StringBuilder();
            String s2;
            if(v == 2)
                s2 = "Re:";
            else
                s2 = "Fwd:";
            edittext.setText(stringbuilder.append(s2).append(s1).toString());
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(a != null)
            a = null;
        s.c();
        r.b(z);
        t.a();
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        boolean flag;
        if(i1 == 4)
        {
            C.onClick(null);
            flag = true;
        } else
        {
            flag = super.onKeyDown(i1, keyevent);
        }
        return flag;
    }

    protected void onPause()
    {
        super.onPause();
        y.a();
    }

    protected void onResume()
    {
        super.onResume();
        y.a(2000L);
    }

    private static List a;
    private android.view.View.OnClickListener A;
    private android.view.View.OnClickListener B;
    private android.view.View.OnClickListener C;
    private android.view.View.OnClickListener D;
    private com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack E;
    private ScrollView b;
    private MailAddrsViewControl c;
    private ImageView d;
    private LinearLayout e;
    private LinearLayout f;
    private MailAddrsViewControl g;
    private ImageView h;
    private LinearLayout i;
    private MailAddrsViewControl j;
    private ImageView k;
    private EditText l;
    private LinearLayout m;
    private TextView n;
    private LinearLayout o;
    private TextView p;
    private EditText q;
    private MailAddrMgr r;
    private FileUploadHelper s;
    private ProcessVerifyErr t;
    private ProgressDialog u;
    private int v;
    private String w;
    private long x;
    private MTimerHandler y;
    private com.tencent.mm.plugin.qqmail.model.MailAddrMgr.CallBack z;

    private class _cls1
        implements com.tencent.mm.platformtools.MTimerHandler.CallBack
    {

        public final boolean a()
        {
            a.b(ComposeUI.a(a, true));
            return true;
        }

        private ComposeUI a;

        _cls1()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls2 extends com.tencent.mm.plugin.qqmail.model.MailAddrMgr.CallBack
    {

        public final void a()
        {
            MailAddrsViewControl.MailAddressAdapter mailaddressadapter = new MailAddrsViewControl.MailAddressAdapter(a, ComposeUI.a(a).a(null));
            ComposeUI.b(a).a(mailaddressadapter);
            ComposeUI.c(a).a(mailaddressadapter);
            ComposeUI.d(a).a(mailaddressadapter);
        }

        private ComposeUI a;

        _cls2()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls11
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ComposeUI.h(a).setVisibility(8);
            ComposeUI.i(a).setVisibility(0);
            ComposeUI.j(a).setVisibility(0);
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    ComposeUI.i(a.a).requestFocus();
                    ComposeUI.c(a.a).f();
                    ComposeUI.d(a.a).f();
                }

                private _cls11 a;

                _cls1()
                {
                    a = _cls11.this;
                    super();
                }
            }

            ComposeUI.h(a).post(new _cls1());
        }

        final ComposeUI a;

        _cls11()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls12
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ComposeUI composeui = a;
            String as[] = new String[3];
            as[0] = a.getString(0x7f0a044a);
            as[1] = a.getString(0x7f0a044b);
            as[2] = a.getString(0x7f0a044c);
            class _cls1
                implements com.tencent.mm.ui.MMAlert.OnAlertSelectId
            {

                public final void a(int i1)
                {
                    i1;
                    JVM INSTR tableswitch 0 2: default 28
                //                               0 29
                //                               1 101
                //                               2 137;
                       goto _L1 _L2 _L3 _L4
_L1:
                    return;
_L2:
                    if(!CameraUtil.a(a.a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                        Toast.makeText(a.a, a.a.getString(0x7f0a00c5), 1).show();
                    continue; /* Loop/switch isn't completed */
_L3:
                    Intent intent1 = new Intent("android.intent.action.GET_CONTENT");
                    intent1.setType("image/*");
                    a.a.startActivityForResult(Intent.createChooser(intent1, null), 4);
                    continue; /* Loop/switch isn't completed */
_L4:
                    Intent intent = new Intent(a.a, com/tencent/mm/plugin/qqmail/ui/FileExplorerUI);
                    a.a.startActivityForResult(intent, 5);
                    if(true) goto _L1; else goto _L5
_L5:
                }

                private _cls12 a;

                _cls1()
                {
                    a = _cls12.this;
                    super();
                }
            }

            MMAlert.a(composeui, null, as, null, new _cls1());
        }

        final ComposeUI a;

        _cls12()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls13
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    DraftMail draftmail = new DraftMail();
                    draftmail.a(ComposeUI.m(a.a)).a(ComposeUI.l(a.a)).a(ComposeUI.b(a.a).b()).b(ComposeUI.c(a.a).b()).c(ComposeUI.d(a.a).b()).d(ComposeUI.k(a.a).b()).b(ComposeUI.f(a.a).getText().toString()).c(ComposeUI.g(a.a).getText().toString());
                    MMCore.n().c().a(draftmail);
                    a.a.finish();
                }

                private _cls13 a;

                _cls1()
                {
                    a = _cls13.this;
                    super();
                }
            }

            class _cls2
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MMCore.n().c().b(ComposeUI.l(a.a), ComposeUI.m(a.a));
                    a.a.finish();
                }

                private _cls13 a;

                _cls2()
                {
                    a = _cls13.this;
                    super();
                }
            }

            if(ComposeUI.a(a, false))
                MMAlert.a(a, 0x7f0a0456, 0x7f0a0010, new _cls1(), new _cls2());
            else
                a.finish();
        }

        final ComposeUI a;

        _cls13()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls14
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            ComposeUI.f(a).getText().toString();
            ComposeUI.g(a).getText().toString();
            if(ComposeUI.n(a))
            {
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        ComposeUI.k(a.a).c();
                        ComposeUI.k(a.a).a(null);
                        MMCore.n().a(ComposeUI.o(a.a));
                    }

                    private _cls14 a;

                _cls1()
                {
                    a = _cls14.this;
                    super();
                }
                }

                ComposeUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a045c), true, new _cls1()));
                if(!ComposeUI.k(a).d())
                {
                    ComposeUI.p(a).setMessage(a.getString(0x7f0a045b));
                    class _cls2
                        implements FileUploadHelper.OnUploadCompletedListener
                    {

                        public final void a()
                        {
                            ComposeUI.p(a.a).setMessage(a.a.getString(0x7f0a045b));
                        }

                        public final void b()
                        {
                            ComposeUI.a(a.a, ComposeUI.q(a.a));
                        }

                        private _cls14 a;

                _cls2()
                {
                    a = _cls14.this;
                    super();
                }
                    }

                    ComposeUI.k(a).a(new _cls2());
                } else
                {
                    ComposeUI.a(a, ComposeUI.q(a));
                }
            }
        }

        final ComposeUI a;

        _cls14()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls15 extends com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack
    {

        public final void a(int i1, String s1)
        {
            class _cls2 extends ProcessVerifyErr.CallBack
            {

                public final void a()
                {
                    ComposeUI.q(a.a);
                }

                private _cls15 a;

                _cls2()
                {
                    a = _cls15.this;
                    super();
                }
            }

            if(i1 == -5)
                ComposeUI.r(a).a(new _cls2());
            else
                MMAlert.a(a, (new StringBuilder()).append(s1).append("(").append(i1).append(")").toString(), a.getString(0x7f0a045e), null);
        }

        public final void a(String s1, Map map)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    MMCore.n().c().b(ComposeUI.l(a.a), ComposeUI.m(a.a));
                    a.a.finish();
                }

                private _cls15 a;

                _cls1()
                {
                    a = _cls15.this;
                    super();
                }
            }

            MMAlert.a(a, 0x7f0a045d, 0x7f0a0010, new _cls1());
            ComposeUI.a(a).a(ComposeUI.b(a).b());
            ComposeUI.a(a).a(ComposeUI.c(a).b());
            ComposeUI.a(a).a(ComposeUI.d(a).b());
        }

        public final void b()
        {
            if(ComposeUI.p(a) != null)
            {
                ComposeUI.p(a).dismiss();
                ComposeUI.a(a, null);
            }
        }

        final ComposeUI a;

        _cls15()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls16
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            if(ComposeUI.k(d).e() + a > 0x3200000)
            {
                MMAlert.a(d, 0x7f0a045a, 0x7f0a0010, null);
            } else
            {
                if(ComposeUI.f(d).getText().toString().trim().length() == 0)
                {
                    String s1 = b.getName().trim();
                    int j1 = s1.lastIndexOf(".");
                    EditText edittext = ComposeUI.f(d);
                    if(j1 <= 0)
                        j1 = s1.length();
                    edittext.setText(s1.substring(0, j1));
                }
                ComposeUI.k(d).a(c);
            }
        }

        private int a;
        private File b;
        private String c;
        private ComposeUI d;

        _cls16(int i1, File file, String s1)
        {
            d = ComposeUI.this;
            a = i1;
            b = file;
            c = s1;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        public void run()
        {
            ComposeUI.e(a).fullScroll(130);
        }

        private ComposeUI a;

        _cls3()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class OnAddrControlActionListener extends MailAddrsViewControl.OnActionListener
    {

        public final void a(boolean flag)
        {
            ImageView imageview = b;
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    if(!ComposeUI.c(a.a).a.isFocused() && !ComposeUI.d(a.a).a.isFocused() && ComposeUI.c(a.a).b().size() == 0 && ComposeUI.d(a.a).b().size() == 0)
                    {
                        ComposeUI.h(a.a).setVisibility(0);
                        ComposeUI.i(a.a).setVisibility(8);
                        ComposeUI.j(a.a).setVisibility(8);
                    }
                }

                private OnAddrControlActionListener a;

                _cls1()
                {
                    a = OnAddrControlActionListener.this;
                    super();
                }
            }

            int i1;
            if(flag)
                i1 = 0;
            else
                i1 = 4;
            imageview.setVisibility(i1);
            if((c == 1 || c == 2) && !flag)
                ComposeUI.h(a).postDelayed(new _cls1(), 10L);
        }

        final ComposeUI a;
        private ImageView b;
        private int c;

        public OnAddrControlActionListener(ImageView imageview, int i1)
        {
            a = ComposeUI.this;
            super();
            b = imageview;
            c = i1;
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/plugin/qqmail/ui/MailAddrListUI);
            intent.putExtra("INIT_SELECTED_ADDRS_INTENT_EXTRA", ComposeUI.b(a).a(false));
            a.startActivityForResult(intent, 0);
        }

        private ComposeUI a;

        _cls4()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/plugin/qqmail/ui/MailAddrListUI);
            intent.putExtra("INIT_SELECTED_ADDRS_INTENT_EXTRA", ComposeUI.c(a).a(false));
            a.startActivityForResult(intent, 1);
        }

        private ComposeUI a;

        _cls5()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = new Intent(a, com/tencent/mm/plugin/qqmail/ui/MailAddrListUI);
            intent.putExtra("INIT_SELECTED_ADDRS_INTENT_EXTRA", ComposeUI.d(a).a(false));
            a.startActivityForResult(intent, 2);
        }

        private ComposeUI a;

        _cls6()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            if(flag)
                ComposeUI.f(a).setSelection(ComposeUI.f(a).getText().length());
        }

        private ComposeUI a;

        _cls7()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls8
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
        }

        public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
            ImageView imageview = a;
            int l1;
            if(ComposeUI.f(b).getText().length() > 0)
                l1 = 0;
            else
                l1 = 4;
            imageview.setVisibility(l1);
        }

        private ImageView a;
        private ComposeUI b;

        _cls8(ImageView imageview)
        {
            b = ComposeUI.this;
            a = imageview;
            super();
        }
    }


    private class _cls9
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            ComposeUI.f(a).getText().clear();
            ComposeUI.f(a).requestFocus();
        }

        private ComposeUI a;

        _cls9()
        {
            a = ComposeUI.this;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            class _cls1
                implements Runnable
            {

                public void run()
                {
                    ComposeUI.e(a.a).fullScroll(130);
                }

                private _cls10 a;

                _cls1()
                {
                    a = _cls10.this;
                    super();
                }
            }

            if(flag)
                ComposeUI.g(a).postDelayed(new _cls1(), 1000L);
        }

        final ComposeUI a;

        _cls10()
        {
            a = ComposeUI.this;
            super();
        }
    }

}
