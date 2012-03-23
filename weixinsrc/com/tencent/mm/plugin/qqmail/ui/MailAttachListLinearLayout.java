// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.Map;

public class MailAttachListLinearLayout extends LinearLayout
{

    public MailAttachListLinearLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        a = context;
    }

    static Context a(MailAttachListLinearLayout mailattachlistlinearlayout)
    {
        return mailattachlistlinearlayout.a;
    }

    static String a(String s, String s1)
    {
        String s2 = null;
        if(s != null && s.length() != 0 && s1 != null && s1.length() != 0) goto _L2; else goto _L1
_L1:
        return s2;
_L2:
        int i = s.indexOf(s1);
        if(i != -1)
        {
            int j = s.indexOf("&", i);
            if(j == -1)
                j = s.length();
            s2 = s.substring(1 + (i + s1.length()), j);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(String s)
    {
        String s1 = Util.h(s).toLowerCase();
        boolean flag;
        if(s1.endsWith(".bmp") || s1.endsWith(".png") || s1.endsWith(".jpg") || s1.endsWith(".jpeg") || s1.endsWith(".gif"))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean b(String s)
    {
        String s1 = Util.h(s).toLowerCase();
        boolean flag;
        if(s1.endsWith(".txt") || s1.endsWith(".pdf") || s1.endsWith(".doc") || s1.endsWith(".docx") || s1.endsWith(".xls") || s1.endsWith(".xlsx") || s1.endsWith(".ppt") || s1.endsWith(".pptx") || s1.endsWith(".rtf"))
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final void a(Map map)
    {
        int i = Integer.parseInt(Util.a((String)map.get(".Response.result.attachlen"), "0"));
        if(i != 0) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.MailAttachListLinearLayout", "inflate, attachLen = 0");
_L4:
        return;
_L2:
        LayoutInflater layoutinflater = (LayoutInflater)a.getSystemService("layout_inflater");
        int j = 0;
        do
        {
            String s;
            if(j < i)
            {
label0:
                {
                    StringBuffer stringbuffer = new StringBuffer(".Response.result.attachlist.item");
                    if(j != 0)
                        stringbuffer.append(j);
                    s = stringbuffer.toString();
                    if(map.get(s) != null)
                        break label0;
                    Log.a("MicroMsg.MailAttachListLinearLayout", (new StringBuilder()).append("item is null, itemKey = ").append(s).toString());
                }
            }
            if(true)
                continue;
            View view = layoutinflater.inflate(0x7f0300c0, null);
            addView(view);
            String s1 = (String)map.get((new StringBuilder()).append(s).append(".name").toString());
            ((TextView)view.findViewById(0x7f07020f)).setText(s1);
            ((TextView)view.findViewById(0x7f070210)).setText((new StringBuilder()).append("(").append(Util.b(Long.parseLong((String)map.get((new StringBuilder()).append(s).append(".size").toString())))).append(")").toString());
            ImageView imageview = (ImageView)view.findViewById(0x7f070211);
            int k = Integer.parseInt(Util.a((String)map.get((new StringBuilder()).append(s).append(".preview").toString()), "0"));
            ImageView imageview1;
            if(k == 0)
            {
                imageview.setVisibility(4);
            } else
            {
                imageview.setVisibility(0);
                view.setOnClickListener(new _cls1(map, s));
            }
            imageview1 = (ImageView)view.findViewById(0x7f07020e);
            if(k != 0 && a(s1))
                imageview1.setImageResource(0x7f020161);
            else
            if(k != 0 && b(s1))
                imageview1.setImageResource(0x7f020160);
            j++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private Context a;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String as[] = new String[3];
            as[0] = (new StringBuilder()).append("mailid=").append(MailAttachListLinearLayout.a((String)a.get((new StringBuilder()).append(b).append(".path").toString()), "mailid")).toString();
            Intent intent;
            try
            {
                as[1] = (new StringBuilder()).append("attachid=").append(URLDecoder.decode(MailAttachListLinearLayout.a((String)a.get((new StringBuilder()).append(b).append(".path").toString()), "attachid"), "utf-8")).toString();
            }
            catch(UnsupportedEncodingException unsupportedencodingexception) { }
            as[2] = "texttype=html";
            intent = new Intent();
            intent.putExtra("uri", "/cgi-bin/viewdocument");
            intent.putExtra("params", as);
            intent.putExtra("baseurl", "https://qqmail.weixin.qq.com");
            intent.putExtra("method", "get");
            intent.putExtra("title", MailAttachListLinearLayout.a(c).getString(0x7f0a0440));
            intent.setClass(MailAttachListLinearLayout.a(c), com/tencent/mm/plugin/qqmail/ui/MailWebViewUI);
            MailAttachListLinearLayout.a(c).startActivity(intent);
        }

        private Map a;
        private String b;
        private MailAttachListLinearLayout c;

        _cls1(Map map, String s)
        {
            c = MailAttachListLinearLayout.this;
            a = map;
            b = s;
            super();
        }
    }

}
