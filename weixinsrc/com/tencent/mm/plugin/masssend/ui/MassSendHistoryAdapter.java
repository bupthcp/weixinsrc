// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.masssend.ui;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Paint;
import android.view.*;
import android.widget.ImageView;
import android.widget.TextView;
import b.a.e;
import com.tencent.mm.model.*;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.modelvideo.VideoInfoStorage;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.masssend.model.MasSendInfo;
import com.tencent.mm.plugin.masssend.model.MasSendInfoStorage;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.util.*;

class MassSendHistoryAdapter extends MListAdapter
{

    public MassSendHistoryAdapter(Context context)
    {
        super(context, new MasSendInfo());
        j = "";
        m = (MMActivity)context;
        i = new LinkedList();
        k = 10;
        l = k;
        o = new SpanUtil(context, null);
    }

    private static int a(int i1)
    {
        int j1;
        if(i1 <= 2)
            j1 = 100;
        else
        if(i1 < 10)
            j1 = 100 + 8 * (i1 + -2);
        else
        if(i1 < 60)
            j1 = 100 + 8 * (7 + i1 / 10);
        else
            j1 = 204;
        return j1;
    }

    static String a(MassSendHistoryAdapter masssendhistoryadapter, String s)
    {
        masssendhistoryadapter.j = s;
        return s;
    }

    static List a(MassSendHistoryAdapter masssendhistoryadapter)
    {
        return masssendhistoryadapter.i;
    }

    static MMActivity b(MassSendHistoryAdapter masssendhistoryadapter)
    {
        return masssendhistoryadapter.m;
    }

    static OnVoicePlayListener c(MassSendHistoryAdapter masssendhistoryadapter)
    {
        return masssendhistoryadapter.n;
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        MasSendInfo massendinfo = (MasSendInfo)obj;
        if(massendinfo == null)
            massendinfo = new MasSendInfo();
        massendinfo.a(cursor);
        return massendinfo;
    }

    protected final void a()
    {
        b();
    }

    public final void a(OnVoicePlayListener onvoiceplaylistener)
    {
        n = onvoiceplaylistener;
    }

    public final void b()
    {
        l = MMCore.f().u().b();
        a(MMCore.f().u().a(k));
        int i1 = getCount();
        if(i1 > 0)
            h = new short[i1];
        super.notifyDataSetChanged();
    }

    public final void b(String s)
    {
        j = s;
        notifyDataSetChanged();
    }

