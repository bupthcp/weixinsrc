// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.contact;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.MMActivity;
import junit.framework.Assert;

public class NormalUserFooterPreference extends Preference
    implements com.tencent.mm.storagebase.MStorage.IOnStorageChange
{

    public NormalUserFooterPreference(Context context)
    {
        super(context);
        e = false;
        f = false;
        g = false;
        G = (MMActivity)context;
        b();
    }

    public NormalUserFooterPreference(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        e = false;
        f = false;
        g = false;
        G = (MMActivity)context;
        b();
    }

    public NormalUserFooterPreference(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        e = false;
        f = false;
        g = false;
        G = (MMActivity)context;
        b();
    }

    static LinearLayout A(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.p;
    }

    static LinearLayout B(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.m;
    }

    static LinearLayout C(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.t;
    }

    static TextView D(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.k;
    }

    static Contact a(NormalUserFooterPreference normaluserfooterpreference, Contact contact)
    {
        normaluserfooterpreference.a = contact;
        return contact;
    }

    static BaseHandler a(NormalUserFooterPreference normaluserfooterpreference, BaseHandler basehandler)
    {
        normaluserfooterpreference.j = basehandler;
        return basehandler;
    }

    static boolean a(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.h;
    }

    static LinearLayout b(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.n;
    }

    private void b()
    {
        i = false;
        j = null;
    }

    static LinearLayout c(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.s;
    }

    private void c()
    {
        if(i && a != null) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.NormalUserFooterPreference", (new StringBuilder()).append("iniView : bindView = ").append(i).append(" contact = ").append(a).toString());
_L4:
        return;
_L2:
        if(j != null)
            j.e();
        if(true) goto _L4; else goto _L3
_L3:
    }

    static Contact d(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.a;
    }

    static LinearLayout e(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.u;
    }

    static LinearLayout f(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.q;
    }

    static LinearLayout g(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.r;
    }

    static LinearLayout h(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.o;
    }

    static Button i(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.D;
    }

    static LinearLayout j(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.v;
    }

    static MMActivity k(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.G;
    }

    static int l(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.c;
    }

    static boolean m(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.e;
    }

    static boolean n(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.b;
    }

    static int o(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.d;
    }

    static TextView p(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.l;
    }

    static LinearLayout q(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.C;
    }

    static Button r(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.E;
    }

    static LinearLayout s(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.B;
    }

    static LinearLayout t(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.A;
    }

    static View u(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.F;
    }

    static BaseHandler v(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.j;
    }

    static LinearLayout w(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.w;
    }

    static LinearLayout x(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.x;
    }

    static LinearLayout y(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.y;
    }

    static LinearLayout z(NormalUserFooterPreference normaluserfooterpreference)
    {
        return normaluserfooterpreference.z;
    }

    public final boolean a()
    {
        if(j != null)
            j.b();
        return true;
    }

    public final boolean a(Contact contact, boolean flag, boolean flag1, boolean flag2, int i1, int j1, boolean flag3, 
            boolean flag4)
    {
        boolean flag5;
        flag5 = false;
        a();
        boolean flag6;
        boolean flag7;
        if(contact != null)
            flag6 = true;
        else
            flag6 = flag5;
        Assert.assertTrue(flag6);
        if(Util.h(contact.s()).length() > 0)
            flag7 = true;
        else
            flag7 = flag5;
        Assert.assertTrue(flag7);
        if(!ContactStorageLogic.u(ConfigStorageLogic.b()).equals(contact.s())) goto _L2; else goto _L1
_L1:
        return flag5;
_L2:
        a = contact;
        b = flag;
        c = i1;
        d = j1;
        h = Util.a(Boolean.valueOf(ContactStorageLogic.c(contact.s())), flag5);
        e = flag3;
        f = flag4;
        g = flag1;
        if(!flag1 || !flag4 || contact.l())
            break; /* Loop/switch isn't completed */
        j = new VertifyCardHandler();
_L4:
        c();
        flag5 = true;
        if(true) goto _L1; else goto _L3
_L3:
        if(flag1)
            j = new VerifyHandler();
        else
        if(flag2)
            j = new NearByFriendHandler();
        else
        if(ConfigStorageLogic.a(contact.s()) || MMCore.f().m().d(contact.s()))
            j = new EmptyHandler();
        else
        if(ContactStorageLogic.p(contact.s()))
            j = new TContactHandler();
        else
        if(ContactStorageLogic.v(contact.s()))
            j = new OfficialHandler();
        else
        if(ContactStorageLogic.c(contact.s()))
            j = new RoomHandler();
        else
        if(ContactStorageLogic.q(contact.s()))
            j = new QrcodeHandler();
        else
            j = new NormalHandler();
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final void a_(String s1)
    {
        if(Util.h(s1).length() > 0 && a != null && s1.equals(a.s()))
            a = MMCore.f().h().c(a.s());
    }

    public void onBindView(View view)
    {
        k = (TextView)view.findViewById(0x7f0700e6);
        l = (TextView)view.findViewById(0x7f0700e4);
        w = (LinearLayout)view.findViewById(0x7f0700ce);
        x = (LinearLayout)view.findViewById(0x7f0700e3);
        y = (LinearLayout)view.findViewById(0x7f0700cf);
        z = (LinearLayout)view.findViewById(0x7f0700e2);
        m = (LinearLayout)view.findViewById(0x7f0700d2);
        n = (LinearLayout)view.findViewById(0x7f0700e5);
        o = (LinearLayout)view.findViewById(0x7f0700d4);
        p = (LinearLayout)view.findViewById(0x7f0700d0);
        q = (LinearLayout)view.findViewById(0x7f0700da);
        r = (LinearLayout)view.findViewById(0x7f0700dc);
        s = (LinearLayout)view.findViewById(0x7f0700d6);
        u = (LinearLayout)view.findViewById(0x7f0700d8);
        t = (LinearLayout)view.findViewById(0x7f0700de);
        v = (LinearLayout)view.findViewById(0x7f0700e0);
        C = (LinearLayout)view.findViewById(0x7f0700c7);
        D = (Button)view.findViewById(0x7f0700c8);
        E = (Button)view.findViewById(0x7f0700ca);
        A = (LinearLayout)view.findViewById(0x7f0700cd);
        B = (LinearLayout)view.findViewById(0x7f0700cb);
        F = view.findViewById(0x7f0700c9);
        i = true;
        c();
        super.onBindView(view);
    }

    private LinearLayout A;
    private LinearLayout B;
    private LinearLayout C;
    private Button D;
    private Button E;
    private View F;
    private MMActivity G;
    private Contact a;
    private boolean b;
    private int c;
    private int d;
    private boolean e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private BaseHandler j;
    private TextView k;
    private TextView l;
    private LinearLayout m;
    private LinearLayout n;
    private LinearLayout o;
    private LinearLayout p;
    private LinearLayout q;
    private LinearLayout r;
    private LinearLayout s;
    private LinearLayout t;
    private LinearLayout u;
    private LinearLayout v;
    private LinearLayout w;
    private LinearLayout x;
    private LinearLayout y;
    private LinearLayout z;

    private class BaseHandler
    {

        static void a(BaseHandler basehandler)
        {
            NormalUserFooterPreference.f(basehandler.c).setVisibility(8);
            NormalUserFooterPreference.g(basehandler.c).setVisibility(0);
            NormalUserFooterPreference.p(basehandler.c).setVisibility(0);
            if(!NormalUserFooterPreference.d(basehandler.c).l())
                ContactStorageLogic.b(NormalUserFooterPreference.d(basehandler.c));
            ContactStorageLogic.c(NormalUserFooterPreference.d(basehandler.c));
            MMCore.g().b(new NetSceneSync(5));
            basehandler.a();
        }

        static void b(BaseHandler basehandler)
        {
            NormalUserFooterPreference.f(basehandler.c).setVisibility(0);
            NormalUserFooterPreference.g(basehandler.c).setVisibility(8);
            NormalUserFooterPreference.p(basehandler.c).setVisibility(8);
            ContactStorageLogic.d(NormalUserFooterPreference.d(basehandler.c));
            MMCore.g().b(new NetSceneSync(5));
            basehandler.a();
        }

        static void c(BaseHandler basehandler)
        {
            class _cls9
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i1)
                {
                    int j1 = 1;
                    NormalUserFooterPreference.l(a.c);
                    JVM INSTR tableswitch 18 30: default 80
                //                               18 157
                //                               19 80
                //                               20 80
                //                               21 80
                //                               22 175
                //                               23 175
                //                               24 175
                //                               25 204
                //                               26 175
                //                               27 175
                //                               28 175
                //                               29 175
                //                               30 198;
                       goto _L1 _L2 _L1 _L1 _L1 _L3 _L3 _L3 _L4 _L3 _L3 _L3 _L3 _L5
_L1:
                    NetSceneExpose netsceneexpose = new NetSceneExpose(NormalUserFooterPreference.d(a.c).s(), j1);
                    MMCore.g().b(netsceneexpose);
                    MMAlert.a(NormalUserFooterPreference.k(a.c), NormalUserFooterPreference.k(a.c).getString(0x7f0a024a), NormalUserFooterPreference.k(a.c).getString(0x7f0a0016));
                    return;
_L2:
                    if(NormalUserFooterPreference.m(a.c))
                        j1 = 2;
                    continue; /* Loop/switch isn't completed */
_L3:
                    if(NormalUserFooterPreference.m(a.c))
                        j1 = 4;
                    else
                        j1 = 3;
                    continue; /* Loop/switch isn't completed */
_L5:
                    j1 = 7;
                    continue; /* Loop/switch isn't completed */
_L4:
                    if(NormalUserFooterPreference.m(a.c))
                        j1 = 6;
                    else
                        j1 = 5;
                    if(true) goto _L1; else goto _L6
_L6:
                }

                private BaseHandler a;

                _cls9()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            MMAlert.a(NormalUserFooterPreference.k(basehandler.c), NormalUserFooterPreference.k(basehandler.c).getString(0x7f0a0249), NormalUserFooterPreference.k(basehandler.c).getString(0x7f0a0010), basehandler. new _cls9(), null);
        }

        protected abstract void a();

        protected void b()
        {
        }

        protected final void e()
        {
            a();
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    if(NormalUserFooterPreference.a(a.c))
                    {
                        BaseHandler basehandler1 = a;
                        String s1 = NormalUserFooterPreference.d(basehandler1.c).s();
                        Intent intent1 = new Intent(basehandler1.c.getContext(), com/tencent/mm/ui/chatting/ChattingUI);
                        intent1.addFlags(0x4000000);
                        if(NormalUserFooterPreference.n(basehandler1.c))
                        {
                            intent1.putExtra("Chat_User", s1);
                            intent1.putExtra("Chat_Mode", 1);
                            ((Activity)basehandler1.c.getContext()).setResult(-1, intent1);
                        } else
                        {
                            intent1.putExtra("Chat_User", s1);
                            intent1.putExtra("Chat_Mode", 1);
                            basehandler1.c.getContext().startActivity(intent1);
                        }
                        ((Activity)basehandler1.c.getContext()).finish();
                    } else
                    {
                        BaseHandler basehandler = a;
                        Intent intent = new Intent(basehandler.c.getContext(), com/tencent/mm/ui/chatting/ChattingUI);
                        intent.addFlags(0x4000000);
                        if(NormalUserFooterPreference.n(basehandler.c))
                        {
                            intent.putExtra("Chat_User", NormalUserFooterPreference.d(basehandler.c).s());
                            intent.putExtra("Chat_Mode", 1);
                            ((Activity)basehandler.c.getContext()).setResult(-1, intent);
                        } else
                        {
                            intent.putExtra("Chat_User", NormalUserFooterPreference.d(basehandler.c).s());
                            intent.putExtra("Chat_Mode", 1);
                            basehandler.c.getContext().startActivity(intent);
                        }
                        ((Activity)basehandler.c.getContext()).finish();
                    }
                }

                private BaseHandler a;

                _cls1()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.b(c).setOnClickListener(new _cls1());
            class _cls2
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    BaseHandler basehandler = a;
                    NormalUserFooterPreference.a(basehandler.c, MMCore.f().h().c(NormalUserFooterPreference.d(basehandler.c).s()));
                    Intent intent = new Intent();
                    intent.setClass(basehandler.c.getContext(), com/tencent/mm/ui/contact/ModRemarkNameUI);
                    intent.putExtra("Contact_mode_name_type", 0);
                    intent.putExtra("Contact_User", NormalUserFooterPreference.d(basehandler.c).s());
                    ((Activity)basehandler.c.getContext()).startActivity(intent);
                }

                private BaseHandler a;

                _cls2()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.c(c).setOnClickListener(new _cls2());
            class _cls3
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    Context context = a.c.getContext();
                    class _cls1
                        implements android.content.DialogInterface.OnClickListener
                    {

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            BaseHandler basehandler = a.a;
                            String s5 = NormalUserFooterPreference.d(basehandler.c).s();
                            NormalUserFooterPreference.d(basehandler.c).g();
                            MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpAddContact(NormalUserFooterPreference.d(basehandler.c).s(), NormalUserFooterPreference.d(basehandler.c).t(), NormalUserFooterPreference.d(basehandler.c).w(), NormalUserFooterPreference.d(basehandler.c).x(), NormalUserFooterPreference.d(basehandler.c).p(), 63, NormalUserFooterPreference.d(basehandler.c).q(), NormalUserFooterPreference.d(basehandler.c).D(), NormalUserFooterPreference.d(basehandler.c).E(), NormalUserFooterPreference.d(basehandler.c).F(), NormalUserFooterPreference.d(basehandler.c).C(), NormalUserFooterPreference.d(basehandler.c).G(), NormalUserFooterPreference.d(basehandler.c).H(), NormalUserFooterPreference.d(basehandler.c).J(), NormalUserFooterPreference.d(basehandler.c).K(), NormalUserFooterPreference.d(basehandler.c).M(), NormalUserFooterPreference.d(basehandler.c).L(), NormalUserFooterPreference.d(basehandler.c).S(), NormalUserFooterPreference.d(basehandler.c).T()));
                            if(ContactStorageLogic.c(s5))
                            {
                                MMCore.f().h().f(s5);
                                MMCore.f().n().d(s5);
                            } else
                            {
                                MsgInfoStorageLogic.d(s5);
                                MMCore.f().h().a(s5, NormalUserFooterPreference.d(basehandler.c));
                                MMCore.f().j().a(s5);
                            }
                            MMCore.g().b(new NetSceneSync(5));
                            if(NormalUserFooterPreference.o(basehandler.c) == 0)
                            {
                                Intent intent = new Intent((Activity)basehandler.c.getContext(), com/tencent/mm/ui/MainTabUI);
                                intent.addFlags(0x4000000);
                                ((Activity)basehandler.c.getContext()).startActivity(intent);
                            } else
                            {
                                ((Activity)basehandler.c.getContext()).finish();
                            }
                        }

                        private _cls3 a;

                            _cls1()
                            {
                                a = _cls3.this;
                                super();
                            }
                    }

                    String s1;
                    String s2;
                    String s3;
                    String s4;
                    _cls1 _lcls1;
                    if(ContactStorageLogic.c(NormalUserFooterPreference.d(a.c).s()))
                    {
                        Context context2 = a.c.getContext();
                        Object aobj1[] = new Object[1];
                        aobj1[0] = NormalUserFooterPreference.d(a.c).A();
                        s1 = context2.getString(0x7f0a0247, aobj1);
                    } else
                    {
                        Context context1 = a.c.getContext();
                        Object aobj[] = new Object[1];
                        aobj[0] = NormalUserFooterPreference.d(a.c).A();
                        s1 = context1.getString(0x7f0a0246, aobj);
                    }
                    s2 = a.c.getContext().getString(0x7f0a0010);
                    s3 = a.c.getContext().getString(0x7f0a001f);
                    s4 = a.c.getContext().getString(0x7f0a0020);
                    _lcls1 = new _cls1();
                    if(!(context instanceof Activity) || !((Activity)context).isFinishing())
                    {
                        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
                        builder.setIcon(0x7f020129);
                        builder.setTitle(s2);
                        builder.setMessage(s1);
                        builder.setPositiveButton(s3, _lcls1);
                        builder.setNegativeButton(s4, null);
                        builder.create().show();
                    }
                }

                final BaseHandler a;

                _cls3()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.e(c).setOnClickListener(new _cls3());
            class _cls4
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    class _cls1
                        implements android.content.DialogInterface.OnClickListener
                    {

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            BaseHandler.a(a.a);
                        }

                        private _cls4 a;

                            _cls1()
                            {
                                a = _cls4.this;
                                super();
                            }
                    }

                    MMAlert.a(a.c.getContext(), a.c.getContext().getString(0x7f0a0237), a.c.getContext().getString(0x7f0a0236), new _cls1(), null);
                }

                final BaseHandler a;

                _cls4()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.f(c).setOnClickListener(new _cls4());
            class _cls5
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    BaseHandler.b(a);
                }

                private BaseHandler a;

                _cls5()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.g(c).setOnClickListener(new _cls5());
            class _cls6
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    BaseHandler basehandler = a;
                    Intent intent = new Intent(basehandler.c.getContext(), com/tencent/mm/ui/AddressUI);
                    intent.putExtra("Contact_GroupFilter_Type", "@micromsg.qq.com");
                    intent.putExtra("List_Type", 3);
                    intent.putExtra("be_send_card_name", NormalUserFooterPreference.d(basehandler.c).s());
                    intent.putExtra("Block_list", NormalUserFooterPreference.d(basehandler.c).s());
                    intent.putExtra("Add_SendCard", true);
                    basehandler.c.getContext().startActivity(intent);
                }

                private BaseHandler a;

                _cls6()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.h(c).setOnClickListener(new _cls6());
            class _cls7
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    BaseHandler.c(a);
                }

                private BaseHandler a;

                _cls7()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.i(c).setOnClickListener(new _cls7());
            class _cls8
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    BaseHandler.c(a);
                }

                private BaseHandler a;

                _cls8()
                {
                    a = BaseHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.j(c).setOnClickListener(new _cls8());
        }

        final NormalUserFooterPreference c;

        public BaseHandler()
        {
            c = NormalUserFooterPreference.this;
            super();
        }
    }


    private class VertifyCardHandler extends VertifyBaseHandler
        implements IOnSceneEnd
    {
        private class VertifyBaseHandler extends BaseHandler
            implements IOnSceneEnd
        {

            static void a(VertifyBaseHandler vertifybasehandler)
            {
                vertifybasehandler.f();
            }

            private void f()
            {
                MMCore.g().b(30, this);
            }

            protected void a()
            {
                b();
                f();
                MMCore.g().a(30, this);
            }

            public void a(int i1, int j1, String s1, NetSceneBase netscenebase)
            {
                int k1 = 0;
                if(netscenebase.b() == 30) goto _L2; else goto _L1
_L1:
                return;
_L2:
                f();
                if(a != null)
                {
                    a.dismiss();
                    a = null;
                }
                if(!Util.c(b.getContext())) goto _L4; else goto _L3
_L3:
                i1;
                JVM INSTR tableswitch 1 4: default 80
            //                           1 232
            //                           2 327
            //                           3 80
            //                           4 394;
                   goto _L5 _L6 _L7 _L5 _L8
_L5:
                if(k1 == 0 && i1 == 0 && j1 == 0)
                {
                    NormalUserFooterPreference normaluserfooterpreference = b;
                    Contact contact = MMCore.f().h().c(NormalUserFooterPreference.d(b).s());
                    if(contact == null || contact.o() == 0)
                    {
                        Contact contact1 = NormalUserFooterPreference.d(b);
                        contact1.a(-2L);
                        class _cls2
                            implements android.content.DialogInterface.OnClickListener
                        {

                            public void onClick(DialogInterface dialoginterface, int l1)
                            {
                                VertifyBaseHandler.a(a);
                                MMCore.e().a(1, null);
                                MMCore.r();
                                Intent intent = new Intent(a.b.getContext(), com/tencent/mm/ui/LauncherUI);
                                intent.putExtra("Intro_Switch", true).addFlags(0x4000000);
                                a.b.getContext().startActivity(intent);
                            }

                            private VertifyBaseHandler a;

                    _cls2()
                    {
                        a = VertifyBaseHandler.this;
                        super();
                    }
                        }

                        Context context;
                        Context context1;
                        Object aobj[];
                        if(MMCore.f().h().c(contact1) == -1)
                        {
                            Log.a("MicroMsg.NormalUserFooterPreference", (new StringBuilder()).append("insert contact failed, username = ").append(contact1.s()).toString());
                            contact = null;
                        } else
                        {
                            contact = MMCore.f().h().c(NormalUserFooterPreference.d(b).s());
                        }
                    }
                    NormalUserFooterPreference.a(normaluserfooterpreference, contact);
                    if(NormalUserFooterPreference.d(b) != null)
                        ContactStorageLogic.e(NormalUserFooterPreference.d(b));
                    c();
                }
_L4:
                if(true) goto _L1; else goto _L6
_L6:
                if(MMCore.q() != null && !MMCore.q().f())
                {
                    MMAppMgr.a((Activity)b.getContext(), MMCore.q().a(), (new StringBuilder()).append("").append(j1).toString());
                    k1 = 1;
                } else
                if(NetService.b(b.getContext()))
                {
                    MMAppMgr.a((Activity)b.getContext());
                    k1 = 1;
                }
                  goto _L5
_L7:
                context = b.getContext();
                context1 = b.getContext();
                aobj = new Object[2];
                aobj[k1] = Integer.valueOf(2);
                aobj[1] = Integer.valueOf(j1);
                Toast.makeText(context, context1.getString(0x7f0a007a, aobj), 3000).show();
                k1 = 1;
                  goto _L5
_L8:
                if(j1 == -100)
                {
                    MMAlert.a(b.getContext(), 0x7f0a012c, 0x7f0a0010, new _cls2());
                    k1 = 1;
                } else
                {
                    Toast.makeText(b.getContext(), b.getContext().getString(0x7f0a031f), 3000).show();
                }
                  goto _L5
            }

            protected void b()
            {
                if(a != null)
                {
                    a.dismiss();
                    a = null;
                }
                NormalUserFooterPreference.q(b).setVisibility(8);
                NormalUserFooterPreference.i(b).setVisibility(8);
                NormalUserFooterPreference.r(b).setVisibility(8);
                NormalUserFooterPreference.s(b).setVisibility(8);
                NormalUserFooterPreference.b(b).setVisibility(0);
                NormalUserFooterPreference.t(b).setVisibility(0);
                NormalUserFooterPreference.u(b).setVisibility(8);
                NormalUserFooterPreference.p(b).setVisibility(8);
                f();
            }

            protected void c()
            {
                if(NormalUserFooterPreference.v(b) != null)
                    NormalUserFooterPreference.v(b).b();
                NormalUserFooterPreference.a(b, b. new NormalHandler());
                NormalUserFooterPreference.v(b).e();
            }

            protected final void d()
            {
                class _cls1
                    implements android.content.DialogInterface.OnCancelListener
                {

                    public void onCancel(DialogInterface dialoginterface)
                    {
                        VertifyBaseHandler.a(a);
                    }

                    private VertifyBaseHandler a;

                    _cls1()
                    {
                        a = VertifyBaseHandler.this;
                        super();
                    }
                }

                a = MMAlert.a(b.getContext(), b.getContext().getString(0x7f0a0010), b.getContext().getString(0x7f0a0267), true, new _cls1());
                LinkedList linkedlist = new LinkedList();
                linkedlist.add(NormalUserFooterPreference.d(b).s());
                LinkedList linkedlist1 = new LinkedList();
                linkedlist1.add(Integer.valueOf(NormalUserFooterPreference.l(b)));
                MMCore.g().b(new NetSceneVerifyUser(3, linkedlist, linkedlist1, ""));
            }

            private ProgressDialog a;
            final NormalUserFooterPreference b;

            public VertifyBaseHandler()
            {
                b = NormalUserFooterPreference.this;
                super();
            }
        }


        protected final void a()
        {
            super.a();
            NormalUserFooterPreference.q(a).setVisibility(0);
            NormalUserFooterPreference.i(a).setVisibility(8);
            NormalUserFooterPreference.r(a).setVisibility(0);
            NormalUserFooterPreference.s(a).setVisibility(0);
            NormalUserFooterPreference.b(a).setVisibility(8);
            NormalUserFooterPreference.t(a).setVisibility(8);
            NormalUserFooterPreference.u(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.l(a);
            JVM INSTR tableswitch 18 30: default 172
        //                       18 244
        //                       19 172
        //                       20 172
        //                       21 172
        //                       22 244
        //                       23 244
        //                       24 244
        //                       25 244
        //                       26 244
        //                       27 244
        //                       28 244
        //                       29 244
        //                       30 244;
               goto _L1 _L2 _L1 _L1 _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2
_L1:
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    a.d();
                }

                private VertifyCardHandler a;

                _cls1()
                {
                    a = VertifyCardHandler.this;
                    super();
                }
            }

            class _cls2
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    class _cls1
                        implements android.content.DialogInterface.OnClickListener
                    {

                        public void onClick(DialogInterface dialoginterface, int i1)
                        {
                            if(!NormalUserFooterPreference.d(a.a.a).l())
                                ContactStorageLogic.b(NormalUserFooterPreference.d(a.a.a));
                            ContactStorageLogic.c(NormalUserFooterPreference.d(a.a.a));
                            MMCore.g().b(new NetSceneSync(5));
                            a.a.a();
                        }

                        private _cls2 a;

                            _cls1()
                            {
                                a = _cls2.this;
                                super();
                            }
                    }

                    if(NormalUserFooterPreference.d(a.a).m())
                    {
                        ContactStorageLogic.d(NormalUserFooterPreference.d(a.a));
                        MMCore.g().b(new NetSceneSync(5));
                        a.a();
                    } else
                    {
                        MMAlert.a(a.a.getContext(), a.a.getContext().getString(0x7f0a0237), a.a.getContext().getString(0x7f0a0236), new _cls1(), null);
                    }
                }

                final VertifyCardHandler a;

                _cls2()
                {
                    a = VertifyCardHandler.this;
                    super();
                }
            }

            if(NormalUserFooterPreference.d(a).m())
                NormalUserFooterPreference.r(a).setText(NormalUserFooterPreference.k(a).getString(0x7f0a0239));
            else
                NormalUserFooterPreference.r(a).setText(NormalUserFooterPreference.k(a).getString(0x7f0a0236));
            NormalUserFooterPreference.s(a).setOnClickListener(new _cls1());
            NormalUserFooterPreference.r(a).setOnClickListener(new _cls2());
            return;
