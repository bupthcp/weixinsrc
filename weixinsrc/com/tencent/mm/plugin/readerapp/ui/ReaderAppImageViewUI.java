// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.readerapp.ui;

import android.content.Intent;
import android.os.Bundle;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import b.a.w;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.readerapp.model.ReaderAppGetPicService;
import com.tencent.mm.plugin.readerapp.model.ReaderAppInfo;
import com.tencent.mm.plugin.readerapp.ui.gallery.ReaderGallery;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMGallery;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

public class ReaderAppImageViewUI extends MMActivity
    implements android.view.View.OnTouchListener, com.tencent.mm.plugin.readerapp.model.ReaderAppGetPicService.OnDownSucc
{

    public ReaderAppImageViewUI()
    {
        d = 0F;
        e = 0F;
        f = false;
        g = 1F;
        i = new ArrayList();
        j = 0;
        k = -1;
        l = new _cls3();
    }

    private static float a(MotionEvent motionevent)
    {
        float f1 = w.a(motionevent, 0) - w.a(motionevent, 1);
        float f2 = w.a(motionevent, 0) - w.a(motionevent, 1);
        return FloatMath.sqrt(f1 * f1 + f2 * f2);
    }

    static int a(ReaderAppImageViewUI readerappimageviewui, int i1)
    {
        readerappimageviewui.k = i1;
        return i1;
    }

    static String a(ReaderAppImageViewUI readerappimageviewui)
    {
        return readerappimageviewui.h;
    }

    static String a(ReaderAppImageViewUI readerappimageviewui, String s)
    {
        readerappimageviewui.h = s;
        return s;
    }

    static int b(ReaderAppImageViewUI readerappimageviewui)
    {
        return readerappimageviewui.k;
    }

    static List c(ReaderAppImageViewUI readerappimageviewui)
    {
        return readerappimageviewui.i;
    }

    static int d(ReaderAppImageViewUI readerappimageviewui)
    {
        return readerappimageviewui.j;
    }

    protected final int a()
    {
        return 0x7f0300ba;
    }

    public final void a(String s, int i1)
    {
        if(a != null)
        {
            int j1;
            if(w.a())
                j1 = c.getSelectedItemPosition();
            else
                j1 = b.getSelectedItemPosition();
            if(i1 == j1)
                h = ReaderAppGetPicService.a(s, j);
            a.notifyDataSetChanged();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        String s = Util.h(getIntent().getStringExtra("htmlData"));
        String s1 = Util.h(getIntent().getStringExtra("nowUrl"));
        j = getIntent().getIntExtra("type", 0);
        boolean flag;
        int i1;
        if(ReaderAppInfo.a(j) != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        i1 = 0;
        do
        {
            if(i1 < 0)
                break;
            int k1 = s.indexOf("weixin://viewimage/", i1);
            if(k1 < 0)
                break;
            i1 = s.indexOf("\"", k1);
            if(i1 < 0)
                break;
            String s2 = s.substring(k1 + "weixin://viewimage/".length(), i1);
            Log.d("MicroMsg.ReaderAppImageViewUI", (new StringBuilder()).append("start:").append(k1).append(" end:").append(i1).append(" url:").append(s2).toString());
            i.add(s2);
        } while(true);
        int j1 = 0;
        do
        {
label0:
            {
                if(j1 < i.size())
                {
                    if(!s1.equals(i.get(j1)))
                        break label0;
                    k = j1;
                }
                b(new _cls1());
                a = new ImageAdapter();
                if(w.a())
                {
                    c = (ReaderGallery)findViewById(0x7f0701f1);
                    c.setVisibility(0);
                    c.setVerticalFadingEdgeEnabled(false);
                    c.setHorizontalFadingEdgeEnabled(false);
                    c.setAdapter(a);
                    c.setSelection(k);
                    c.setOnItemSelectedListener(l);
                } else
                {
                    b = (MMGallery)findViewById(0x7f0701f0);
                    b.setVisibility(0);
                    b.setAdapter(a);
                    b.setSelection(k);
                    b.setOnItemSelectedListener(l);
                }
                a(0x7f0a0340, new _cls2());
                return;
            }
            j1++;
        } while(true);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    public void onPause()
    {
        super.onPause();
        MMCore.h().a(this);
    }

    public void onResume()
    {
        super.onResume();
        MMCore.h().b(this);
    }

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        boolean flag;
        flag = true;
        Log.d("MicroMsg.ReaderAppImageViewUI", (new StringBuilder()).append("Main onTouch event.getAction():").append(motionevent.getAction()).toString());
        0xff & motionevent.getAction();
        JVM INSTR tableswitch 2 6: default 72
    //                   2 103
    //                   3 72
    //                   4 72
    //                   5 76
    //                   6 284;
           goto _L1 _L2 _L1 _L1 _L3 _L4
_L1:
        flag = false;
_L5:
        return flag;
_L3:
        d = a(motionevent);
        if(d > 5F)
            f = flag;
        continue; /* Loop/switch isn't completed */
_L2:
        if(!f)
            continue; /* Loop/switch isn't completed */
        e = a(motionevent);
        if(e < 5F)
            continue; /* Loop/switch isn't completed */
        float f1 = e - d;
        if(f1 == 0F)
            continue; /* Loop/switch isn't completed */
        if(Math.abs(f1) > 5F)
        {
            float f2 = f1 / 854F;
            ScaleAnimation scaleanimation = new ScaleAnimation(g, f2 + g, g, f2 + g, flag, 0.5F, flag, 0.5F);
            scaleanimation.setDuration(100L);
            scaleanimation.setFillAfter(flag);
            scaleanimation.setFillEnabled(flag);
            g = f2 + g;
            b.getSelectedView().setLayoutParams(new android.widget.Gallery.LayoutParams((int)(480F * g), (int)(854F * g)));
            d = e;
        }
        if(true) goto _L5; else goto _L4
_L4:
        f = false;
        if(true) goto _L1; else goto _L6
_L6:
    }

    private ImageAdapter a;
    private MMGallery b;
    private ReaderGallery c;
    private float d;
    private float e;
    private boolean f;
    private float g;
    private String h;
    private List i;
    private int j;
    private int k;
    private android.widget.AdapterView.OnItemSelectedListener l;

    private class _cls3
        implements android.widget.AdapterView.OnItemSelectedListener
    {

        public void onItemSelected(AdapterView adapterview, View view, int i1, long l1)
        {
            ReaderAppImageViewUI.a(a, i1);
            a.d((new StringBuilder()).append("").append(1 + ReaderAppImageViewUI.b(a)).append(" / ").append(ReaderAppImageViewUI.c(a).size()).toString());
            Log.d("MicroMsg.ReaderAppImageViewUI", (new StringBuilder()).append("pos:").append(i1).toString());
            ReaderAppImageViewUI.a(a, MMCore.h().a((String)ReaderAppImageViewUI.c(a).get(i1), ReaderAppImageViewUI.d(a), i1));
        }

        public void onNothingSelected(AdapterView adapterview)
        {
        }

        private ReaderAppImageViewUI a;

        _cls3()
        {
            a = ReaderAppImageViewUI.this;
            super();
        }
    }


    private class ImageAdapter extends BaseAdapter
    {

        public int getCount()
        {
            Log.d("MicroMsg.ReaderAppImageViewUI", (new StringBuilder()).append("lstpicurl:").append(ReaderAppImageViewUI.c(a).size()).toString());
            return ReaderAppImageViewUI.c(a).size();
        }

        public Object getItem(int i1)
        {
            return Integer.valueOf(i1);
        }

        public long getItemId(int i1)
        {
            return (long)i1;
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            class ViewHolder
            {

                ProgressBar a;
                ImageView b;
                private ImageAdapter c;

                ViewHolder()
                {
                    c = ImageAdapter.this;
                    super();
                }
            }

            ViewHolder viewholder;
            String s;
            if(view == null)
            {
                viewholder = new ViewHolder();
                view = View.inflate(a, 0x7f0300bb, null);
                viewholder.a = (ProgressBar)view.findViewById(0x7f0701f3);
                viewholder.b = (ImageView)view.findViewById(0x7f0701f2);
                view.setTag(viewholder);
            } else
            {
                viewholder = (ViewHolder)view.getTag();
            }
            view.setLayoutParams(new android.widget.Gallery.LayoutParams(-1, -1));
            s = MMCore.h().a((String)ReaderAppImageViewUI.c(a).get(i1), ReaderAppImageViewUI.d(a), i1);
            if(!Util.i(s))
            {
                viewholder.a.setVisibility(8);
                Bitmap bitmap = b.a.e.a(s, MMActivity.k());
                if(w.a())
                {
                    viewholder.b.setVisibility(8);
                    view = new ReaderImageView(a, bitmap.getWidth(), bitmap.getHeight());
                    view.setLayoutParams(new android.widget.Gallery.LayoutParams(-1, -1));
                    view.setImageBitmap(bitmap);
                } else
                {
                    viewholder.b.setImageBitmap(bitmap);
                    viewholder.b.setVisibility(0);
                    viewholder.b.setScaleType(android.widget.ImageView.ScaleType.MATRIX);
                }
            } else
            {
                viewholder.a.setVisibility(0);
                viewholder.b.setVisibility(8);
            }
            return view;
        }

        private ReaderAppImageViewUI a;

        public ImageAdapter()
        {
            a = ReaderAppImageViewUI.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private ReaderAppImageViewUI a;

        _cls1()
        {
            a = ReaderAppImageViewUI.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(ReaderAppImageViewUI.a(a) != null && !ReaderAppImageViewUI.a(a).equals(""))
                try
                {
                    String s = (new StringBuilder()).append(ConstantsStorage.c).append("reader_photo_").append(System.currentTimeMillis()).append(".jpg").toString();
                    FilesCopy.a(ReaderAppImageViewUI.a(a), s, false);
                    ReaderAppImageViewUI readerappimageviewui = a;
                    ReaderAppImageViewUI readerappimageviewui1 = a;
                    Object aobj[] = new Object[1];
                    aobj[0] = s;
                    Toast.makeText(readerappimageviewui, readerappimageviewui1.getString(0x7f0a0317, aobj), 1).show();
                    a.sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse((new StringBuilder()).append("file://").append(Environment.getExternalStorageDirectory()).toString())));
                }
                catch(Exception exception) { }
        }

        private ReaderAppImageViewUI a;

        _cls2()
        {
            a = ReaderAppImageViewUI.this;
            super();
        }
    }

}
