// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.tencent.mm.modelemoji.EmojiInfo;
import com.tencent.mm.platformtools.LocaleUtil;
import com.tencent.mm.platformtools.SmileyUtil;

public final class EmojiManager
{

    private EmojiManager(Context context)
    {
        b = context.getResources().getStringArray(0x7f06000f);
        c = context.getResources().getStringArray(0x7f06000c);
        e = context.getResources().getStringArray(0x7f06000e);
        d = context.getResources().getStringArray(0x7f06000d);
        String as[] = context.getResources().getStringArray(0x7f06000b);
        f = new int[as.length];
        for(int i = 0; i < as.length; i++)
            f[i] = Integer.parseInt(as[i]);

        g = MappingDrawable.Factory.a(context, 0x7f02010d, 32);
    }

    public static Drawable a(Context context, int i)
    {
        return c(context).g.a(i);
    }

    private static ArtEmojiProfile a(EmojiInfo emojiinfo)
    {
        String s = emojiinfo.p();
        ArtEmojiProfile artemojiprofile;
        if(s == null || s.length() == 0)
        {
            artemojiprofile = null;
        } else
        {
            artemojiprofile = new ArtEmojiProfile();
            String as[] = s.split(";");
            int i = as.length;
            int j = 0;
            while(j < i) 
            {
                String as1[] = as[j].split(":");
                if(as1.length == 2)
                {
                    String s1 = as1[0];
                    String s2 = as1[1];
                    if(s1.equalsIgnoreCase("zh_CN"))
                        artemojiprofile.a = s2;
                    else
                    if(s1.equalsIgnoreCase("zh_TW"))
                        artemojiprofile.b = s2;
                    else
                    if(s1.equalsIgnoreCase("en"))
                        artemojiprofile.c = s2;
                    else
                    if(s1.equalsIgnoreCase("icon"))
                        artemojiprofile.d = s2;
                }
                j++;
            }
        }
        return artemojiprofile;
    }

    public static String a(Context context, EmojiInfo emojiinfo)
    {
        ArtEmojiProfile artemojiprofile = a(emojiinfo);
        String s;
        if(artemojiprofile != null)
        {
            String s1 = LocaleUtil.a(context.getSharedPreferences("com.tencent.mm_preferences", 0));
            if(s1.equals("zh_TW") || s1.equals("zh_HK"))
                s = artemojiprofile.b;
            else
            if(s1.equals("en"))
                s = artemojiprofile.c;
            else
                s = artemojiprofile.a;
        } else
        {
            int i = Integer.parseInt(emojiinfo.n());
            String as[] = context.getResources().getStringArray(0x7f060015);
            if(as.length < i)
                s = "";
            else
                s = as[i];
        }
        return s;
    }

    public static void a()
    {
        a = null;
    }

    public static int[] a(Context context)
    {
        return c(context).f;
    }

    public static Drawable b(Context context, EmojiInfo emojiinfo)
    {
        Object obj;
        ArtEmojiProfile artemojiprofile;
        obj = null;
        artemojiprofile = a(emojiinfo);
        if(artemojiprofile == null) goto _L2; else goto _L1
_L1:
        int j;
        if(artemojiprofile.d == null || artemojiprofile.d.length() <= 0)
            break MISSING_BLOCK_LABEL_160;
        (new StringBuilder()).append("icon:").append(Integer.toHexString(artemojiprofile.d.charAt(0))).toString();
        j = SmileyUtil.a(artemojiprofile.d.charAt(0));
        if(j == -1) goto _L4; else goto _L3
_L3:
        obj = a(context, j);
_L5:
        return ((Drawable) (obj));
_L4:
        Object obj1 = obj;
_L6:
        if(obj1 != null)
        {
            int i = context.getResources().getIdentifier(((String) (obj1)), "drawable", context.getPackageName());
            if(i != 0)
                obj = (BitmapDrawable)context.getResources().getDrawable(i);
        }
        if(true) goto _L5; else goto _L2
_L2:
        obj1 = (new StringBuilder()).append("art_emoji_").append(emojiinfo.n()).toString();
          goto _L6
        obj1 = obj;
          goto _L6
    }

    public static String[] b(Context context)
    {
        return c(context).b;
    }

    private static EmojiManager c(Context context)
    {
        if(a == null)
            a = new EmojiManager(context);
        return a;
    }

    private static EmojiManager a = null;
    private String b[];
    private String c[];
    private String d[];
    private String e[];
    private int f[];
    private MappingDrawable.Factory g;


    private class ArtEmojiProfile
    {

        String a;
        String b;
        String c;
        String d;

        ArtEmojiProfile()
        {
            this((byte)0);
        }

        private ArtEmojiProfile(byte byte0)
        {
            a = "";
            b = "";
            c = "";
            d = "emoji_33";
        }
    }

}
