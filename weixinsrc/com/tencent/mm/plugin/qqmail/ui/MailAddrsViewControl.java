// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.*;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.qqmail.model.*;
import com.tencent.mm.storage.ConfigStorage;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MailAddrsViewControl extends RelativeLayout
{

    public MailAddrsViewControl(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        b = false;
        c = new LinkedList();
        e = new Handler();
        j = new _cls8();
        g = new GestureDetector(j);
    }

    static View a(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.h;
    }

    static View a(MailAddrsViewControl mailaddrsviewcontrol, View view)
    {
        mailaddrsviewcontrol.h = view;
        return view;
    }

    static void a(MailAddrsViewControl mailaddrsviewcontrol, String s, boolean flag)
    {
        String s1 = s.trim();
        if(s1.length() == 0) goto _L2; else goto _L1
_L1:
        List list = MMCore.n().b().a(s1);
        if(list.size() > 0)
        {
            mailaddrsviewcontrol.a((MailAddr)list.get(0));
        } else
        {
            if(!a(s1))
                continue; /* Loop/switch isn't completed */
            mailaddrsviewcontrol.a((new MailAddr()).a(s1).b(s1).b(0));
        }
_L4:
        mailaddrsviewcontrol.a.setText("");
_L2:
        return;
        if(!flag) goto _L4; else goto _L3
_L3:
        Toast.makeText(mailaddrsviewcontrol.getContext(), 0x7f0a0462, 2000).show();
        mailaddrsviewcontrol.a.setText(s1);
        mailaddrsviewcontrol.a.setSelection(s1.length());
          goto _L2
        if(true) goto _L4; else goto _L5
_L5:
    }

    private static boolean a(String s)
    {
        return i.matcher(s).matches();
    }

    static GestureDetector b(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.g;
    }

    static MailAddressAdapter c(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.d;
    }

    static LinkedList d(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.c;
    }

    static OnActionListener e(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.f;
    }

    static boolean f(MailAddrsViewControl mailaddrsviewcontrol)
    {
        return mailaddrsviewcontrol.b;
    }

    public final void a()
    {
        b = true;
        if(a != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L9:
        if(k >= getChildCount()) goto _L4; else goto _L3
_L3:
        View view = getChildAt(k);
        if(!(view instanceof AutoCompleteTextView)) goto _L6; else goto _L5
_L5:
        a = (AutoCompleteTextView)view;
_L4:
        if(a != null)
        {
            a.setDropDownBackgroundResource(0x7f0200ca);
            setOnClickListener(new _cls1());
            a.setOnItemClickListener(new _cls3());
            a.setOnEditorActionListener(new _cls4());
            a.setOnKeyListener(new _cls5());
            a.addTextChangedListener(new _cls6());
            a.setOnFocusChangeListener(new _cls7());
        }
_L2:
        return;
_L6:
        if(view instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)view;
            for(int l = 0; l < viewgroup.getChildCount(); l++)
            {
                View view1 = viewgroup.getChildAt(l);
                if(view1 instanceof AutoCompleteTextView)
                    a = (AutoCompleteTextView)view1;
            }

        }
        if(a != null) goto _L4; else goto _L7
_L7:
        k++;
        if(true) goto _L9; else goto _L8
_L8:
    }

    public final void a(MailAddr mailaddr)
    {
        if(mailaddr != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        Iterator iterator = c.iterator();
        do
            if(!iterator.hasNext())
                break; /* Loop/switch isn't completed */
        while(!((MailAddr)iterator.next()).e().equalsIgnoreCase(mailaddr.e()));
        flag = true;
_L4:
        if(!flag)
        {
            ViewGroup viewgroup = (ViewGroup)View.inflate(getContext(), 0x7f0300ac, null);
            Button button = (Button)viewgroup.findViewById(0x7f0701c7);
            viewgroup.removeView((View)button.getParent());
            button.setText(mailaddr.d());
            if(b)
                button.setCompoundDrawables(null, null, null, null);
            button.setTag((new StringBuilder()).append("").append(c.size()).toString());
            View view = (View)button.getParent();
            button.setTag(mailaddr);
            view.setVisibility(4);
            view.setTag(mailaddr);
            addView(view, c.size());
            c.add(mailaddr);
            e.postDelayed(new _cls2(button), 100L);
        }
        if(true) goto _L1; else goto _L3
_L3:
        flag = false;
          goto _L4
        if(true) goto _L1; else goto _L5
_L5:
    }

    public final void a(MailAddressAdapter mailaddressadapter)
    {
        if(a != null && mailaddressadapter != null)
        {
            d = mailaddressadapter;
            a.setAdapter(mailaddressadapter);
        }
    }

    public final void a(OnActionListener onactionlistener)
    {
        f = onactionlistener;
    }

    public final void a(List list)
    {
        if(list != null)
        {
            Iterator iterator = list.iterator();
            while(iterator.hasNext()) 
                a((MailAddr)iterator.next());
        }
    }

    public final void a(String as[], boolean flag)
    {
        if(flag)
        {
            removeAllViews();
            c.clear();
            f();
            invalidate();
        }
        if(as != null && as.length != 0)
        {
            int k = as.length;
            int l = 0;
            while(l < k) 
            {
                MailAddr mailaddr = MailAddrMgr.b(as[l]);
                if(mailaddr != null)
                    a(mailaddr);
                l++;
            }
        }
    }

    public final String[] a(boolean flag)
    {
        String s = Util.h((String)MMCore.f().f().a(5));
        String as[] = new String[c.size()];
        int k = 0;
        while(k < c.size()) 
        {
            MailAddr mailaddr = (MailAddr)c.get(k);
            if(!flag || !mailaddr.e().equalsIgnoreCase(s))
                as[k] = (new StringBuilder()).append(mailaddr.d()).append(" ").append(mailaddr.e()).toString();
            else
                as[k] = "";
            k++;
        }
        return as;
    }

    public final LinkedList b()
    {
        return c;
    }

    public final void b(MailAddr mailaddr)
    {
        int k = 0;
        do
        {
label0:
            {
                if(k < c.size())
                {
                    MailAddr mailaddr1 = (MailAddr)c.get(k);
                    if(!mailaddr.e().equalsIgnoreCase(mailaddr1.e()))
                        break label0;
                    removeViewAt(k);
                    c.remove(k);
                    f();
                    invalidate();
                }
                return;
            }
            k++;
        } while(true);
    }

    public final void b(List list)
    {
        if(list != null)
        {
            for(int k = 0; k < c.size(); k++)
            {
                MailAddr mailaddr2 = (MailAddr)c.get(k);
                int j1 = 0;
                do
                {
                    if(j1 >= list.size())
                        break;
                    MailAddr mailaddr3 = (MailAddr)list.get(j1);
                    if(mailaddr2.e().equalsIgnoreCase(mailaddr3.e()))
                        break;
                    j1++;
                } while(true);
                if(j1 == list.size())
                    b(mailaddr2);
            }

            int l = 0;
            while(l < list.size()) 
            {
                MailAddr mailaddr = (MailAddr)list.get(l);
                int i1 = 0;
                do
                {
                    if(i1 >= c.size())
                        break;
                    MailAddr mailaddr1 = (MailAddr)c.get(i1);
                    if(mailaddr.e().equalsIgnoreCase(mailaddr1.e()))
                        break;
                    i1++;
                } while(true);
                if(i1 == c.size())
                    a(mailaddr);
                l++;
            }
        }
    }

    public final String c()
    {
        String s = "";
        for(int k = 0; k < c.size(); k++)
        {
            MailAddr mailaddr = (MailAddr)c.get(k);
            if(k != 0)
                s = (new StringBuilder()).append(s).append(",").toString();
            s = (new StringBuilder()).append(s).append(mailaddr.e()).toString();
        }

        return s;
    }

    public final int d()
    {
        return c.size();
    }

    public final boolean e()
    {
        Iterator iterator = c.iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if(a(((MailAddr)iterator.next()).e())) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L2:
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }

    final void f()
    {
        int k = getChildCount();
        int l = getMeasuredWidth();
        int i1 = 0;
        int j1 = 0;
        int k1 = 0;
        while(i1 < k) 
        {
            View view = getChildAt(i1);
            if(view.getVisibility() == 8 && !(view instanceof AutoCompleteTextView))
                continue;
            int l1 = view.getWidth();
            int i2 = view.getHeight();
            if(l1 == 0)
            {
                view.measure(android.view.View.MeasureSpec.makeMeasureSpec(getWidth(), 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(getHeight(), 0x80000000));
                l1 = view.getMeasuredWidth();
            }
            int j2;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            if((view instanceof AutoCompleteTextView) && view.isFocused())
                j2 = 0;
            else
                j2 = l1;
            if(k1 + j2 > l)
            {
                j1 += i2;
                k1 = 0;
            }
            layoutparams = (android.widget.RelativeLayout.LayoutParams)view.getLayoutParams();
            layoutparams.setMargins(k1, j1, layoutparams.rightMargin, layoutparams.bottomMargin);
            view.setLayoutParams(layoutparams);
            k1 += j2;
            view.setVisibility(0);
            i1++;
        }
    }

    private static final Pattern i = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
    AutoCompleteTextView a;
    private boolean b;
    private LinkedList c;
    private MailAddressAdapter d;
    private Handler e;
    private OnActionListener f;
    private GestureDetector g;
    private View h;
    private android.view.GestureDetector.SimpleOnGestureListener j;


    private class _cls8 extends android.view.GestureDetector.SimpleOnGestureListener
    {

        private void a()
        {
            MailAddr mailaddr = (MailAddr)MailAddrsViewControl.a(a).getTag();
            Intent intent = new Intent(a.getContext(), com/tencent/mm/plugin/qqmail/ui/MailAddrProfileUI);
            intent.putExtra("name", mailaddr.d());
            intent.putExtra("addr", mailaddr.e());
            boolean flag;
            if(!MailAddrsViewControl.f(a))
                flag = true;
            else
                flag = false;
            intent.putExtra("can_compose", flag);
            a.getContext().startActivity(intent);
        }

        public boolean onDoubleTap(MotionEvent motionevent)
        {
            a();
            return true;
        }

        public void onLongPress(MotionEvent motionevent)
        {
            if(MailAddrsViewControl.e(a) != null)
                MailAddrsViewControl.a(a).getTag();
        }

        public boolean onSingleTapUp(MotionEvent motionevent)
        {
            if(!MailAddrsViewControl.f(a))
                a();
            return true;
        }

        private MailAddrsViewControl a;

        _cls8()
        {
            a = MailAddrsViewControl.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.a.requestFocus();
            ((InputMethodManager)a.getContext().getSystemService("input_method")).toggleSoftInput(0, 1);
        }

        private MailAddrsViewControl a;

        _cls1()
        {
            a = MailAddrsViewControl.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int k, long l)
        {
            MailAddr mailaddr = MailAddrsViewControl.c(a).a(k);
            a.a(mailaddr);
            a.a.setText("");
        }

        private MailAddrsViewControl a;

        _cls3()
        {
            a = MailAddrsViewControl.this;
            super();
        }

        private class MailAddressAdapter extends BaseAdapter
            implements Filterable
        {

            static ArrayList a(MailAddressAdapter mailaddressadapter)
            {
                return mailaddressadapter.e;
            }

            static ArrayList a(MailAddressAdapter mailaddressadapter, ArrayList arraylist)
            {
                mailaddressadapter.e = arraylist;
                return arraylist;
            }

            static List a(MailAddressAdapter mailaddressadapter, List list)
            {
                mailaddressadapter.a = list;
                return list;
            }

            static Object b(MailAddressAdapter mailaddressadapter)
            {
                return mailaddressadapter.b;
            }

            static List c(MailAddressAdapter mailaddressadapter)
            {
                return mailaddressadapter.a;
            }

            public final MailAddr a(int k)
            {
                return (MailAddr)a.get(k);
            }

            public int getCount()
            {
                return a.size();
            }

            public Filter getFilter()
            {
                class ArrayFilter extends Filter
                {

                    protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
                    {
                        android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
                        if(MailAddressAdapter.a(a) == null)
                            synchronized(MailAddressAdapter.b(a))
                            {
                                MailAddressAdapter.a(a, new ArrayList(MailAddressAdapter.c(a)));
                            }
                        if(charsequence == null || charsequence.length() == 0)
                        {
                            synchronized(MailAddressAdapter.b(a))
                            {
                                ArrayList arraylist = new ArrayList(MailAddressAdapter.a(a));
                                filterresults.values = arraylist;
                                filterresults.count = arraylist.size();
                            }
                        } else
                        {
                            String s = charsequence.toString().toLowerCase();
                            ArrayList arraylist1 = MailAddressAdapter.a(a);
                            int k = arraylist1.size();
                            ArrayList arraylist2 = new ArrayList(k);
                            for(int l = 0; l < k; l++)
                            {
                                MailAddr mailaddr = (MailAddr)arraylist1.get(l);
                                if(mailaddr.d().toLowerCase().contains(s) || mailaddr.e().toLowerCase().contains(s))
                                    arraylist2.add(mailaddr);
                            }

                            filterresults.values = arraylist2;
                            filterresults.count = arraylist2.size();
                        }
                        return filterresults;
                        exception1;
                        obj1;
                        JVM INSTR monitorexit ;
                        throw exception1;
                        exception;
                        obj;
                        JVM INSTR monitorexit ;
                        throw exception;
                    }

                    protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
                    {
                        MailAddressAdapter.a(a, (List)filterresults.values);
                        if(filterresults.count > 0)
                        {
                            a.notifyDataSetChanged();
                        } else
                        {
                            MailAddressAdapter.a(a, new ArrayList(MailAddressAdapter.a(a)));
                            a.notifyDataSetInvalidated();
                        }
                    }

                    private MailAddressAdapter a;

                    ArrayFilter()
                    {
                        this((byte)0);
                    }

                    private ArrayFilter(byte byte0)
                    {
                        a = MailAddressAdapter.this;
                        super();
                    }
                }

                if(f == null)
                    f = new ArrayFilter();
                return f;
            }

            public volatile Object getItem(int k)
            {
                return a(k);
            }

            public long getItemId(int k)
            {
                return (long)k;
            }

            public View getView(int k, View view, ViewGroup viewgroup)
            {
                class Holder
                {

                    TextView a;
                    TextView b;
                    CheckBox c;
                    private MailAddressAdapter d;

                    Holder()
                    {
                        this((byte)0);
                    }

                    private Holder(byte byte0)
                    {
                        d = MailAddressAdapter.this;
                        super();
                    }
                }

                Object obj;
                MailAddr mailaddr;
                Holder holder;
                if(view == null)
                {
                    obj = View.inflate(d, 0x7f0300ae, null);
                    Holder holder1 = new Holder();
                    holder1.a = (TextView)((View) (obj)).findViewById(0x7f0701c4);
                    holder1.b = (TextView)((View) (obj)).findViewById(0x7f0701c5);
                    holder1.c = (CheckBox)((View) (obj)).findViewById(0x7f0701c6);
                    ((View) (obj)).setTag(holder1);
                } else
                {
                    obj = (ViewGroup)view;
                }
                mailaddr = a(k);
                holder = (Holder)((View) (obj)).getTag();
                holder.a.setText(mailaddr.d());
                holder.b.setText(mailaddr.e());
                holder.c.setVisibility(8);
                ((View) (obj)).setBackgroundColor(0xfff3f3f3);
                return ((View) (obj));
            }

            public void notifyDataSetChanged()
            {
                super.notifyDataSetChanged();
                c = true;
            }

            private List a;
            private final Object b = new Object();
            private boolean c;
            private Context d;
            private ArrayList e;
            private ArrayFilter f;

            public MailAddressAdapter(Context context, List list)
            {
                c = true;
                d = context;
                a = list;
            }
        }

    }


    private class _cls4
        implements android.widget.TextView.OnEditorActionListener
    {

        public boolean onEditorAction(TextView textview, int k, KeyEvent keyevent)
        {
            if(k == 5)
            {
                String s = a.a.getEditableText().toString();
                if(s != null && s.length() > 0)
                {
                    MailAddrsViewControl.a(a, s, false);
                    a.f();
                }
            }
            return true;
        }

        private MailAddrsViewControl a;

        _cls4()
        {
            a = MailAddrsViewControl.this;
            super();
        }
    }


    private class _cls5
        implements android.view.View.OnKeyListener
    {

        public boolean onKey(View view, int k, KeyEvent keyevent)
        {
            if(k != 67 || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
            String s = a.a.getEditableText().toString();
            if(s.length() != 0 || MailAddrsViewControl.a(a) == null || !MailAddrsViewControl.a(a).isSelected()) goto _L4; else goto _L3
_L3:
            a.b((MailAddr)MailAddrsViewControl.a(a).getTag());
            MailAddrsViewControl.a(a, null);
            a.f();
_L2:
            return false;
_L4:
            if(s.length() == 0 && MailAddrsViewControl.d(a).size() > 0)
            {
                int l = -1 + MailAddrsViewControl.d(a).size();
                View view1 = a.getChildAt(l);
                if(!view1.isSelected())
                {
                    view1.setSelected(true);
                } else
                {
                    a.b((MailAddr)MailAddrsViewControl.d(a).get(l));
                    a.f();
                }
            }
            if(true) goto _L2; else goto _L5
_L5:
        }

        private MailAddrsViewControl a;

        _cls5()
        {
            a = MailAddrsViewControl.this;
            super();
        }
    }


    private class _cls6
        implements TextWatcher
    {

        public void afterTextChanged(Editable editable)
        {
        }

        public void beforeTextChanged(CharSequence charsequence, int k, int l, int i1)
        {
        }

        public void onTextChanged(CharSequence charsequence, int k, int l, int i1)
        {
            String s = charsequence.toString();
            if(s.endsWith("\n") || s.endsWith(" "))
                MailAddrsViewControl.a(a, s, true);
            a.f();
        }

        private MailAddrsViewControl a;

        _cls6()
        {
            a = MailAddrsViewControl.this;
            super();
        }
    }


    private class _cls7
        implements android.view.View.OnFocusChangeListener
    {

        public void onFocusChange(View view, boolean flag)
        {
            if(MailAddrsViewControl.e(a) != null)
                MailAddrsViewControl.e(a).a(flag);
            String s = a.a.getEditableText().toString();
            if(!flag && s.trim().length() > 0)
                MailAddrsViewControl.a(a, s, false);
            if(MailAddrsViewControl.a(a) != null && MailAddrsViewControl.a(a).isSelected())
            {
                MailAddrsViewControl.a(a).setSelected(flag);
                MailAddrsViewControl.a(a, null);
            }
            a.f();
        }

        private MailAddrsViewControl a;

        _cls7()
        {
            a = MailAddrsViewControl.this;
            super();
        }

        private class OnActionListener
        {

            public void a(boolean flag)
            {
            }

            public OnActionListener()
            {
            }
        }

    }


    private class _cls2
        implements Runnable
    {

        public void run()
        {
            a.invalidate();
            class _cls1
                implements android.view.View.OnTouchListener
            {

                public boolean onTouch(View view, MotionEvent motionevent)
                {
                    if(MailAddrsViewControl.a(a.b) != null && MailAddrsViewControl.a(a.b) != view && MailAddrsViewControl.a(a.b).isSelected())
                    {
                        MailAddrsViewControl.a(a.b).setSelected(false);
                        MailAddrsViewControl.a(a.b, null);
                    }
                    MailAddrsViewControl.a(a.b, view);
                    if(a.b.a != null && motionevent.getAction() == 0)
                    {
                        Button button = a.a;
                        boolean flag;
                        if(!a.a.isSelected())
                            flag = true;
                        else
                            flag = false;
                        button.setSelected(flag);
                        a.b.a.setVisibility(0);
                        a.b.a.requestFocus();
                        ((InputMethodManager)a.b.getContext().getSystemService("input_method")).toggleSoftInput(0, 1);
                    }
                    return MailAddrsViewControl.b(a.b).onTouchEvent(motionevent);
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            a.setOnTouchListener(new _cls1());
            b.f();
            b.invalidate();
        }

        final Button a;
        final MailAddrsViewControl b;

        _cls2(Button button)
        {
            b = MailAddrsViewControl.this;
            a = button;
            super();
        }
    }

}
