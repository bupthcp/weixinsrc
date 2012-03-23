// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.ImageSpan;
import android.widget.TextView;
import b.a.e;
import com.tencent.mm.algorithm.LRUMap;
import com.tencent.mm.model.*;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.SmileyUtil;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.storage.GroupInfo;
import com.tencent.mm.ui.*;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.contact.ContactInfoUI;
import com.tencent.mm.ui.friend.MobileFriendUI;
import com.tencent.mm.ui.friend.QQGroupUI;
import com.tencent.mm.ui.qrcode.ShareMicroMsgChoiceUI;
import com.tencent.mm.ui.setting.*;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            SmileyManager, SmileyData

public class SpanUtil
{

    public SpanUtil(Context context, OnClickListener onclicklistener)
    {
        a = context;
        d = onclicklistener;
    }

    static Context a(SpanUtil spanutil)
    {
        return spanutil.a;
    }

    public static SpannableString a(Context context, String s, int j)
    {
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        SpannableString spannablestring = new SpannableString("");
_L4:
        return spannablestring;
_L2:
        String s1 = (new StringBuilder()).append(s).append("@").append(j).toString();
        spannablestring = (SpannableString)i.a(s1);
        if(spannablestring == null)
        {
            spannablestring = c(context, s, j);
            i.a(s1, spannablestring);
            Log.e("MicroMsg.SpanUtil", "update emojiSpannableString cache");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static SpannableString a(String s, SpannableString spannablestring, int j)
    {
        char ac[] = s.toCharArray();
        if(MMCore.f().l().a(s))
        {
            for(int k = 0; k < ac.length; k++)
                if(ac[k] == ' ')
                {
                    BitmapDrawable bitmapdrawable = new BitmapDrawable();
                    bitmapdrawable.setBounds(0, 0, (int)((float)j * h), (int)((float)j * h));
                    spannablestring.setSpan(new ImageSpan(bitmapdrawable, 1), k, k + 1, 33);
                }

        }
        return spannablestring;
    }

    private static String a(String s, String s1, String s2)
    {
        String s3;
        if(s2 == null || s == null || s1 == null)
        {
            s3 = null;
        } else
        {
            StringBuffer stringbuffer = new StringBuffer("");
            do
            {
                int j = s2.indexOf(s);
                if(j == -1)
                    break;
                stringbuffer.append((new StringBuilder()).append(s2.substring(0, j)).append(s1).toString());
                s2 = s2.substring(j + s.length());
                s2.indexOf(s);
            } while(true);
            stringbuffer.append(s2);
            s3 = stringbuffer.toString();
        }
        return s3;
    }

    public static void a()
    {
        SmileyManager.a();
        EmojiManager.a();
        i.a();
    }

    private static void a(int j, TextView textview, SpannableString spannablestring)
    {
        int k = b.a.e.a(textview.getContext(), g);
        String s = (new StringBuilder()).append("").append(spannablestring.subSequence(j, spannablestring.length())).toString();
        SmileyData smileydata = SmileyManager.a(textview.getContext(), s);
        if(smileydata != null)
        {
            Drawable drawable = SmileyManager.a(textview.getContext(), smileydata.a);
            if(drawable != null)
            {
                drawable.setBounds(0, 0, k + (int)textview.getTextSize(), k + (int)textview.getTextSize());
                spannablestring.setSpan(new ImageSpan(drawable, 1), j, j + smileydata.b.length(), 33);
            }
        }
    }

    public static void a(Context context, String s)
    {
        if(s.startsWith("http"))
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            intent.addFlags(0x10000000);
            context.startActivity(intent);
        }
        if(s.equals("weixin://contacts/microblog/") || s.equals("weixin://contacts/micromessenger/") || s.equals("weixin://contacts/all/"))
        {
            GroupInfo groupinfo = GroupInfoLogic.b(context.getString(0x7f0a0045));
            if(s.equals("weixin://contacts/microblog/"))
                groupinfo = GroupInfoLogic.b(context.getString(0x7f0a0046));
            if(s.equals("weixin://contacts/micromessenger/"))
                groupinfo = GroupInfoLogic.b(context.getString(0x7f0a0045));
            if(s.equals("weixin://contacts/all/"))
                groupinfo = GroupInfoLogic.b(context.getString(0x7f0a0044));
            Intent intent1 = new Intent();
            intent1.setClass(context, com/tencent/mm/ui/AddressUI);
            intent1.putExtra("Contact_GroupFilter_Type", groupinfo.a()).putExtra("Contact_GroupFilter_Str", groupinfo.d()).putExtra("Contact_GroupFilter_DisplayName", groupinfo.c());
            intent1.addFlags(0x10000000);
            MainTabUI.a().b("tab_address");
        }
        if(s.startsWith("weixin://contacts/profile/"))
        {
            String s1 = s.trim().replace("weixin://contacts/profile/", "").replace("/", "");
            Intent intent8 = new Intent();
            intent8.setClass(context, com/tencent/mm/ui/contact/ContactInfoUI);
            intent8.addFlags(0x10000000);
            intent8.putExtra("Contact_User", s1);
            context.startActivity(intent8);
        }
        if(s.equals("weixin://setting/bindphone"))
            MMWizardActivity.a(context, new Intent(context, com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
        if(s.equals("weixin://setting/setheadimage"))
        {
            Intent intent2 = new Intent(context, com/tencent/mm/ui/contact/ContactInfoUI);
            intent2.putExtra("Contact_User", ConfigStorageLogic.b());
            intent2.putExtra("Contact_Nick", (String)MMCore.f().f().a(4));
            intent2.putExtra("User_Avatar", true);
            context.startActivity(intent2);
        }
        if(s.equals("weixin://setting/binddomain") || s.equals("weixin://flowstat"))
        {
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.d();
        }
        if(s.equals("weixin://setting/binddomain"))
        {
            MainTabUI.a().b("tab_settings");
            Intent intent7 = new Intent(context, com/tencent/mm/ui/setting/SettingsAboutDomainMailUI);
            intent7.addFlags(0x4000000);
            SettingsUIGroup.a.a(intent7);
        }
        if(s.equals("weixin://setting/notify"))
        {
            MainTabUI.a().b("tab_settings");
            Intent intent6 = new Intent(context, com/tencent/mm/ui/setting/SettingsNotificationUI);
            intent6.addFlags(0x4000000);
            SettingsUIGroup.a.a(intent6);
        }
        if(s.equals("weixin://setting/plugin/qqmail"))
        {
            Intent intent3 = new Intent();
            intent3.setClass(context, com/tencent/mm/ui/contact/ContactInfoUI);
            intent3.putExtra("Contact_User", "qqmail");
            context.startActivity(intent3);
        }
        if(s.equals("weixin://setting/plugin/lomo"))
        {
            Intent intent4 = new Intent();
            intent4.setClass(context, com/tencent/mm/ui/contact/ContactInfoUI);
            intent4.putExtra("Contact_User", "weibo");
            context.startActivity(intent4);
        }
        if(s.equals("weixin://setting/blacklist"))
        {
            GroupInfo groupinfo1 = GroupInfoLogic.a(context.getString(0x7f0a0048));
            Intent intent5 = new Intent();
            intent5.setClass(context, com/tencent/mm/ui/AddressUI);
            intent5.putExtra("Contact_GroupFilter_Type", groupinfo1.a());
            intent5.putExtra("Contact_GroupFilter_DisplayName", groupinfo1.c());
            intent5.addFlags(0x4000000);
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.a(intent5);
        }
        if(s.equals("weixin://setting/privacy"))
        {
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.a(new Intent(context, com/tencent/mm/ui/setting/SettingsAboutPrivacyUI));
        }
        if(s.equals("weixin://findfriend/search"))
            context.startActivity(new Intent(context, com/tencent/mm/ui/ContactSearchUI));
        if(s.equals("weixin://findfriend/share"))
            context.startActivity(new Intent(context, com/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI));
        if(s.equals("weixin://findfriend/qq"))
            context.startActivity(new Intent(context, com/tencent/mm/ui/friend/QQGroupUI));
        if(s.equals("weixin://findfriend/mobile"))
            context.startActivity(new Intent(context, com/tencent/mm/ui/friend/MobileFriendUI));
        Log.e("MicroMsg.SpanUtil", "no such link");
    }

    private static void a(TextView textview, SpannableString spannablestring)
    {
        String s = textview.getText().toString();
        if(s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j = -1;
        do
        {
            j = s.indexOf('/', j + 1);
            if(j == -1)
                break;
            if(j < -1 + s.length())
                a(j, textview, spannablestring);
        } while(true);
        do
        {
            j = s.indexOf('[', j + 1);
            if(j == -1)
                break;
            if(j < -1 + s.length())
                a(j, textview, spannablestring);
        } while(true);
        char ac[] = textview.getText().toString().toCharArray();
        int k = b.a.e.a(textview.getContext(), g) + (int)textview.getTextSize();
        for(int l = 0; l < ac.length; l++)
        {
            int j1 = SmileyUtil.a(ac[l]);
            if(j1 == -1)
                continue;
            Drawable drawable = EmojiManager.a(textview.getContext(), j1);
            if(drawable != null)
            {
                drawable.setBounds(0, 0, k, k);
                spannablestring.setSpan(new ImageSpan(drawable, 1), l, l + 1, 33);
            }
        }

        String s1 = MsgInfoStorageLogic.b(textview.getText().toString());
        if(MMCore.f().l().a(s1))
        {
            int i1 = 0;
            while(i1 < ac.length) 
            {
                if(ac[i1] == ' ')
                {
                    BitmapDrawable bitmapdrawable = new BitmapDrawable();
                    bitmapdrawable.setBounds(0, 0, (int)((float)k * h), (int)((float)k * h));
                    spannablestring.setSpan(new ImageSpan(bitmapdrawable, 1), i1, i1 + 1, 33);
                }
                i1++;
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static SpannableString b(Context context, String s, int j)
    {
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        SpannableString spannablestring = new SpannableString("");
_L4:
        return spannablestring;
_L2:
        String s1 = (new StringBuilder()).append(s).append("@").append(j).toString();
        spannablestring = (SpannableString)i.a(s1);
        if(spannablestring == null)
            spannablestring = a(s, c(context, s, j), j);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static SpannableString b(TextView textview)
    {
        SpannableString spannablestring = new SpannableString(textview.getText());
        a(textview, spannablestring);
        return spannablestring;
    }

    static OnClickListener b(SpanUtil spanutil)
    {
        return spanutil.d;
    }

    private static SpannableString c(Context context, String s, int j)
    {
        SpannableString spannablestring;
        char ac[];
        spannablestring = new SpannableString((new StringBuilder()).append(s).append(" ").toString());
        ac = s.toCharArray();
        j;
        JVM INSTR tableswitch -2 -1: default 56
    //                   -2 161
    //                   -1 147;
           goto _L1 _L2 _L3
_L1:
        int k = j + b.a.e.a(context, g);
        for(int l = 0; l < ac.length; l++)
        {
            int i1 = SmileyUtil.a(ac[l]);
            if(i1 != -1)
            {
                Drawable drawable = EmojiManager.a(context, i1);
                if(drawable != null)
                {
                    drawable.setBounds(0, 0, k, k);
                    spannablestring.setSpan(new ImageSpan(drawable, 1), l, l + 1, 33);
                }
            }
        }

        break; /* Loop/switch isn't completed */
_L3:
        j = context.getResources().getDimensionPixelSize(0x7f090002);
        continue; /* Loop/switch isn't completed */
_L2:
        j = context.getResources().getDimensionPixelSize(0x7f090003);
        if(true) goto _L1; else goto _L4
_L4:
        return spannablestring;
    }

    private void c(TextView textview)
    {
        HrefInfo hrefinfo;
        for(Matcher matcher = c.matcher(textview.getText()); matcher.find(); e.add(hrefinfo))
            hrefinfo = new HrefInfo(matcher.start(), matcher.end(), matcher.group(), 1, null);

    }

    public final void a(TextView textview)
    {
        String s;
        SpannableString spannablestring;
        s = (new StringBuilder()).append(textview.getText().toString()).append("@").append(textview.getTextSize()).toString();
        spannablestring = (SpannableString)i.a(s);
        if(spannablestring == null) goto _L2; else goto _L1
_L1:
        textview.setText(spannablestring);
        textview.setMovementMethod(LinkMovementMethod.getInstance());
        textview.setFocusable(false);
_L9:
        return;
_L2:
        Object obj;
        Pattern pattern;
        Matcher matcher;
        e = new LinkedList();
        obj = textview.getText().toString();
        pattern = Pattern.compile(b[0]);
        matcher = pattern.matcher(((CharSequence) (obj)));
_L3:
        String s2;
        CharSequence charsequence1;
        int j;
        int k;
        Matcher matcher1;
        boolean flag;
        if(!matcher.find())
            break MISSING_BLOCK_LABEL_1485;
        String s1 = matcher.group(0);
        s2 = matcher.group(1);
        String s3 = matcher.group(2);
        String s4 = obj.toString().trim();
        textview.setText(a(s1, (new StringBuilder()).append(" ").append(s3).append(" ").toString(), s4));
        charsequence1 = textview.getText();
        j = 1 + matcher.start(0);
        k = j + s3.length();
        matcher1 = pattern.matcher(charsequence1);
        if(s2.length() < 2)
            break MISSING_BLOCK_LABEL_1636;
        if(s2.trim().startsWith("http"))
        {
            HrefInfo hrefinfo1 = new HrefInfo(j, k, s2, 1, null);
            e.add(hrefinfo1);
        } else
        if(s2.trim().equals("weixin://contacts/all/"))
        {
            HrefInfo hrefinfo2 = new HrefInfo(j, k, s2, 23, new GroupInfo("@all.android", null, a.getString(0x7f0a0044), null, true, true));
            e.add(hrefinfo2);
        } else
        if(s2.trim().equals("weixin://contacts/microblog/"))
        {
            HrefInfo hrefinfo3 = new HrefInfo(j, k, s2, 22, GroupInfoLogic.b(a.getString(0x7f0a0046)));
            e.add(hrefinfo3);
        } else
        if(s2.trim().equals("weixin://contacts/micromessenger/"))
        {
            HrefInfo hrefinfo4 = new HrefInfo(j, k, s2, 2, new GroupInfo("@micromsg.qq.com", null, a.getString(0x7f0a0045), null, true, true));
            e.add(hrefinfo4);
        } else
        if(s2.trim().startsWith("weixin://contacts/profile/"))
        {
            HrefInfo hrefinfo5 = new HrefInfo(j, k, s2, 3, s2.trim().replace("weixin://contacts/profile/", "").replace("/", ""));
            e.add(hrefinfo5);
        } else
        if(s2.trim().startsWith("weixin://findfriend/verifycontact"))
        {
            HrefInfo hrefinfo6 = new HrefInfo(j, k, s2, 4, null);
            e.add(hrefinfo6);
        } else
        if(s2.trim().startsWith("weixin://setting/bindphone"))
        {
            HrefInfo hrefinfo7 = new HrefInfo(j, k, s2, 5, null);
            e.add(hrefinfo7);
        } else
        if(s2.trim().startsWith("weixin://setting/setheadimage"))
        {
            HrefInfo hrefinfo8 = new HrefInfo(j, k, s2, 6, null);
            e.add(hrefinfo8);
        } else
        if(s2.trim().startsWith("weixin://setting/bindemail"))
        {
            HrefInfo hrefinfo9 = new HrefInfo(j, k, s2, 7, null);
            e.add(hrefinfo9);
        } else
        if(s2.trim().startsWith("weixin://setting/binddomain"))
        {
            HrefInfo hrefinfo10 = new HrefInfo(j, k, s2, 8, null);
            e.add(hrefinfo10);
        } else
        if(s2.trim().startsWith("weixin://setting/notify"))
        {
            HrefInfo hrefinfo11 = new HrefInfo(j, k, s2, 9, null);
            e.add(hrefinfo11);
        } else
        if(s2.trim().startsWith("weixin://setting/plugin/qqmail"))
        {
            HrefInfo hrefinfo12 = new HrefInfo(j, k, s2, 10, null);
            e.add(hrefinfo12);
        } else
        if(s2.trim().startsWith("weixin://setting/plugin/sxmsg"))
        {
            HrefInfo hrefinfo13 = new HrefInfo(j, k, s2, 11, null);
            e.add(hrefinfo13);
        } else
        if(s2.trim().startsWith("weixin://setting/plugin/lomo"))
        {
            HrefInfo hrefinfo14 = new HrefInfo(j, k, s2, 12, null);
            e.add(hrefinfo14);
        } else
        if(s2.trim().startsWith("weixin://setting/plugin/qqmsg"))
        {
            HrefInfo hrefinfo15 = new HrefInfo(j, k, s2, 13, null);
            e.add(hrefinfo15);
        } else
        if(s2.trim().startsWith("weixin://setting/blacklist"))
        {
            HrefInfo hrefinfo16 = new HrefInfo(j, k, s2, 14, null);
            e.add(hrefinfo16);
        } else
        if(s2.trim().startsWith("weixin://setting/privacy"))
        {
            HrefInfo hrefinfo17 = new HrefInfo(j, k, s2, 15, null);
            e.add(hrefinfo17);
        } else
        if(s2.trim().startsWith("weixin://flowstat"))
        {
            HrefInfo hrefinfo18 = new HrefInfo(j, k, s2, 16, null);
            e.add(hrefinfo18);
        } else
        if(s2.trim().startsWith("weixin://findfriend/search"))
        {
            HrefInfo hrefinfo19 = new HrefInfo(j, k, s2, 17, null);
            e.add(hrefinfo19);
        } else
        if(s2.trim().startsWith("weixin://findfriend/share"))
        {
            HrefInfo hrefinfo20 = new HrefInfo(j, k, s2, 18, null);
            e.add(hrefinfo20);
        } else
        {
label0:
            {
                if(!s2.trim().startsWith("weixin://findfriend/qq"))
                    break label0;
                HrefInfo hrefinfo21 = new HrefInfo(j, k, s2, 19, null);
                e.add(hrefinfo21);
            }
        }
_L6:
        flag = true;
_L8:
        if(!flag)
            break MISSING_BLOCK_LABEL_1636;
        matcher = matcher1;
        obj = charsequence1;
          goto _L3
        if(!s2.trim().startsWith("weixin://findfriend/mobile")) goto _L5; else goto _L4
_L4:
        HrefInfo hrefinfo22 = new HrefInfo(j, k, s2, 20, null);
        e.add(hrefinfo22);
          goto _L6
_L5:
        if(!s2.trim().startsWith("weixin://contacts/")) goto _L6; else goto _L7
_L7:
        String s5;
        int l;
label1:
        {
            s5 = s2.trim().substring(0, -1 + s2.trim().length());
            l = s5.lastIndexOf("/");
            if(l != -1)
                break label1;
            flag = false;
        }
          goto _L8
        String s6 = s5.substring(l + 1);
        HrefInfo hrefinfo23 = new HrefInfo(j, k, s2, 21, GroupInfoLogic.a((new StringBuilder()).append("@").append(s6).toString(), a.getString(0x7f0a0047)));
        e.add(hrefinfo23);
          goto _L6
        CharSequence charsequence = textview.getText();
        SpannableString spannablestring1 = new SpannableString((new StringBuilder()).append(charsequence).append(" ").toString());
        a(textview, spannablestring1);
        c(textview);
        HrefInfo hrefinfo;
        for(Iterator iterator = e.iterator(); iterator.hasNext(); spannablestring1.setSpan(new IntentSpan(f, hrefinfo), hrefinfo.a, hrefinfo.b, 33))
            hrefinfo = (HrefInfo)iterator.next();

        i.a(s, spannablestring1);
        Log.e("MicroMsg.SpanUtil", "update span cache");
        textview.setText(spannablestring1);
        textview.setMovementMethod(LinkMovementMethod.getInstance());
        textview.setFocusable(false);
          goto _L9
        matcher = matcher1;
        obj = charsequence1;
          goto _L3
    }

    private static final String b[];
    private static final Pattern c = Pattern.compile("((?:(http|https|Http|Https):\\/\\/(?:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,64}(?:\\:(?:[a-zA-Z0-9\\$\\-\\_\\.\\+\\!\\*\\'\\(\\)\\,\\;\\?\\&\\=]|(?:\\%[a-fA-F0-9]{2})){1,25})?\\@)?)?((?:(?:[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}\\.)+(?:(?:aero|arpa|asia|a[cdefgilmnoqrstuwxz])|(?:biz|b[abdefghijmnorstvwyz])|(?:cat|com|coop|c[acdfghiklmnoruvxyz])|d[ejkmoz]|(?:edu|e[cegrstu])|f[ijkmor]|(?:gov|g[abdefghilmnpqrstuwy])|h[kmnrtu]|(?:info|int|i[delmnoqrst])|(?:jobs|j[emop])|k[eghimnrwyz]|l[abcikrstuvy]|(?:mil|mobi|museum|m[acdghklmnopqrstuvwxyz])|(?:name|net|n[acefgilopruz])|(?:org|om)|(?:pro|p[aefghklmnrstwy])|qa|r[eouw]|s[abcdeghijklmnortuvyz]|(?:tel|travel|t[cdfghjklmnoprtvwz])|u[agkmsyz]|v[aceginu]|w[fs]|y[etu]|z[amw]))|(?:(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9])\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[1-9]|0)\\.(?:25[0-5]|2[0-4][0-9]|[0-1][0-9]{2}|[1-9][0-9]|[0-9])))(?:\\:\\d{1,5})?)(\\/(?:(?:[a-zA-Z0-9\\;\\/\\?\\:\\@\\&\\=\\#\\~\\-\\.\\+\\!\\*\\'\\(\\)\\,\\_])|(?:\\%[a-fA-F0-9]{2}))*)?(?:\\b|$)");
    private static float g = 2.7F;
    private static float h = 0.2083333F;
    private static final LRUMap i = new LRUMap(500);
    private final Context a;
    private OnClickListener d;
    private List e;
    private final OnSpanClick f = new _cls1();

    static 
    {
        String as[] = new String[1];
        as[0] = "<a.+?href\\s*=\\s*\"\\s*(.+?)\\s*\"\\s*>(.+?)</a>";
        b = as;
    }

    private class _cls1
        implements OnSpanClick
    {

        public final void a(HrefInfo hrefinfo)
        {
            GroupInfo groupinfo;
            Object obj;
            if(hrefinfo.e instanceof GroupInfo)
                obj = hrefinfo.e;
            else
                obj = null;
            groupinfo = (GroupInfo)obj;
            hrefinfo.d;
            JVM INSTR tableswitch 1 23: default 132
        //                       1 138
        //                       2 1207
        //                       3 293
        //                       4 391
        //                       5 420
        //                       6 1170
        //                       7 1170
        //                       8 534
        //                       9 475
        //                       10 605
        //                       11 132
        //                       12 975
        //                       13 132
        //                       14 1050
        //                       15 680
        //                       16 1170
        //                       17 739
        //                       18 798
        //                       19 857
        //                       20 916
        //                       21 1207
        //                       22 1207
        //                       23 1207;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L7 _L8 _L9 _L10 _L1 _L11 _L1 _L12 _L13 _L7 _L14 _L15 _L16 _L17 _L3 _L3 _L3
_L1:
            return;
_L2:
            GroupInfo groupinfo2 = GroupInfoLogic.a((new StringBuilder()).append("@").append(hrefinfo.c).toString(), SpanUtil.a(a).getString(0x7f0a0047));
            if(groupinfo2 == null || !groupinfo2.e())
            {
                String s = hrefinfo.c;
                if(!s.startsWith("http"))
                    s = (new StringBuilder()).append("http://").append(s).toString();
                Intent intent11 = new Intent("android.intent.action.VIEW", Uri.parse(s));
                intent11.addFlags(0x10000000);
                SpanUtil.a(a).startActivity(intent11);
                if(SpanUtil.b(a) != null)
                    SpanUtil.b(a).a(hrefinfo.d);
            }
            continue; /* Loop/switch isn't completed */
_L4:
            Intent intent10 = new Intent();
            intent10.setClass(SpanUtil.a(a), com/tencent/mm/ui/contact/ContactInfoUI);
            intent10.addFlags(0x10000000);
            intent10.putExtra("Contact_User", hrefinfo.a());
            if(Util.h(hrefinfo.a()).length() > 0)
                SpanUtil.a(a).startActivity(intent10);
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            continue; /* Loop/switch isn't completed */
_L5:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            continue; /* Loop/switch isn't completed */
_L6:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            MMWizardActivity.a(SpanUtil.a(a), new Intent(SpanUtil.a(a), com/tencent/mm/ui/bindmobile/BindMContactIntroUI));
            continue; /* Loop/switch isn't completed */
_L9:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.a(new Intent(SpanUtil.a(a), com/tencent/mm/ui/setting/SettingsNotificationUI));
            continue; /* Loop/switch isn't completed */
_L8:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            MainTabUI.a().b("tab_settings");
            Intent intent9 = new Intent(SpanUtil.a(a), com/tencent/mm/ui/setting/SettingsAboutDomainMailUI);
            intent9.addFlags(0x4000000);
            SettingsUIGroup.a.a(intent9);
            continue; /* Loop/switch isn't completed */
_L10:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent8 = new Intent();
            intent8.setClass(SpanUtil.a(a), com/tencent/mm/ui/contact/ContactInfoUI);
            intent8.putExtra("Contact_User", "qqmail");
            SpanUtil.a(a).startActivity(intent8);
            continue; /* Loop/switch isn't completed */
_L13:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.a(new Intent(SpanUtil.a(a), com/tencent/mm/ui/setting/SettingsAboutPrivacyUI));
            continue; /* Loop/switch isn't completed */
_L14:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent7 = new Intent(SpanUtil.a(a), com/tencent/mm/ui/ContactSearchUI);
            SpanUtil.a(a).startActivity(intent7);
            continue; /* Loop/switch isn't completed */
_L15:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent6 = new Intent(SpanUtil.a(a), com/tencent/mm/ui/qrcode/ShareMicroMsgChoiceUI);
            SpanUtil.a(a).startActivity(intent6);
            continue; /* Loop/switch isn't completed */
_L16:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent5 = new Intent(SpanUtil.a(a), com/tencent/mm/ui/friend/QQGroupUI);
            SpanUtil.a(a).startActivity(intent5);
            continue; /* Loop/switch isn't completed */
_L17:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent4 = new Intent(SpanUtil.a(a), com/tencent/mm/ui/friend/MobileFriendUI);
            SpanUtil.a(a).startActivity(intent4);
            continue; /* Loop/switch isn't completed */
_L11:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            Intent intent3 = new Intent();
            intent3.setClass(SpanUtil.a(a), com/tencent/mm/ui/contact/ContactInfoUI);
            intent3.putExtra("Contact_User", "weibo");
            SpanUtil.a(a).startActivity(intent3);
            continue; /* Loop/switch isn't completed */
_L12:
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            GroupInfo groupinfo1 = GroupInfoLogic.a(SpanUtil.a(a).getString(0x7f0a0048));
            Intent intent2 = new Intent();
            intent2.setClass(SpanUtil.a(a), com/tencent/mm/ui/AddressUI);
            intent2.putExtra("Contact_GroupFilter_Type", groupinfo1.a());
            intent2.putExtra("Contact_GroupFilter_DisplayName", groupinfo1.c());
            intent2.addFlags(0x4000000);
            MainTabUI.a().b("tab_settings");
            SettingsUIGroup.a.a(intent2);
            continue; /* Loop/switch isn't completed */
_L7:
            MainTabUI.a().b("tab_settings");
            if(SpanUtil.b(a) != null)
                SpanUtil.b(a).a(hrefinfo.d);
            continue; /* Loop/switch isn't completed */
_L3:
            if(groupinfo == null)
            {
                MMAlert.a(SpanUtil.a(a), SpanUtil.a(a).getString(0x7f0a0186), SpanUtil.a(a).getString(0x7f0a0010));
                continue; /* Loop/switch isn't completed */
            }
            if(groupinfo.a().equals("@t.qq.com"))
            {
                boolean flag;
                if(MMCore.f().m().a("@t.qq.com") != null)
                    flag = true;
                else
                    flag = false;
                if(!flag)
                {
                    MMAlert.a(SpanUtil.a(a), SpanUtil.a(a).getString(0x7f0a0186), SpanUtil.a(a).getString(0x7f0a0010));
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(groupinfo.a().equals("@domain.android") && !GroupInfoLogic.a())
            {
                MMAlert.a(SpanUtil.a(a), SpanUtil.a(a).getString(0x7f0a0186), SpanUtil.a(a).getString(0x7f0a0010));
            } else
            {
                MainTabUI.a().b("tab_settings");
                Intent intent = new Intent(SpanUtil.a(a), com/tencent/mm/ui/setting/SettingsAboutDomainMailUI);
                intent.addFlags(0x4000000);
                SettingsUIGroup.a.a(intent);
                Intent intent1 = new Intent();
                intent1.setClass(SpanUtil.a(a), com/tencent/mm/ui/AddressUI);
                intent1.putExtra("Contact_GroupFilter_Type", groupinfo.a()).putExtra("Contact_GroupFilter_Str", groupinfo.d()).putExtra("Contact_GroupFilter_DisplayName", groupinfo.c());
                intent1.addFlags(0x10000000);
                SettingsUIGroup.a.a(intent1);
                if(SpanUtil.b(a) != null)
                    SpanUtil.b(a).a(hrefinfo.d);
            }
            if(true) goto _L1; else goto _L18
_L18:
        }

        private SpanUtil a;

        _cls1()
        {
            a = SpanUtil.this;
            super();
        }

        private class OnClickListener
        {

            public abstract void a(int j);
        }

    }


    private class HrefInfo
    {

        public final String a()
        {
            Object obj;
            if(e instanceof String)
                obj = e;
            else
                obj = null;
            return (String)obj;
        }

        int a;
        int b;
        String c;
        int d;
        Object e;

        public HrefInfo(int j, int k, String s, int l, Object obj)
        {
            a = j;
            b = k;
            c = s;
            d = l;
            e = obj;
        }
    }


    private class IntentSpan extends ClickableSpan
    {

        public void onClick(View view)
        {
            a.a(b);
        }

        private final OnSpanClick a;
        private final HrefInfo b;

        public IntentSpan(OnSpanClick onspanclick, HrefInfo hrefinfo)
        {
            a = onspanclick;
            b = hrefinfo;
        }

        private class OnSpanClick
        {

            public abstract void a(HrefInfo hrefinfo);
        }

    }

}
