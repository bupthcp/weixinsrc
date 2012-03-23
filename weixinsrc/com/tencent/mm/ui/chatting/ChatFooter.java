// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Handler;
import android.text.*;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.*;
import b.a.e;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMEditText;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            SmileyPanel, SpanUtil

public class ChatFooter extends LinearLayout
{

    public ChatFooter(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = null;
        b = null;
        c = null;
        d = null;
        L = true;
        M = false;
        N = false;
        Q = false;
        x = (MMActivity)context;
    }

    static OnSendCustomEmojiListener A(ChatFooter chatfooter)
    {
        return chatfooter.t;
    }

    static OnArtSmileySelectListener B(ChatFooter chatfooter)
    {
        return chatfooter.r;
    }

    static OnAddCustomEmojiListener C(ChatFooter chatfooter)
    {
        return chatfooter.u;
    }

    static TextView D(ChatFooter chatfooter)
    {
        return chatfooter.d;
    }

    static int a(ChatFooter chatfooter, int i1)
    {
        chatfooter.O = i1;
        return i1;
    }

    static Button a(ChatFooter chatfooter)
    {
        return chatfooter.c;
    }

    static boolean a(ChatFooter chatfooter, boolean flag)
    {
        chatfooter.M = flag;
        return flag;
    }

    static SmileyPanel b(ChatFooter chatfooter)
    {
        return chatfooter.j;
    }

    static boolean b(ChatFooter chatfooter, boolean flag)
    {
        chatfooter.Q = flag;
        return flag;
    }

    static View c(ChatFooter chatfooter)
    {
        return chatfooter.k;
    }

    static boolean c(ChatFooter chatfooter, boolean flag)
    {
        chatfooter.N = flag;
        return flag;
    }

    static OnChooseListener d(ChatFooter chatfooter)
    {
        return chatfooter.n;
    }

    static OnSendCardRequest e(ChatFooter chatfooter)
    {
        return chatfooter.w;
    }

    static int f(ChatFooter chatfooter)
    {
        return chatfooter.D;
    }

    static Button g(ChatFooter chatfooter)
    {
        return chatfooter.e;
    }

    static MMActivity h(ChatFooter chatfooter)
    {
        return chatfooter.x;
    }

    static PopupWindow i(ChatFooter chatfooter)
    {
        return chatfooter.y;
    }

    static View j(ChatFooter chatfooter)
    {
        return chatfooter.H;
    }

    static boolean k(ChatFooter chatfooter)
    {
        return chatfooter.M;
    }

    static boolean l(ChatFooter chatfooter)
    {
        return chatfooter.N;
    }

    static OnVoiceRcdStartRequest m(ChatFooter chatfooter)
    {
        return chatfooter.p;
    }

    static int n(ChatFooter chatfooter)
    {
        return chatfooter.O;
    }

    static ImageView o(ChatFooter chatfooter)
    {
        return chatfooter.F;
    }

    static boolean p(ChatFooter chatfooter)
    {
        return chatfooter.Q;
    }

    static ScaleAnimation q(ChatFooter chatfooter)
    {
        return chatfooter.P;
    }

    static ImageView r(ChatFooter chatfooter)
    {
        return chatfooter.G;
    }

    static TextView s(ChatFooter chatfooter)
    {
        return chatfooter.I;
    }

    static OnVoiceRcdCancelRequest t(ChatFooter chatfooter)
    {
        return chatfooter.q;
    }

    static OnVoiceRcdStopRequest u(ChatFooter chatfooter)
    {
        return chatfooter.o;
    }

    static LinearLayout v(ChatFooter chatfooter)
    {
        return chatfooter.g;
    }

    static MMEditText w(ChatFooter chatfooter)
    {
        return chatfooter.b;
    }

    static ImageButton x(ChatFooter chatfooter)
    {
        return chatfooter.f;
    }

    static int y(ChatFooter chatfooter)
    {
        chatfooter.D = 1;
        return 1;
    }

    static SmileyGrid.OnSmileyLongClickListener z(ChatFooter chatfooter)
    {
        return chatfooter.v;
    }

    public final void a()
    {
        j.a();
    }

    public final void a(int i1)
    {
        int j1 = b.a.e.a(x, 50F);
        int k1;
        if(i1 + j1 < K)
            k1 = -1;
        else
            k1 = j1 + (i1 - K) / 2;
        if(k1 != -1)
        {
            B.setVisibility(8);
            A.setVisibility(8);
            z.setVisibility(0);
            y.showAtLocation(this, 49, 0, k1);
        }
    }

