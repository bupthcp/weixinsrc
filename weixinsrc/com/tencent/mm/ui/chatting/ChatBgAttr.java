// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import java.util.Map;

public class ChatBgAttr
{

    public ChatBgAttr(String s)
    {
        Map map;
        String s1;
        a = 0;
        b = 0xff888888;
        c = false;
        d = 0xa0ffffff;
        e = false;
        f = 0xff000000;
        g = false;
        h = 0;
        i = false;
        map = Util.b(s, "chatbg");
        s1 = (new StringBuilder()).append(".").append("chatbg").toString();
        a = Util.a(Integer.valueOf((String)map.get((new StringBuilder()).append(s1).append(".$version").toString())));
        b = (int)Util.a(Long.valueOf(Long.parseLong((String)map.get((new StringBuilder()).append(s1).append(".$time_color").toString()), 16)), 0xffffffffff888888L);
        c = Util.b(Boolean.valueOf((String)map.get((new StringBuilder()).append(s1).append(".$time_show_shadow_color").toString())));
        d = (int)Util.a(Long.valueOf(Long.parseLong((String)map.get((new StringBuilder()).append(s1).append(".$time_shadow_color").toString()), 16)), 0L);
        e = Util.b(Boolean.valueOf((String)map.get((new StringBuilder()).append(s1).append(".$time_show_background").toString())));
        f = (int)Util.a(Long.valueOf(Long.parseLong((String)map.get((new StringBuilder()).append(s1).append(".$voice_second_color").toString()), 16)), 0xffffffffff000000L);
        g = Util.b(Boolean.valueOf((String)map.get((new StringBuilder()).append(s1).append(".$voice_second_show_shadow_color").toString())));
        h = (int)Util.a(Long.valueOf(Long.parseLong((String)map.get((new StringBuilder()).append(s1).append(".$voice_second_shadow_color").toString()), 16)), 0L);
        i = Util.b(Boolean.valueOf((String)map.get((new StringBuilder()).append(s1).append(".$voice_second_show_background").toString())));
_L1:
        return;
        Exception exception;
        exception;
        Log.a("MicroMsg.ChatBgAttr", "parse chatbgattr failed");
          goto _L1
    }

    public final int a()
    {
        return b;
    }

    public final int b()
    {
        return d;
    }

    public final boolean c()
    {
        return e;
    }

    public final int d()
    {
        return f;
    }

    public final int e()
    {
        return h;
    }

    public final boolean f()
    {
        return i;
    }

    public final boolean g()
    {
        return c;
    }

    public final boolean h()
    {
        return g;
    }

    private int a;
    private int b;
    private boolean c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private int h;
    private boolean i;
}
