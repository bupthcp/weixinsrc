// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.tencent.mm.platformtools.LocaleUtil;
import com.tencent.mm.ui.MMGallery;
import com.tencent.mm.ui.MMPageControlView;
import java.util.Locale;

public class WhatsNewUI extends Activity
{

    public WhatsNewUI()
    {
    }

    static View a(WhatsNewUI whatsnewui, View view)
    {
        whatsnewui.d = view;
        return view;
    }

    static ImageAdapter a(WhatsNewUI whatsnewui)
    {
        return whatsnewui.a;
    }

    static View b(WhatsNewUI whatsnewui, View view)
    {
        whatsnewui.e = view;
        return view;
    }

    static MMGallery b(WhatsNewUI whatsnewui)
    {
        return whatsnewui.b;
    }

    static View c(WhatsNewUI whatsnewui, View view)
    {
        whatsnewui.f = view;
        return view;
    }

    static MMPageControlView c(WhatsNewUI whatsnewui)
    {
        return whatsnewui.c;
    }

    static View d(WhatsNewUI whatsnewui)
    {
        return whatsnewui.d;
    }

    public void onCreate(Bundle bundle)
    {
        String s;
        super.onCreate(bundle);
        s = LocaleUtil.a(getSharedPreferences("com.tencent.mm_preferences", 0));
        if(!s.equals("zh_TW") && !s.equals("zh_HK")) goto _L2; else goto _L1
_L1:
        LocaleUtil.a(this, Locale.TAIWAN);
_L4:
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(0x7f030107);
        setRequestedOrientation(1);
        b = (MMGallery)findViewById(0x7f0702cc);
        c = (MMPageControlView)findViewById(0x7f0702cd);
        a = new ImageAdapter(this);
        b.setAdapter(a);
        b.setFadingEdgeLength(0);
        c.a(-1 + a.getCount());
        b.setOnItemClickListener(new _cls1());
        b.setOnItemSelectedListener(new _cls2());
        return;
_L2:
        if(s.equals("en"))
            LocaleUtil.a(this, Locale.ENGLISH);
        else
        if(s.equals("zh_CN"))
            LocaleUtil.a(this, Locale.CHINA);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private ImageAdapter a;
    private MMGallery b;
    private MMPageControlView c;
    private View d;
    private View e;
    private View f;

    private class ImageAdapter extends BaseAdapter
    {

        public int getCount()
        {
            return e.length;
        }

        public Object getItem(int i)
        {
            return Integer.valueOf(i);
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public int getItemViewType(int i)
        {
            int j;
            if(i == 0)
                j = 0;
            else
            if(i >= -2 + e.length)
                j = 2;
            else
                j = 1;
            return j;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if(i == -1 + getCount())
            {
                view = new ImageView(a);
                view.setLayoutParams(new android.widget.Gallery.LayoutParams(-1, -1));
            } else
            {
                if(view == null || ((Integer)view.getTag()).intValue() != getItemViewType(i))
                {
                    view = View.inflate(a, b[getItemViewType(i)], null);
                    view.setTag(Integer.valueOf(getItemViewType(i)));
                    view.setLayoutParams(new android.widget.Gallery.LayoutParams(-1, -1));
                }
                if(getItemViewType(i) == 1)
                {
                    view.setBackgroundResource(e[i]);
                    Log.d("MicroMsg.WhatsNewUI", (new StringBuilder()).append("position ").append(i).append(d[i]).append(" - ").append(d[i]).toString());
                    ((TextView)view.findViewById(0x7f0702d1)).setText(a.getString(c[i]));
                    ((TextView)view.findViewById(0x7f0702d2)).setText(a.getString(d[i]));
                } else
                {
                    getItemViewType(i);
                }
            }
            return view;
        }

        public int getViewTypeCount()
        {
            return 3;
        }

        private WhatsNewUI a;
        private int b[];
        private int c[];
        private int d[];
        private int e[];
        private WhatsNewUI f;

        public ImageAdapter(WhatsNewUI whatsnewui1)
        {
            f = WhatsNewUI.this;
            super();
            int ai[] = new int[3];
            ai[0] = 0x7f030108;
            ai[1] = 0x7f03010a;
            ai[2] = 0x7f030109;
            b = ai;
            int ai1[] = new int[6];
            ai1[0] = 0x7f0a041a;
            ai1[1] = 0x7f0a041c;
            ai1[2] = 0x7f0a041e;
            ai1[3] = 0x7f0a0420;
            ai1[4] = -1;
            ai1[5] = -1;
            c = ai1;
            int ai2[] = new int[6];
            ai2[0] = -1;
            ai2[1] = 0x7f0a041b;
            ai2[2] = 0x7f0a041d;
            ai2[3] = 0x7f0a041f;
            ai2[4] = 0x7f0a0421;
            ai2[5] = -1;
            d = ai2;
            int ai3[] = new int[6];
            ai3[0] = 0x7f020302;
            ai3[1] = 0x7f020303;
            ai3[2] = 0x7f020304;
            ai3[3] = 0x7f020305;
            ai3[4] = 0x7f020306;
            ai3[5] = -1;
            e = ai3;
            a = whatsnewui1;
            WhatsNewUI.a(WhatsNewUI.this, findViewById(0x7f0702ce));
            WhatsNewUI.b(WhatsNewUI.this, WhatsNewUI.d(WhatsNewUI.this).findViewById(0x7f0702cf));
            WhatsNewUI.c(WhatsNewUI.this, WhatsNewUI.d(WhatsNewUI.this).findViewById(0x7f0702d0));
        }
    }


    private class _cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(i + 1 < WhatsNewUI.a(a).getCount())
                WhatsNewUI.b(a).setSelection(i + 1);
        }

        private WhatsNewUI a;

        _cls1()
        {
            a = WhatsNewUI.this;
            super();
        }
    }


    private class _cls2
        implements android.widget.AdapterView.OnItemSelectedListener
    {

        public void onItemSelected(AdapterView adapterview, View view, int i, long l)
        {
            if(i == -2 + WhatsNewUI.a(a).getCount())
            {
                ChattingAnimFrame chattinganimframe = (ChattingAnimFrame)a.findViewById(0x7f070094);
                if(chattinganimframe != null)
                    chattinganimframe.a(a);
            }
            if(i == -1 + WhatsNewUI.a(a).getCount())
                a.finish();
            WhatsNewUI.c(a).b(i);
        }

        public void onNothingSelected(AdapterView adapterview)
        {
        }

        private WhatsNewUI a;

        _cls2()
        {
            a = WhatsNewUI.this;
            super();
        }
    }

}