    public final void a(TextWatcher textwatcher)
    {
        b.addTextChangedListener(new _cls14(textwatcher));
    }

    public final void a(android.view.View.OnCreateContextMenuListener oncreatecontextmenulistener)
    {
        if(J != null)
            J.setOnCreateContextMenuListener(oncreatecontextmenulistener);
    }

    public final void a(android.view.View.OnFocusChangeListener onfocuschangelistener)
    {
        b.setOnFocusChangeListener(new _cls15(onfocuschangelistener));
    }

    public final void a(View view)
    {
        k = view;
        l();
        MMActivity mmactivity = x;
        K = b.a.e.a(mmactivity, 180F);
        C = (InputMethodManager)mmactivity.getSystemService("input_method");
        y = new PopupWindow(((LayoutInflater)mmactivity.getSystemService("layout_inflater")).inflate(0x7f030102, null), -1, -2);
        E = (ImageView)y.getContentView().findViewById(0x7f0702bf);
        H = y.getContentView().findViewById(0x7f0702c1);
        F = (ImageView)y.getContentView().findViewById(0x7f0702c0);
        I = (TextView)y.getContentView().findViewById(0x7f0702c2);
        G = (ImageView)y.getContentView().findViewById(0x7f0702c3);
        z = y.getContentView().findViewById(0x7f0702c4);
        A = y.getContentView().findViewById(0x7f0702bd);
        B = y.getContentView().findViewById(0x7f0702c6);
        a = inflate(mmactivity, 0x7f030027, this);
        g = (LinearLayout)a.findViewById(0x7f070098);
        b = (MMEditText)a.findViewById(0x7f070099);
        c = (Button)a.findViewById(0x7f07009b);
        e = (Button)a.findViewById(0x7f07009c);
        f = (ImageButton)findViewById(0x7f070096);
        b.setOnEditorActionListener(new _cls1());
        b.setOnTouchListener(new _cls2());
        boolean flag;
        if(e != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        P = new ScaleAnimation(1F, 1.2F, 1F, 1.2F, 1, 0.5F, 1, 0.5F);
        P.setDuration(150L);
        P.setRepeatCount(0);
        e.setOnTouchListener(new _cls8());
        e.setOnKeyListener(new _cls9());
        f.setOnClickListener(new _cls7());
        j = (SmileyPanel)findViewById(0x7f07009d);
        k.findViewById(0x7f070199).setOnClickListener(new _cls10());
        j.a(new _cls11());
        j.a(new _cls12());
        h = (Button)k.findViewById(0x7f07019b);
        h.setOnClickListener(new _cls5());
        J = (Button)k.findViewById(0x7f07019a);
        J.setOnClickListener(new _cls4());
        i = (Button)k.findViewById(0x7f07019c);
        i.setOnClickListener(new _cls6());
        a.findViewById(0x7f070097).setOnClickListener(new _cls3());
        c(1);
    }

    public final void a(OnAddCustomEmojiListener onaddcustomemojilistener)
    {
        u = onaddcustomemojilistener;
    }

    public final void a(OnArtSmileySelectListener onartsmileyselectlistener)
    {
        r = onartsmileyselectlistener;
    }

    public final void a(OnChooseListener onchooselistener)
    {
        n = onchooselistener;
    }

    public final void a(OnSelectImageListener onselectimagelistener)
    {
        l = onselectimagelistener;
    }

    public final void a(OnSendCardRequest onsendcardrequest)
    {
        w = onsendcardrequest;
    }

    public final void a(OnSendCustomEmojiListener onsendcustomemojilistener)
    {
        t = onsendcustomemojilistener;
    }

    public final void a(OnSendRequest onsendrequest)
    {
        c.setOnClickListener(new _cls16(onsendrequest));
    }

    public final void a(OnVideoRequest onvideorequest)
    {
        s = onvideorequest;
    }

    public final void a(OnVoiceRcdCancelRequest onvoicercdcancelrequest)
    {
        q = onvoicercdcancelrequest;
    }

    public final void a(OnVoiceRcdStartRequest onvoicercdstartrequest)
    {
        p = onvoicercdstartrequest;
    }

    public final void a(OnVoiceRcdStopRequest onvoicercdstoprequest)
    {
        o = onvoicercdstoprequest;
    }

    public final void a(SmileyGrid.OnSmileyLongClickListener onsmileylongclicklistener)
    {
        v = onsmileylongclicklistener;
    }

    public final void a(String s1)
    {
        if(s1 != null && s1.length() > 0 && b != null)
        {
            b.setText(s1);
            android.text.SpannableString spannablestring = SpanUtil.b(b);
            b.setText(spannablestring);
            b.setSelection(b.getText().length());
        }
    }

    public final void a(boolean flag)
    {
        L = flag;
    }

    public final void b()
    {
        e.setEnabled(false);
        e.setBackgroundDrawable(x.a(0x7f0202f9));
        B.setVisibility(0);
        A.setVisibility(8);
        z.setVisibility(8);
        y.update();
        R.sendEmptyMessageDelayed(0, 500L);
    }

    public final void b(int i1)
    {
        int j1 = 0;
        do
        {
label0:
            {
                if(j1 < T.length)
                {
                    if(i1 < S[j1] || i1 >= S[j1 + 1])
                        break label0;
                    E.setBackgroundDrawable(x.a(T[j1]));
                }
                if(i1 == -1 && y != null)
                {
                    y.dismiss();
                    z.setVisibility(0);
                    A.setVisibility(8);
                    B.setVisibility(8);
                }
                return;
            }
            j1++;
        } while(true);
    }

    public final void b(android.view.View.OnCreateContextMenuListener oncreatecontextmenulistener)
    {
        if(h != null)
            h.setOnCreateContextMenuListener(oncreatecontextmenulistener);
    }

    public final void b(OnSelectImageListener onselectimagelistener)
    {
        m = onselectimagelistener;
    }

    public final String c()
    {
        String s1;
        if(b == null)
            s1 = "";
        else
            s1 = b.getText().toString();
        return s1;
    }

    public final void c(int i1)
    {
        D = i1;
        i1;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 111
    //                   1 34;
           goto _L1 _L2 _L3
_L1:
        setVisibility(0);
_L5:
        return;
_L3:
        g.setVisibility(0);
        e.setVisibility(8);
        b.requestFocus();
        f.setImageResource(0x7f0200cf);
        b.requestFocus();
        j.setVisibility(8);
        C.showSoftInput(b, 0);
        k.setVisibility(8);
        continue; /* Loop/switch isn't completed */
_L2:
        g.setVisibility(8);
        e.setVisibility(0);
        f.setImageResource(0x7f0200d3);
        j.setVisibility(8);
        C.hideSoftInputFromWindow(b.getWindowToken(), 2);
        k.setVisibility(8);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public final void d()
    {
        z.setVisibility(8);
        A.setVisibility(0);
    }

    public final void e()
    {
        if(y != null)
        {
            y.dismiss();
            A.setVisibility(0);
            z.setVisibility(8);
            B.setVisibility(8);
            H.setVisibility(8);
            F.setVisibility(0);
        }
        e.setBackgroundDrawable(x.a(0x7f0202fa));
        e.setText(0x7f0a0171);
        N = false;
        M = false;
    }

    public final boolean f()
    {
        return L;
    }

    public final void g()
    {
        g.setVisibility(0);
        f.setVisibility(8);
        e.setVisibility(8);
        b.requestFocus();
    }

    public final void h()
    {
        h.setVisibility(8);
        J.setBackgroundResource(0x7f0202cc);
    }

    public final void i()
    {
        i.setVisibility(8);
    }

    public final int j()
    {
        return D;
    }

    public final void k()
    {
        j.a(3);
    }

    public final void l()
    {
        k.setVisibility(8);
    }

    public final boolean m()
    {
        boolean flag;
        if(k.getVisibility() == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void n()
    {
        j.setVisibility(8);
    }

    public final boolean o()
    {
        boolean flag;
        if(j.getVisibility() == 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if(j != null)
            j.onConfigurationChanged(configuration);
    }

    public final void p()
    {
        d = (TextView)a.findViewById(0x7f07009a);
        MMEditText mmedittext = b;
        InputFilter ainputfilter[] = new InputFilter[1];
        ainputfilter[0] = new android.text.InputFilter.LengthFilter(140);
        mmedittext.setFilters(ainputfilter);
    }

    public final void q()
    {
        if(m != null)
            m.a();
    }

    public final void r()
    {
        if(l != null)
            l.a();
    }

    private static final int S[];
    private static final int T[];
    private View A;
    private View B;
    private InputMethodManager C;
    private int D;
    private ImageView E;
    private ImageView F;
    private ImageView G;
    private View H;
    private TextView I;
    private Button J;
    private int K;
    private boolean L;
    private boolean M;
    private boolean N;
    private int O;
    private ScaleAnimation P;
    private boolean Q;
    private final Handler R = new _cls13();
    private View a;
    private MMEditText b;
    private Button c;
    private TextView d;
    private Button e;
    private ImageButton f;
    private LinearLayout g;
    private Button h;
    private Button i;
    private SmileyPanel j;
    private View k;
    private OnSelectImageListener l;
    private OnSelectImageListener m;
    private OnChooseListener n;
    private OnVoiceRcdStopRequest o;
    private OnVoiceRcdStartRequest p;
    private OnVoiceRcdCancelRequest q;
    private OnArtSmileySelectListener r;
    private OnVideoRequest s;
    private OnSendCustomEmojiListener t;
    private OnAddCustomEmojiListener u;
    private SmileyGrid.OnSmileyLongClickListener v;
    private OnSendCardRequest w;
    private final MMActivity x;
    private PopupWindow y;
    private View z;

    static 
    {
        int ai[] = new int[8];
        ai[0] = 0;
        ai[1] = 15;
        ai[2] = 30;
        ai[3] = 45;
        ai[4] = 60;
        ai[5] = 75;
        ai[6] = 90;
        ai[7] = 100;
        S = ai;
        int ai1[] = new int[7];
        ai1[0] = 0x7f020000;
        ai1[1] = 0x7f020001;
        ai1[2] = 0x7f020002;
        ai1[3] = 0x7f020003;
        ai1[4] = 0x7f020004;
        ai1[5] = 0x7f020005;
        ai1[6] = 0x7f020006;
        T = ai1;
    }

    private class _cls13 extends Handler
    {

        public void handleMessage(Message message)
        {
            super.handleMessage(message);
            ChatFooter.i(a).dismiss();
            ChatFooter.g(a).setBackgroundDrawable(ChatFooter.h(a).a(0x7f0202fa));
            ChatFooter.g(a).setEnabled(true);
        }

        private ChatFooter a;

        _cls13()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls14
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
            a.afterTextChanged(editable);
            if(ChatFooter.D(b) != null)
                if(ChatFooter.w(b).getLineCount() > 1)
                {
                    ChatFooter.D(b).setVisibility(0);
                    ChatFooter.D(b).setText((new StringBuilder()).append("").append(editable.length()).append("/140").toString());
                } else
                {
                    ChatFooter.D(b).setVisibility(8);
                }
        }

        public void beforeTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
            a.beforeTextChanged(charsequence, i1, j1, k1);
        }

        public void onTextChanged(CharSequence charsequence, int i1, int j1, int k1)
        {
            a.onTextChanged(charsequence, i1, j1, k1);
        }

        private TextWatcher a;
        private ChatFooter b;

        _cls14(TextWatcher textwatcher)
        {
            b = ChatFooter.this;
            a = textwatcher;
            super();
        }
    }


    private class _cls15
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            a.onFocusChange(view, flag);
        }

        private android.view.View.OnFocusChangeListener a;
        private ChatFooter b;

        _cls15(android.view.View.OnFocusChangeListener onfocuschangelistener)
        {
            b = ChatFooter.this;
            a = onfocuschangelistener;
            super();
        }
    }


    private class _cls1
        implements android.widget.TextView.OnEditorActionListener
    {

        public boolean onEditorAction(TextView textview, int i1, KeyEvent keyevent)
        {
            boolean flag;
            if(i1 == 4)
            {
                ChatFooter.a(a).performClick();
                flag = true;
            } else
            {
                flag = false;
            }
            return flag;
        }

        private ChatFooter a;

        _cls1()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            ChatFooter.b(a).setVisibility(8);
            return false;
        }

        private ChatFooter a;

        _cls2()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls8
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if(view == ChatFooter.g(a)) goto _L2; else goto _L1
_L1:
            return false;
_L2:
            int i1 = (int)motionevent.getRawX();
            int j1 = (int)motionevent.getRawY();
            int ai[] = new int[2];
            ChatFooter.a(a, ChatFooter.h(a).getResources().getDisplayMetrics().heightPixels);
            ChatFooter.i(a).getContentView().getLocationOnScreen(ai);
            int k1 = ai[1];
            int l1 = ChatFooter.i(a).getContentView().getHeight();
            ChatFooter.j(a).getLocationOnScreen(ai);
            int i2 = ai[0];
            int j2 = ChatFooter.j(a).getWidth();
            switch(motionevent.getAction())
            {
            case 0: // '\0'
                if(!ChatFooter.k(a) && !ChatFooter.l(a))
                {
                    ChatFooter.a(a, true);
                    ChatFooter.g(a).setBackgroundDrawable(ChatFooter.h(a).a(0x7f0202fb));
                    ChatFooter.g(a).setText(0x7f0a0172);
                    ChatFooter.m(a).a();
                }
                break;

            case 2: // '\002'
                int k2 = b.a.e.a(ChatFooter.h(a), 60F);
                if(j1 <= ChatFooter.n(a) - k2)
                {
                    ChatFooter.o(a).setVisibility(8);
                    ChatFooter.j(a).setVisibility(0);
                } else
                {
                    ChatFooter.o(a).setVisibility(0);
                    ChatFooter.j(a).setVisibility(8);
                }
                if(j1 <= l1 + k1 && j1 >= k1 && i1 >= i2 && i1 <= i2 + j2)
                {
                    ChatFooter.j(a).setBackgroundResource(0x7f0202fe);
                    if(!ChatFooter.p(a))
                    {
                        ChatFooter.r(a).startAnimation(ChatFooter.q(a));
                        ChatFooter.b(a, true);
                    }
                    ChatFooter.s(a).setText(0x7f0a0178);
                } else
                {
                    ChatFooter.b(a, false);
                    ChatFooter.j(a).setBackgroundResource(0);
                    ChatFooter.s(a).setText(0x7f0a0177);
                }
                break;

            case 1: // '\001'
                Log.e("MicroMsg.ChatFooter", "action up");
                ChatFooter.a(a, false);
                ChatFooter.g(a).setBackgroundDrawable(ChatFooter.h(a).a(0x7f0202fa));
                ChatFooter.g(a).setText(0x7f0a0171);
                if(j1 <= l1 + k1 && j1 >= k1 && i1 >= i2 && i1 <= i2 + j2)
                    ChatFooter.t(a).e();
                else
                    ChatFooter.u(a).b();
                break;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private ChatFooter a;

        _cls8()
        {
            a = ChatFooter.this;
            super();
        }

        private class OnVoiceRcdStartRequest
        {

            public abstract boolean a();
        }


        private class OnVoiceRcdCancelRequest
        {

            public abstract boolean e();
        }


        private class OnVoiceRcdStopRequest
        {

            public abstract boolean b();
        }

    }


    private class _cls9
        implements android.view.View.OnKeyListener
    {

        public boolean onKey(View view, int i1, KeyEvent keyevent)
        {
            keyevent.getAction();
            JVM INSTR tableswitch 0 1: default 28
        //                       0 30
        //                       1 121;
               goto _L1 _L2 _L3
_L1:
            return false;
_L2:
            if((i1 == 23 || i1 == 66) && !ChatFooter.l(a) && !ChatFooter.k(a))
            {
                ChatFooter.c(a, true);
                ChatFooter.g(a).setBackgroundDrawable(ChatFooter.h(a).a(0x7f0202fb));
                ChatFooter.g(a).setText(0x7f0a0172);
                ChatFooter.m(a).a();
            }
            continue; /* Loop/switch isn't completed */
_L3:
            if(i1 == 23 || i1 == 66)
            {
                ChatFooter.g(a).setBackgroundDrawable(ChatFooter.h(a).a(0x7f0202fa));
                ChatFooter.g(a).setText(0x7f0a0171);
                ChatFooter.u(a).b();
                ChatFooter.c(a, false);
            }
            if(true) goto _L1; else goto _L4
_L4:
        }

        private ChatFooter a;

        _cls9()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChatFooter.f(a) == 1)
                a.c(0);
            else
                a.c(1);
        }

