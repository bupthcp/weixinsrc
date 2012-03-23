// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.plugin.qqmail.model.MailAppService;
import com.tencent.mm.plugin.qqmail.model.UploadFileStatus;
import java.io.File;
import java.util.*;

public class FileUploadHelper
{

    public FileUploadHelper(Context context, TextView textview, ViewGroup viewgroup)
    {
        d = new HashMap();
        e = null;
        a = context;
        b = viewgroup;
        c = textview;
        f();
    }

    static long a(FileUploadHelper fileuploadhelper, String s)
    {
        return fileuploadhelper.b(s);
    }

    static Context a(FileUploadHelper fileuploadhelper)
    {
        return fileuploadhelper.a;
    }

    private void a(UploadFileStatus uploadfilestatus)
    {
        LinearLayout linearlayout = (LinearLayout)((ViewGroup)View.inflate(a, 0x7f0300ac, null)).findViewById(0x7f0701cc);
        TextView textview = (TextView)linearlayout.findViewById(0x7f0701cd);
        ProgressBar progressbar = (ProgressBar)linearlayout.findViewById(0x7f0701ce);
        TextView textview1 = (TextView)linearlayout.findViewById(0x7f0701cf);
        ImageView imageview = (ImageView)linearlayout.findViewById(0x7f0701d0);
        ImageView imageview1 = (ImageView)linearlayout.findViewById(0x7f0701d1);
        ((ViewGroup)linearlayout.getParent()).removeView(linearlayout);
        textview.setText((new StringBuilder()).append(uploadfilestatus.d()).append(" (").append(Util.b(uploadfilestatus.e())).append(")").toString());
        ItemViewHolder itemviewholder = new ItemViewHolder();
        itemviewholder.a = textview;
        itemviewholder.b = progressbar;
        itemviewholder.c = textview1;
        itemviewholder.d = imageview;
        itemviewholder.e = imageview1;
        linearlayout.setTag(itemviewholder);
        linearlayout.setId(Math.abs(uploadfilestatus.c().hashCode()));
        b.addView(linearlayout);
        f();
        imageview.setOnClickListener(new _cls1(uploadfilestatus));
        imageview1.setOnClickListener(new _cls2(uploadfilestatus, linearlayout));
        b.post(new _cls3(uploadfilestatus));
        if(uploadfilestatus.f() == 0)
            uploadfilestatus.b(b(uploadfilestatus.c()));
    }

    static void a(FileUploadHelper fileuploadhelper, UploadFileStatus uploadfilestatus)
    {
        fileuploadhelper.b(uploadfilestatus);
    }

    private long b(String s)
    {
        com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions httpoptions = new com.tencent.mm.plugin.qqmail.model.MailAppService.HttpOptions();
        httpoptions.b();
        httpoptions.a();
        return MMCore.n().a("/cgi-bin/uploaddata", "UploadFile", s, httpoptions, new _cls4(s));
    }

    static Map b(FileUploadHelper fileuploadhelper)
    {
        return fileuploadhelper.d;
    }

    private void b(UploadFileStatus uploadfilestatus)
    {
        ItemViewHolder itemviewholder;
        int i = Math.abs(uploadfilestatus.c().hashCode());
        itemviewholder = (ItemViewHolder)((LinearLayout)b.findViewById(i)).getTag();
        uploadfilestatus.f();
        JVM INSTR tableswitch 0 3: default 64
    //                   0 65
    //                   1 65
    //                   2 111
    //                   3 149;
           goto _L1 _L2 _L2 _L3 _L4
_L1:
        return;
_L2:
        itemviewholder.a.setTextColor(0x7f080001);
        itemviewholder.b.setVisibility(0);
        itemviewholder.c.setVisibility(8);
        itemviewholder.d.setVisibility(8);
        itemviewholder.e.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L3:
        itemviewholder.b.setVisibility(8);
        itemviewholder.c.setVisibility(8);
        itemviewholder.d.setVisibility(8);
        itemviewholder.e.setVisibility(0);
        continue; /* Loop/switch isn't completed */
_L4:
        itemviewholder.a.setTextColor(0x7f080006);
        itemviewholder.b.setVisibility(8);
        itemviewholder.c.setVisibility(0);
        itemviewholder.d.setVisibility(0);
        itemviewholder.e.setVisibility(0);
        if(true) goto _L1; else goto _L5
_L5:
    }