    public final boolean c()
    {
        boolean flag;
        if(k >= l)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final int d()
    {
        int i1;
        if(c())
        {
            i1 = 0;
        } else
        {
            k = 10 + k;
            if(k <= l)
                i1 = 10;
            else
                i1 = l % 10;
        }
        return i1;
    }

    public final String e()
    {
        return j;
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        MasSendInfo massendinfo1;
        MasSendInfo massendinfo = (MasSendInfo)getItem(i1);
        boolean flag;
        if(i1 != 0)
        {
            long l2 = ((MasSendInfo)getItem(i1 + -1)).e();
            MasSendInfo massendinfo2 = (MasSendInfo)getItem(i1);
            long l3 = massendinfo2.e();
            TextView textview;
            MMActivity mmactivity;
            Object aobj[];
            TextView textview1;
            int j1;
            String s2;
            int k1;
            Paint paint;
            boolean flag2;
            boolean flag3;
            if(l3 - l2 < 60000L)
                flag2 = true;
            else
                flag2 = false;
            if((l3 - l2) / 0x2bf20L < 1L)
                flag3 = true;
            else
                flag3 = false;
            if(flag2 || flag3)
            {
                h[i1] = 2;
                massendinfo1 = massendinfo2;
            } else
            {
                h[i1] = 1;
                massendinfo1 = massendinfo2;
            }
        } else
        {
            h[i1] = 1;
            massendinfo1 = massendinfo;
        }
        if(h[i1] == 1 && massendinfo1.e() > 1000L)
            flag = true;
        else
            flag = false;
        massendinfo1.j();
        JVM INSTR lookupswitch 4: default 176
    //                   1: 594
    //                   3: 950
    //                   34: 757
    //                   43: 1113;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        ViewHolder viewholder1 = (ViewHolder)view.getTag();
        ViewHolder viewholder;
        ViewHolder viewholder7;
        ViewHolder viewholder8;
        ViewHolder viewholder9;
        if(flag)
        {
            viewholder1.j.setVisibility(0);
            viewholder1.j.setText(Util.a(m, massendinfo1.e(), false));
        } else
        {
            viewholder1.j.setVisibility(8);
        }
        massendinfo1.j();
        JVM INSTR lookupswitch 4: default 268
    //                   1: 1304
    //                   3: 1529
    //                   34: 1341
    //                   43: 1622;
           goto _L6 _L7 _L8 _L9 _L10
_L6:
        break; /* Loop/switch isn't completed */
_L10:
        break MISSING_BLOCK_LABEL_1622;
_L11:
        ViewHolder viewholder3 = (ViewHolder)view.getTag();
        textview = viewholder3.a;
        mmactivity = m;
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(massendinfo1.i());
        textview.setText(mmactivity.getString(0x7f0a042d, aobj));
        ViewHolder viewholder2;
        String s;
        android.graphics.Bitmap bitmap;
        ArrayList arraylist;
        String s1;
        boolean flag1;
        ViewHolder viewholder4;
        ImageView imageview;
        ViewHolder viewholder5;
        int i2;
        TextView textview2;
        MMActivity mmactivity1;
        Object aobj1[];
        ViewHolder viewholder6;
        if(i.contains(massendinfo1.c()))
        {
            viewholder3.b.setSingleLine(false);
            viewholder3.b.setEllipsize(null);
            viewholder3.f.setImageDrawable(m.a(0x7f0201b1));
        } else
        {
            viewholder3.b.setSingleLine(true);
            viewholder3.b.setEllipsize(android.text.TextUtils.TruncateAt.END);
            viewholder3.f.setImageDrawable(m.a(0x7f0201b0));
        }
        textview1 = viewholder3.b;
        arraylist = new ArrayList();
        if(massendinfo1.h() == null || massendinfo1.h().equals(""))
        {
            s1 = "";
        } else
        {
            String as[] = massendinfo1.h().split(";");
            Object obj;
            if(as != null && as.length > 0)
                obj = Util.a(as);
            else
                obj = arraylist;
            if(obj == null)
            {
                s1 = "";
            } else
            {
                StringBuilder stringbuilder = new StringBuilder();
                int l1 = 0;
                while(l1 < ((List) (obj)).size()) 
                {
                    String s3 = ContactStorageLogic.e((String)((List) (obj)).get(l1));
                    if(l1 == -1 + ((List) (obj)).size())
                        stringbuilder.append(s3);
                    else
                        stringbuilder.append((new StringBuilder()).append(s3).append(", ").toString());
                    l1++;
                }
                s1 = stringbuilder.toString();
            }
        }
        textview1.setText(s1);
        j1 = (int)viewholder3.b.getTextSize();
        s2 = viewholder3.b.getText().toString();
        k1 = b.a.e.a(m, 255F);
        paint = new Paint();
        paint.setTextSize(j1);
        if((int)paint.measureText(s2) > k1)
            flag1 = true;
        else
            flag1 = false;
        if(flag1)
            viewholder3.f.setVisibility(0);
        else
            viewholder3.f.setVisibility(8);
        viewholder3.i.setOnClickListener(new OnContactListClickListener(massendinfo1.c()));
        viewholder3.g.setOnClickListener(new OnSendAgainClickListener(massendinfo1.c()));
        return view;
_L2:
        viewholder9 = new ViewHolder();
        if(view == null || ((ViewHolder)view.getTag()).k != a)
        {
            view = LayoutInflater.from(m).inflate(0x7f03006a, null);
            viewholder9.a = (TextView)view.findViewById(0x7f07015e);
            viewholder9.b = (TextView)view.findViewById(0x7f07015f);
            viewholder9.c = (TextView)view.findViewById(0x7f070163);
            viewholder9.f = (ImageView)view.findViewById(0x7f070160);
            viewholder9.g = (TextView)view.findViewById(0x7f070162);
            viewholder9.j = (TextView)view.findViewById(0x7f07015c);
            viewholder9.i = view.findViewById(0x7f07015d);
            viewholder9.k = a;
            view.setTag(viewholder9);
        }
          goto _L1
_L4:
        viewholder8 = new ViewHolder();
        if(view == null || ((ViewHolder)view.getTag()).k != g)
        {
            view = LayoutInflater.from(m).inflate(0x7f03006c, null);
            viewholder8.a = (TextView)view.findViewById(0x7f07015e);
            viewholder8.b = (TextView)view.findViewById(0x7f07015f);
            viewholder8.d = (TextView)view.findViewById(0x7f070166);
            viewholder8.c = (TextView)view.findViewById(0x7f070167);
            viewholder8.h = (AnimImageView)view.findViewById(0x7f070168);
            viewholder8.f = (ImageView)view.findViewById(0x7f070160);
            viewholder8.g = (TextView)view.findViewById(0x7f070162);
            viewholder8.j = (TextView)view.findViewById(0x7f07015c);
            viewholder8.i = view.findViewById(0x7f07015d);
            viewholder8.k = g;
            view.setTag(viewholder8);
        }
          goto _L1
_L3:
        viewholder7 = new ViewHolder();
        if(view == null || ((ViewHolder)view.getTag()).k != b)
        {
            view = LayoutInflater.from(m).inflate(0x7f030069, null);
            viewholder7.a = (TextView)view.findViewById(0x7f07015e);
            viewholder7.b = (TextView)view.findViewById(0x7f07015f);
            viewholder7.e = (ImageView)view.findViewById(0x7f070161);
            viewholder7.f = (ImageView)view.findViewById(0x7f070160);
            viewholder7.g = (TextView)view.findViewById(0x7f070162);
            viewholder7.j = (TextView)view.findViewById(0x7f07015c);
            viewholder7.i = view.findViewById(0x7f07015d);
            viewholder7.k = b;
            view.setTag(viewholder7);
        }
          goto _L1
_L5:
        viewholder = new ViewHolder();
        if(view == null || ((ViewHolder)view.getTag()).k != f)
        {
            view = LayoutInflater.from(m).inflate(0x7f03006b, null);
            viewholder.a = (TextView)view.findViewById(0x7f07015e);
            viewholder.b = (TextView)view.findViewById(0x7f07015f);
            viewholder.e = (ImageView)view.findViewById(0x7f070161);
            viewholder.d = (TextView)view.findViewById(0x7f070164);
            viewholder.f = (ImageView)view.findViewById(0x7f070160);
            viewholder.g = (TextView)view.findViewById(0x7f070162);
            viewholder.j = (TextView)view.findViewById(0x7f07015c);
            viewholder.i = view.findViewById(0x7f07015d);
            viewholder.k = f;
            view.setTag(viewholder);
        }
          goto _L1
_L7:
        viewholder6 = (ViewHolder)view.getTag();
        viewholder6.c.setText(massendinfo1.f());
        o.a(viewholder6.c);
          goto _L11
_L9:
        viewholder5 = (ViewHolder)view.getTag();
        i2 = (int)((long)massendinfo1.k() / 1000L);
        if(i2 == 0)
            i2 = 1;
        if(massendinfo1.c().equals(j))
        {
            viewholder5.h.setVisibility(0);
            viewholder5.h.a();
        } else
        {
            viewholder5.h.setVisibility(8);
            viewholder5.h.b();
        }
        textview2 = viewholder5.d;
        mmactivity1 = m;
        aobj1 = new Object[1];
        aobj1[0] = Integer.valueOf(i2);
        textview2.setText(mmactivity1.getString(0x7f0a009b, aobj1));
        viewholder5.c.setWidth((int)((float)a(i2) * MMActivity.k()));
        viewholder5.h.setWidth((int)((float)a(i2) * MMActivity.k()));
        viewholder5.c.setOnClickListener(new OnVoiceClickListener(massendinfo1.c()));
          goto _L11
_L8:
        viewholder4 = (ViewHolder)view.getTag();
        if(MMCore.f().c())
        {
            imageview = viewholder4.e;
            MMCore.f().u();
            imageview.setImageBitmap(MasSendInfoStorage.a(massendinfo1.g(), MMActivity.k()));
        } else
        {
            viewholder4.e.setImageDrawable(m.a(0x7f0201f3));
        }
        viewholder4.e.setOnClickListener(new OnImageClickListener(massendinfo1.f()));
          goto _L11
        viewholder2 = (ViewHolder)view.getTag();
        s = MMCore.f().p().e(massendinfo1.f());
        bitmap = MMCore.f().k().a(s, MMActivity.k(), m);
        if(bitmap == null)
        {
            if(!MMCore.f().c())
                viewholder2.e.setImageDrawable(m.a(0x7f0202e6));
            else
                viewholder2.e.setImageDrawable(m.a(0x7f020104));
        } else
        {
            viewholder2.e.setImageBitmap(bitmap);
        }
        viewholder2.e.setOnClickListener(new OnVideoClickListener(massendinfo1.f(), massendinfo1.q(), massendinfo1.m(), massendinfo1.k()));
        if(massendinfo1.q() == 2)
        {
            viewholder2.d.setVisibility(8);
        } else
        {
            viewholder2.d.setVisibility(0);
            viewholder2.d.setText(Util.b(massendinfo1.k()));
        }
          goto _L11
    }

    private static short a = 1;
    private static short b = 2;
    private static short f = 3;
    private static short g = 4;
    private short h[];
    private List i;
    private String j;
    private int k;
    private int l;
    private MMActivity m;
    private OnVoicePlayListener n;
    private final SpanUtil o;


    private class ViewHolder
    {

        TextView a;
        TextView b;
        TextView c;
        TextView d;
        ImageView e;
        ImageView f;
        TextView g;
        AnimImageView h;
        View i;
        TextView j;
        short k;

        ViewHolder()
        {
        }
    }


    private class OnContactListClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(MassSendHistoryAdapter.a(b).contains(a))
                MassSendHistoryAdapter.a(b).remove(a);
            else
                MassSendHistoryAdapter.a(b).add(a);
            b.notifyDataSetChanged();
        }