        private ChatFooter a;

        _cls7()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls10
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChatFooter.f(a) == 0)
            {
                ChatFooter.v(a).setVisibility(0);
                ChatFooter.g(a).setVisibility(8);
                ChatFooter.w(a).requestFocus();
                ChatFooter.x(a).setImageResource(0x7f0200cf);
                ChatFooter.c(a).setVisibility(8);
            }
            ChatFooter.y(a);
            ChatFooter.c(a).setVisibility(8);
            ChatFooter.w(a).requestFocus();
            ChatFooter.h(a).n();
            ChatFooter.b(a).setVisibility(0);
        }

        private ChatFooter a;

        _cls10()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls11
        implements SmileyGrid.OnSmileyLongClickListener
    {

        public final void a(EmojiInfo emojiinfo)
        {
            if(emojiinfo.i() == EmojiInfo.g && ChatFooter.z(a) != null)
                ChatFooter.z(a).a(emojiinfo);
        }

        private ChatFooter a;

        _cls11()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls12
        implements SmileyGrid.OnSmileySelectedListener
    {

        public final void a(int i1, int j1, String s1)
        {
            i1;
            JVM INSTR tableswitch 0 5: default 40
        //                       0 41
        //                       1 71
        //                       2 135
        //                       3 101
        //                       4 173
        //                       5 228;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7
_L1:
            return;
_L2:
            try
            {
                ChatFooter.w(a).a(SmileyManager.a(ChatFooter.h(a))[j1]);
            }
            catch(Exception exception2) { }
            continue; /* Loop/switch isn't completed */
_L3:
            try
            {
                ChatFooter.w(a).a(EmojiManager.b(ChatFooter.h(a))[j1]);
            }
            catch(Exception exception1) { }
            continue; /* Loop/switch isn't completed */
_L5:
            EmojiInfo emojiinfo = MMCore.f().l().d(s1);
            if(emojiinfo != null)
                ChatFooter.A(a).a(emojiinfo);
            continue; /* Loop/switch isn't completed */
_L4:
            Log.e("MicroMsg.ChatFooter", "art smiley selected");
            if(ChatFooter.B(a) != null)
                try
                {
                    ChatFooter.B(a).a(s1);
                }
                catch(Exception exception) { }
            continue; /* Loop/switch isn't completed */
_L6:
            ChatFooter.w(a).a().sendKeyEvent(new KeyEvent(0, 67));
            ChatFooter.w(a).a().sendKeyEvent(new KeyEvent(1, 67));
            continue; /* Loop/switch isn't completed */
_L7:
            Log.e("MicroMsg.ChatFooter", "add btn selected");
            ChatFooter.C(a).a();
            if(true) goto _L1; else goto _L8
_L8:
        }

        private ChatFooter a;

        _cls12()
        {
            a = ChatFooter.this;
            super();
        }

        private class OnSendCustomEmojiListener
        {

            public abstract void a(EmojiInfo emojiinfo);
        }


        private class OnArtSmileySelectListener
        {

            public abstract void a(String s1);
        }


        private class OnAddCustomEmojiListener
        {

            public abstract void a();
        }

    }


    private class _cls5
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChatFooter.d(a) != null)
                ChatFooter.d(a).a(view);
            ChatFooter.c(a).setVisibility(8);
        }

        private ChatFooter a;

        _cls5()
        {
            a = ChatFooter.this;
            super();
        }

        private class OnChooseListener
        {

            public abstract boolean a(View view);
        }

    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChatFooter.d(a) != null)
                ChatFooter.d(a).a(view);
            ChatFooter.c(a).setVisibility(8);
        }

        private ChatFooter a;

        _cls4()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            com.tencent.mm.ui.chatting.ChatFooter.e(a).a();
            ChatFooter.c(a).setVisibility(8);
        }

        private ChatFooter a;

        _cls6()
        {
            a = ChatFooter.this;
            super();
        }

        private class OnSendCardRequest
        {

            public abstract void a();
        }

    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ChatFooter.c(a).getVisibility() == 0)
            {
                ChatFooter.c(a).setVisibility(8);
            } else
            {
                ChatFooter.c(a).setVisibility(0);
                ChatFooter.c(a).requestFocus();
            }
        }

        private ChatFooter a;

        _cls3()
        {
            a = ChatFooter.this;
            super();
        }
    }


    private class _cls16
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s1 = ChatFooter.w(b).getText().toString();
            if(a.a(s1))
            {
                ChatFooter.w(b).clearComposingText();
                ChatFooter.w(b).setText("");
            }
        }

        private OnSendRequest a;
        private ChatFooter b;

        _cls16(OnSendRequest onsendrequest)
        {
            b = ChatFooter.this;
            a = onsendrequest;
            super();
        }

        private class OnSendRequest
        {

            public abstract boolean a(String s1);
        }

    }


    private class OnSelectImageListener
    {

        public abstract boolean a();
    }

}