    static void c(FileUploadHelper fileuploadhelper)
    {
        fileuploadhelper.f();
    }

    static ViewGroup d(FileUploadHelper fileuploadhelper)
    {
        return fileuploadhelper.b;
    }

    static void e(FileUploadHelper fileuploadhelper)
    {
        if(fileuploadhelper.d()) goto _L2; else goto _L1
_L1:
        if(fileuploadhelper.e != null)
        {
            OnUploadCompletedListener onuploadcompletedlistener = fileuploadhelper.e;
            fileuploadhelper.d.size();
            Iterator iterator1 = fileuploadhelper.d.keySet().iterator();
            String s1;
            do
            {
                if(!iterator1.hasNext())
                    break;
                s1 = (String)iterator1.next();
            } while(((UploadFileStatus)fileuploadhelper.d.get(s1)).f() == 2);
            onuploadcompletedlistener.a();
        }
_L4:
        return;
_L2:
        boolean flag;
        Iterator iterator = fileuploadhelper.d.keySet().iterator();
        String s;
        do
        {
            if(!iterator.hasNext())
                break; /* Loop/switch isn't completed */
            s = (String)iterator.next();
        } while(((UploadFileStatus)fileuploadhelper.d.get(s)).f() == 2);
        flag = false;
_L5:
        if(flag && fileuploadhelper.e != null)
            fileuploadhelper.e.b();
        if(true) goto _L4; else goto _L3
_L3:
        flag = true;
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private void f()
    {
        if(d.size() == 0)
        {
            c.setText((new StringBuilder()).append(a.getString(0x7f0a0447)).append(" ").append(a.getString(0x7f0a0448)).toString());
        } else
        {
            TextView textview = c;
            StringBuilder stringbuilder = (new StringBuilder()).append(a.getString(0x7f0a0447));
            Context context = a;
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(d.size());
            aobj[1] = Util.b(e());
            textview.setText(stringbuilder.append(context.getString(0x7f0a0449, aobj)).toString());
        }
    }

    public final String a()
    {
        String s = "";
        for(Iterator iterator = d.keySet().iterator(); iterator.hasNext();)
        {
            String s1 = (String)iterator.next();
            if(s.length() > 0)
                s = (new StringBuilder()).append(s).append("|").toString();
            s = (new StringBuilder()).append(s).append(((UploadFileStatus)d.get(s1)).h()).toString();
        }

        return s;
    }

    public final void a(OnUploadCompletedListener onuploadcompletedlistener)
    {
        e = onuploadcompletedlistener;
    }

    public final void a(String s)
    {
        if(s != null && s.length() != 0 && !d.containsKey(s)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        File file = new File(s);
        if(file.exists() && file.isFile())
        {
            UploadFileStatus uploadfilestatus = new UploadFileStatus();
            uploadfilestatus.a(s).b(file.getName()).a(file.length()).a(0);
            d.put(s, uploadfilestatus);
            a(uploadfilestatus);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final void a(List list)
    {
        if(list != null)
        {
            Iterator iterator = list.iterator();
            while(iterator.hasNext()) 
            {
                UploadFileStatus uploadfilestatus = (UploadFileStatus)iterator.next();
                a(uploadfilestatus);
                d.put(uploadfilestatus.c(), uploadfilestatus);
            }
        }
    }

    public final LinkedList b()
    {
        LinkedList linkedlist = new LinkedList();
        String s;
        for(Iterator iterator = d.keySet().iterator(); iterator.hasNext(); linkedlist.add(d.get(s)))
            s = (String)iterator.next();

        return linkedlist;
    }

    public final void c()
    {
        Iterator iterator = d.keySet().iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            String s = (String)iterator.next();
            UploadFileStatus uploadfilestatus = (UploadFileStatus)d.get(s);
            if(uploadfilestatus.f() != 2)
            {
                MMCore.n().a(uploadfilestatus.g());
                uploadfilestatus.a(3);
                b(uploadfilestatus);
            }
        } while(true);
    }

    public final boolean d()
    {
        Iterator iterator = d.keySet().iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        UploadFileStatus uploadfilestatus;
        String s = (String)iterator.next();
        uploadfilestatus = (UploadFileStatus)d.get(s);
        if(uploadfilestatus.f() == 2 || uploadfilestatus.f() == 3) goto _L4; else goto _L3
_L3:
        boolean flag = false;
_L6:
        return flag;
_L2:
        flag = true;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public final int e()
    {
        Iterator iterator = d.keySet().iterator();
        int i;
        String s;
        for(i = 0; iterator.hasNext(); i = (int)((long)i + ((UploadFileStatus)d.get(s)).e()))
            s = (String)iterator.next();

        return i;
    }

    private Context a;
    private ViewGroup b;
    private TextView c;
    private Map d;
    private OnUploadCompletedListener e;

    private class ItemViewHolder
    {

        TextView a;
        ProgressBar b;
        TextView c;
        ImageView d;
        ImageView e;
        private FileUploadHelper f;

        ItemViewHolder()
        {
            this((byte)0);
        }

        private ItemViewHolder(byte byte0)
        {
            f = FileUploadHelper.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            long l = FileUploadHelper.a(b, a.c());
            a.b(l);
        }

        private UploadFileStatus a;
        private FileUploadHelper b;

        _cls1(UploadFileStatus uploadfilestatus)
        {
            b = FileUploadHelper.this;
            a = uploadfilestatus;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            class _cls1
                implements android.content.DialogInterface.OnClickListener
            {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if(a.a.f() == 0 || a.a.f() == 1)
                        MMCore.n().a(a.a.g());
                    FileUploadHelper.b(a.c).remove(a.a.c());
                    FileUploadHelper.c(a.c);
                    FileUploadHelper.d(a.c).removeView(a.b);
                }

                private _cls2 a;

                _cls1()
                {
                    a = _cls2.this;
                    super();
                }
            }

            MMAlert.a(FileUploadHelper.a(c), 0x7f0a0465, 0x7f0a0010, new _cls1(), null);
        }

        final UploadFileStatus a;
        final LinearLayout b;
        final FileUploadHelper c;

        _cls2(UploadFileStatus uploadfilestatus, LinearLayout linearlayout)
        {
            c = FileUploadHelper.this;
            a = uploadfilestatus;
            b = linearlayout;
            super();
        }
    }


    private class _cls3
        implements Runnable
    {

        public void run()
        {
            FileUploadHelper.a(b, a);
        }

        private UploadFileStatus a;
        private FileUploadHelper b;

        _cls3(UploadFileStatus uploadfilestatus)
        {
            b = FileUploadHelper.this;
            a = uploadfilestatus;
            super();
        }
    }


    private class _cls4 extends com.tencent.mm.plugin.qqmail.model.MailAppService.CallBack
    {

        public final void a(int i, String s)
        {
            UploadFileStatus uploadfilestatus = (UploadFileStatus)FileUploadHelper.b(b).get(a);
            if(uploadfilestatus != null)
            {
                uploadfilestatus.a(3);
                FileUploadHelper.a(b, uploadfilestatus);
            }
            Toast.makeText(FileUploadHelper.a(b), (new StringBuilder()).append(s).append("(").append(i).append(")").toString(), 3000);
        }

        public final void a(String s, Map map)
        {
            String s1 = (String)map.get(".Response.result.DataID");
            UploadFileStatus uploadfilestatus = (UploadFileStatus)FileUploadHelper.b(b).get(a);
            if(uploadfilestatus != null)
            {
                uploadfilestatus.a(2);
                uploadfilestatus.c(s1);
                FileUploadHelper.a(b, uploadfilestatus);
            }
        }

        public final boolean a()
        {
            UploadFileStatus uploadfilestatus = (UploadFileStatus)FileUploadHelper.b(b).get(a);
            if(uploadfilestatus != null)
                uploadfilestatus.a(1);
            FileUploadHelper.a(b, uploadfilestatus);
            return true;
        }

        public final void b()
        {
            FileUploadHelper.e(b);
        }

        private String a;
        private FileUploadHelper b;

        _cls4(String s)
        {
            b = FileUploadHelper.this;
            a = s;
            super();
        }
    }


    private class OnUploadCompletedListener
    {

        public abstract void a();

        public abstract void b();
    }

}