        private String a;
        private MassSendHistoryAdapter b;

        public OnContactListClickListener(String s)
        {
            b = MassSendHistoryAdapter.this;
            super();
            a = s;
        }
    }


    private class OnSendAgainClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            MasSendInfo massendinfo = MMCore.f().u().a(a);
            Intent intent = new Intent(MassSendHistoryAdapter.b(b), com/tencent/mm/plugin/masssend/ui/MassSendMsgUI);
            intent.putExtra("mass_send_contact_list", massendinfo.h());
            intent.putExtra("mass_send_again", true);
            MassSendHistoryAdapter.b(b).startActivity(intent);
        }

        private String a;
        private MassSendHistoryAdapter b;

        public OnSendAgainClickListener(String s)
        {
            b = MassSendHistoryAdapter.this;
            super();
            a = s;
        }
    }


    private class OnVoiceClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Log.e("MicroMsg.HistoryAdapter", (new StringBuilder()).append("voice clicked:").append(a).toString());
            if(MassSendHistoryAdapter.c(b) != null)
            {
                MassSendHistoryAdapter.a(b, MassSendHistoryAdapter.c(b).a(a));
                b.notifyDataSetChanged();
            }
        }

        private String a;
        private MassSendHistoryAdapter b;

        public OnVoiceClickListener(String s)
        {
            b = MassSendHistoryAdapter.this;
            super();
            a = s;
        }

        private class OnVoicePlayListener
        {

            public abstract String a(String s);
        }

    }


    private class OnImageClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Log.e("MicroMsg.HistoryAdapter", (new StringBuilder()).append("image clicked:").append(a).toString());
            if(!MMCore.f().c())
            {
                com.tencent.mm.ui.MMToast.ToastSdcard.a(MassSendHistoryAdapter.b(b), 1);
            } else
            {
                String s = (new StringBuilder()).append(MMCore.f().M()).append(a).toString();
                if(s == null || s.equals("") || !FileOperation.c(s))
                {
                    Log.d("MicroMsg.HistoryAdapter", "showImg : imgPath is null");
                } else
                {
                    Intent intent = new Intent(MassSendHistoryAdapter.b(b), com/tencent/mm/ui/tools/CropImageUI);
                    intent.putExtra("CropImage_ImgPath", s);
                    intent.putExtra("CropImage_bCrop", false);
                    MassSendHistoryAdapter.b(b).startActivity(intent);
                }
            }
        }

        private String a;
        private MassSendHistoryAdapter b;

        public OnImageClickListener(String s)
        {
            b = MassSendHistoryAdapter.this;
            super();
            a = s;
        }
    }


    private class OnVideoClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Log.e("MicroMsg.HistoryAdapter", (new StringBuilder()).append("video clicked:").append(a).toString());
            boolean flag;
            if(b == 2)
                flag = true;
            else
                flag = false;
            if(flag)
            {
                if(!VideoPlayerUI.a(a, MassSendHistoryAdapter.b(e)))
                    Toast.makeText(MassSendHistoryAdapter.b(e), MassSendHistoryAdapter.b(e).getString(0x7f0a032e), 0).show();
            } else
            {
                Intent intent = new Intent(MassSendHistoryAdapter.b(e), com/tencent/mm/ui/video/VideoPlayerUI);
                intent.putExtra("VideoPlayer_File_nam", a);
                intent.putExtra("VideoRecorder_VideoLength", d);
                intent.putExtra("VideoRecorder_VideoSize", c);
                MassSendHistoryAdapter.b(e).startActivity(intent);
            }
        }

        private String a;
        private int b;
        private int c;
        private int d;
        private MassSendHistoryAdapter e;

        public OnVideoClickListener(String s, int i1, int j1, int k1)
        {
            e = MassSendHistoryAdapter.this;
            super();
            a = s;
            b = i1;
            d = k1;
            c = j1;
        }
    }

}