_L2:
            NormalUserFooterPreference.i(a).setVisibility(0);
            NormalUserFooterPreference.u(a).setVisibility(0);
              goto _L1
        }

        public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
        {
            super.a(i1, j1, s1, netscenebase);
        }

        protected final void b()
        {
            super.b();
        }

        protected final void c()
        {
            super.c();
        }

        final NormalUserFooterPreference a;

        public VertifyCardHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class VerifyHandler extends VertifyBaseHandler
        implements IOnSceneEnd
    {

        protected final void a()
        {
            super.a();
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(8);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(0);
            NormalUserFooterPreference.j(a).setVisibility(0);
            NormalUserFooterPreference.A(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.j(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
            NormalUserFooterPreference.f(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020205));
            NormalUserFooterPreference.g(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020205));
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    a.d();
                }

                private VerifyHandler a;

                _cls1()
                {
                    a = VerifyHandler.this;
                    super();
                }
            }

            if(NormalUserFooterPreference.d(a).m())
            {
                NormalUserFooterPreference.f(a).setVisibility(8);
                NormalUserFooterPreference.g(a).setVisibility(0);
                NormalUserFooterPreference.p(a).setVisibility(0);
            } else
            {
                NormalUserFooterPreference.f(a).setVisibility(0);
                NormalUserFooterPreference.g(a).setVisibility(8);
                NormalUserFooterPreference.p(a).setVisibility(8);
            }
            NormalUserFooterPreference.c(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020205));
            NormalUserFooterPreference.c(a).setVisibility(8);
            NormalUserFooterPreference.w(a).setVisibility(8);
            NormalUserFooterPreference.x(a).setVisibility(8);
            NormalUserFooterPreference.y(a).setVisibility(0);
            NormalUserFooterPreference.z(a).setVisibility(0);
            NormalUserFooterPreference.A(a).setOnClickListener(new _cls1());
        }

        public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
        {
            super.a(i1, j1, s1, netscenebase);
        }

        protected final void b()
        {
            super.b();
        }

        private NormalUserFooterPreference a;

        public VerifyHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class NearByFriendHandler extends BaseHandler
    {

        protected final void a()
        {
            NormalUserFooterPreference.w(a).setVisibility(0);
            NormalUserFooterPreference.x(a).setVisibility(0);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(8);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.c(a).setVisibility(8);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(0);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(0);
            NormalUserFooterPreference.C(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.j(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    Intent intent = new Intent(NormalUserFooterPreference.k(a.a), com/tencent/mm/ui/nearbyfriends/SayHiEditUI);
                    intent.putExtra("Contact_User", NormalUserFooterPreference.d(a.a).s());
                    intent.putExtra("Contact_Scene", NormalUserFooterPreference.l(a.a));
                    NormalUserFooterPreference.k(a.a).startActivity(intent);
                }

                private NearByFriendHandler a;

                _cls1()
                {
                    a = NearByFriendHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.C(a).setOnClickListener(new _cls1());
        }

        final NormalUserFooterPreference a;

        public NearByFriendHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class EmptyHandler extends BaseHandler
    {

        protected final void a()
        {
            boolean flag;
            if(ConfigStorageLogic.a(NormalUserFooterPreference.d(a).s()) || MMCore.f().m().d(NormalUserFooterPreference.d(a).s()))
                flag = true;
            else
                flag = false;
            Assert.assertTrue(flag);
            NormalUserFooterPreference.w(a).setVisibility(8);
            NormalUserFooterPreference.x(a).setVisibility(8);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(8);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.c(a).setVisibility(8);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
        }

        private NormalUserFooterPreference a;

        public EmptyHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class TContactHandler extends BaseHandler
    {

        protected final void a()
        {
            NormalUserFooterPreference.w(a).setVisibility(0);
            NormalUserFooterPreference.x(a).setVisibility(0);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(0);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.c(a).setVisibility(0);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
            NormalUserFooterPreference.D(a).setText(0x7f0a027a);
            NormalUserFooterPreference.c(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020202));
        }

        private NormalUserFooterPreference a;

        public TContactHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class OfficialHandler extends BaseHandler
    {

        protected final void a()
        {
            Assert.assertTrue(ContactStorageLogic.v(NormalUserFooterPreference.d(a).s()));
            NormalUserFooterPreference.w(a).setVisibility(0);
            NormalUserFooterPreference.x(a).setVisibility(0);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(0);
            NormalUserFooterPreference.h(a).setVisibility(0);
            NormalUserFooterPreference.c(a).setVisibility(0);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
            NormalUserFooterPreference.h(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.c(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
        }

        private NormalUserFooterPreference a;

        public OfficialHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class RoomHandler extends BaseHandler
    {

        protected final void a()
        {
            boolean flag = true;
            boolean flag1;
            if(!ConfigStorageLogic.a(NormalUserFooterPreference.d(a).s()))
                flag1 = flag;
            else
                flag1 = false;
            Assert.assertTrue(flag1);
            if(ContactStorageLogic.E(NormalUserFooterPreference.d(a).s()))
                flag = false;
            Assert.assertTrue(flag);
            NormalUserFooterPreference.B(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.e(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
            NormalUserFooterPreference.D(a).setText(0x7f0a023b);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(0);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.c(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.c(a).setVisibility(8);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.w(a).setVisibility(8);
            NormalUserFooterPreference.x(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
        }

        private NormalUserFooterPreference a;

        public RoomHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class QrcodeHandler extends BaseHandler
    {

        protected final void a()
        {
            NormalUserFooterPreference.w(a).setVisibility(0);
            NormalUserFooterPreference.x(a).setVisibility(0);
            NormalUserFooterPreference.y(a).setVisibility(8);
            NormalUserFooterPreference.z(a).setVisibility(8);
            NormalUserFooterPreference.B(a).setVisibility(8);
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.b(a).setVisibility(8);
            NormalUserFooterPreference.h(a).setVisibility(8);
            NormalUserFooterPreference.c(a).setVisibility(8);
            NormalUserFooterPreference.f(a).setVisibility(8);
            NormalUserFooterPreference.g(a).setVisibility(8);
            NormalUserFooterPreference.p(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(0);
            NormalUserFooterPreference.e(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    Intent intent = new Intent(NormalUserFooterPreference.k(a.a), com/tencent/mm/ui/nearbyfriends/SayHiEditUI);
                    intent.putExtra("Contact_User", NormalUserFooterPreference.d(a.a).s());
                    intent.putExtra("Contact_Scene", NormalUserFooterPreference.l(a.a));
                    NormalUserFooterPreference.k(a.a).startActivity(intent);
                }

                private QrcodeHandler a;

                _cls1()
                {
                    a = QrcodeHandler.this;
                    super();
                }
            }

            NormalUserFooterPreference.C(a).setOnClickListener(new _cls1());
        }

        final NormalUserFooterPreference a;

        public QrcodeHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }


    private class NormalHandler extends BaseHandler
    {

        static void a(NormalHandler normalhandler)
        {
            if(NormalUserFooterPreference.d(normalhandler.a).o() == 0)
            {
                NormalUserFooterPreference.d(normalhandler.a).a(-2L);
                if(MMCore.f().h().c(NormalUserFooterPreference.d(normalhandler.a)) != -1)
                    NormalUserFooterPreference.a(normalhandler.a, MMCore.f().h().c(NormalUserFooterPreference.d(normalhandler.a).s()));
            }
            class _cls2
                implements com.tencent.mm.ui.AddContact.IOnAddContact
            {

                public final void a(boolean flag)
                {
                    if(flag)
                        NormalHandler.b(a);
                }

                private NormalHandler a;

                _cls2()
                {
                    a = NormalHandler.this;
                    super();
                }
            }

            AddContact addcontact = new AddContact(normalhandler.a.getContext(), normalhandler. new _cls2());
            LinkedList linkedlist = new LinkedList();
            linkedlist.add(Integer.valueOf(NormalUserFooterPreference.l(normalhandler.a)));
            addcontact.a(NormalUserFooterPreference.d(normalhandler.a).s(), linkedlist);
        }

        static void b(NormalHandler normalhandler)
        {
            if(NormalUserFooterPreference.d(normalhandler.a).o() == 0)
                NormalUserFooterPreference.d(normalhandler.a).b(MMCore.f().h().c(NormalUserFooterPreference.d(normalhandler.a)));
            if(NormalUserFooterPreference.d(normalhandler.a).o() <= 0)
            {
                Log.a("MicroMsg.NormalUserFooterPreference", "addContact : insert contact failed");
            } else
            {
                ContactStorageLogic.e(NormalUserFooterPreference.d(normalhandler.a));
                NormalUserFooterPreference.a(normalhandler.a, MMCore.f().h().c(NormalUserFooterPreference.d(normalhandler.a).s()));
                normalhandler.a();
            }
        }

        protected final void a()
        {
            int i1 = 1;
            class _cls1
                implements android.view.View.OnClickListener
            {

                public void onClick(View view)
                {
                    NormalHandler.a(a);
                }

                private NormalHandler a;

                _cls1()
                {
                    a = NormalHandler.this;
                    super();
                }
            }

            boolean flag;
            boolean flag1;
            int j1;
            int k1;
            int l1;
            int i2;
            if(!ConfigStorageLogic.a(NormalUserFooterPreference.d(a).s()))
                flag = i1;
            else
                flag = false;
            Assert.assertTrue(flag);
            if(!ContactStorageLogic.E(NormalUserFooterPreference.d(a).s()))
                flag1 = i1;
            else
                flag1 = false;
            Assert.assertTrue(flag1);
            NormalUserFooterPreference.B(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.h(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020225));
            NormalUserFooterPreference.e(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020205));
            NormalUserFooterPreference.B(a).setOnClickListener(new _cls1());
            if(!NormalUserFooterPreference.d(a).l())
            {
                NormalUserFooterPreference.B(a).setVisibility(0);
                NormalUserFooterPreference.b(a).setVisibility(8);
                NormalUserFooterPreference.h(a).setVisibility(8);
                NormalUserFooterPreference.e(a).setVisibility(8);
                j1 = i1;
            } else
            {
                NormalUserFooterPreference.B(a).setVisibility(8);
                NormalUserFooterPreference.b(a).setVisibility(0);
                NormalUserFooterPreference.h(a).setVisibility(0);
                NormalUserFooterPreference.e(a).setVisibility(0);
                j1 = 2;
            }
            k1 = j1 + 0;
            NormalUserFooterPreference.c(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020205));
            if(!NormalUserFooterPreference.d(a).l())
            {
                NormalUserFooterPreference.c(a).setVisibility(8);
                i1 = 0;
            } else
            {
                NormalUserFooterPreference.c(a).setVisibility(0);
            }
            l1 = k1 + i1;
            NormalUserFooterPreference.f(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
            NormalUserFooterPreference.g(a).setBackgroundDrawable(NormalUserFooterPreference.k(a).a(0x7f020228));
            if(NormalUserFooterPreference.d(a).m())
            {
                NormalUserFooterPreference.f(a).setVisibility(8);
                NormalUserFooterPreference.p(a).setVisibility(0);
                NormalUserFooterPreference.g(a).setVisibility(0);
            } else
            {
                NormalUserFooterPreference.p(a).setVisibility(8);
                NormalUserFooterPreference.f(a).setVisibility(0);
                NormalUserFooterPreference.g(a).setVisibility(8);
            }
            i2 = l1 + 1;
            NormalUserFooterPreference.A(a).setVisibility(8);
            NormalUserFooterPreference.C(a).setVisibility(8);
            NormalUserFooterPreference.j(a).setVisibility(8);
            if(i2 < 3)
            {
                NormalUserFooterPreference.w(a).setVisibility(0);
                NormalUserFooterPreference.x(a).setVisibility(0);
                NormalUserFooterPreference.y(a).setVisibility(8);
                NormalUserFooterPreference.z(a).setVisibility(8);
            } else
            if(i2 == 3)
            {
                NormalUserFooterPreference.w(a).setVisibility(8);
                NormalUserFooterPreference.x(a).setVisibility(8);
                NormalUserFooterPreference.y(a).setVisibility(0);
                NormalUserFooterPreference.z(a).setVisibility(0);
            } else
            {
                NormalUserFooterPreference.y(a).setVisibility(8);
                NormalUserFooterPreference.z(a).setVisibility(8);
                NormalUserFooterPreference.w(a).setVisibility(8);
                NormalUserFooterPreference.x(a).setVisibility(8);
            }
        }

        private NormalUserFooterPreference a;

        public NormalHandler()
        {
            a = NormalUserFooterPreference.this;
            super();
        }
    }

}
