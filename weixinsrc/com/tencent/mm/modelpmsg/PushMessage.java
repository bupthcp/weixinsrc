// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelpmsg;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Rect;
import b.a.e;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.ConfigStorage;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

public class PushMessage
{

    private PushMessage(String s, String s1, String s2, boolean flag, boolean flag1)
    {
        a = s;
        e = s1;
        f = s2;
        b = flag;
        g = flag1;
    }

    public static PushMessage a(Context context)
    {
        PushMessage pushmessage;
        PushMessage pushmessage1;
        pushmessage = null;
        long l1 = Util.a(MMCore.f().f().a(8449));
        long l2 = Util.c() - l1;
        if(l1 > 0L && l2 >= 0x15180L)
        {
            b();
        } else
        {
            String s = (String)MMCore.f().f().a(8193);
            if(!Util.i(s))
                if(s.contains("id=\"setavatar\""))
                {
                    b();
                } else
                {
label0:
                    {
                        pushmessage1 = b(context, s);
                        if(pushmessage1 != null)
                            break label0;
                        b();
                    }
                }
        }
        if(!AvatarLogic.l(ConfigStorageLogic.b())) goto _L2; else goto _L1
_L1:
        return pushmessage;
        pushmessage = pushmessage1;
        continue; /* Loop/switch isn't completed */
_L2:
        String s1;
        Log.d("xxyy", (new StringBuilder()).append("context.getString(R.string.mm_tips) ").append(context.getString(0x7f0a0005)).toString());
        s1 = Util.a(context.getAssets().open(context.getString(0x7f0a0005)));
        Object obj = s1;
_L4:
        pushmessage = b(context, ((String) (obj)));
        if(true) goto _L1; else goto _L3
_L3:
        IOException ioexception;
        ioexception;
        obj = pushmessage;
          goto _L4
    }

    public static String a(String s)
    {
        IMAGE_PATH_TYPE image_path_type = b(s);
        if(image_path_type != IMAGE_PATH_TYPE.a)
            if(image_path_type == IMAGE_PATH_TYPE.b)
            {
                String s1;
                if(s == null)
                {
                    s1 = null;
                } else
                {
                    int i1 = s.lastIndexOf("/");
                    if(i1 < 0 || i1 >= -1 + s.length())
                        s1 = null;
                    else
                        s1 = s.substring(i1 + 1);
                }
                if(s1 == null)
                    s = null;
                else
                    s = (new StringBuilder()).append(MMCore.f().M()).append(s1).toString();
            } else
            {
                s = null;
            }
        return s;
    }

    public static ArrayList a(Context context, String s)
    {
        if(s != null && s.length() >= 0) goto _L2; else goto _L1
_L1:
        ArrayList arraylist = null;
_L6:
        return arraylist;
_L2:
        HashSet hashset1;
        Map map;
        ArrayList arraylist1;
        int i1;
        String s1 = b.a.e.a(context);
        if(s1 == null)
        {
            hashset1 = null;
        } else
        {
            HashSet hashset = new HashSet();
            hashset.add(s1);
            String s2 = b.a.e.b(context);
            Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("getDisplaySizeType :").append(s2).toString());
            if(s2 != null)
            {
                String as[] = s2.split("_");
                String s9;
                if(as == null || as.length < 2)
                    s9 = null;
                else
                    s9 = as[0];
                hashset.add((new StringBuilder()).append(s9).append("_L").toString());
                hashset.add((new StringBuilder()).append(s9).append("_P").toString());
            }
            hashset1 = hashset;
        }
        if(hashset1 == null || hashset1.size() <= 0)
        {
            arraylist = null;
            continue; /* Loop/switch isn't completed */
        }
        map = Util.b(s, "tips");
        if(map == null)
        {
            arraylist = null;
            continue; /* Loop/switch isn't completed */
        }
        arraylist1 = new ArrayList();
        i1 = 0;
_L4:
        PushMessage pushmessage;
        HashMap hashmap;
        StringBuilder stringbuilder = (new StringBuilder()).append(".tips.tip");
        Object obj;
        String s3;
        String s4;
        String s5;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        int i3;
        int j3;
        int k3;
        int l3;
        if(i1 > 0)
            obj = Integer.valueOf(i1);
        else
            obj = "";
        s3 = stringbuilder.append(obj).toString();
        if(map.get(s3) == null)
            break; /* Loop/switch isn't completed */
        s4 = (String)map.get((new StringBuilder()).append(s3).append(".$id").toString());
        Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("parseMessages id:").append(s4).toString());
        s5 = (String)map.get((new StringBuilder()).append(s3).append(".$platform").toString());
        if(!s5.equals("android"))
            break MISSING_BLOCK_LABEL_1373;
        pushmessage = new PushMessage(s4, s5, (String)map.get((new StringBuilder()).append(s3).append(".$device").toString()), Util.a(Boolean.valueOf((String)map.get((new StringBuilder()).append(s3).append(".$enableclose").toString()))), Util.a(Boolean.valueOf((String)map.get((new StringBuilder()).append(s3).append(".$transparentclose").toString()))));
        j1 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".title.$x").toString()));
        k1 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".title.$y").toString()));
        l1 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".title.$width").toString()));
        i2 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".title.$font").toString()));
        j2 = Util.k((String)map.get((new StringBuilder()).append(s3).append(".title.$color").toString()));
        pushmessage.h = (String)map.get((new StringBuilder()).append(s3).append(".title").toString());
        pushmessage.i = j2;
        pushmessage.j = new Rect(j1, k1, l1 + j1, i2 + k1);
        k2 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".description.$x").toString()));
        l2 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".description.$y").toString()));
        i3 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".description.$width").toString()));
        j3 = Util.j((String)map.get((new StringBuilder()).append(s3).append(".description.$font").toString()));
        k3 = Util.k((String)map.get((new StringBuilder()).append(s3).append(".description.$color").toString()));
        pushmessage.k = (String)map.get((new StringBuilder()).append(s3).append(".description").toString());
        pushmessage.l = k3;
        pushmessage.m = new Rect(k2, l2, i3 + k2, j3 + l2);
        pushmessage.c = (String)map.get((new StringBuilder()).append(s3).append(".url").toString());
        pushmessage.n = (String)map.get((new StringBuilder()).append(s3).append(".time.start").toString());
        pushmessage.o = (String)map.get((new StringBuilder()).append(s3).append(".time.end").toString());
        Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("parseMessages id:").append(pushmessage.a).append(" start:").append(pushmessage.n).append(" end:").append(pushmessage.o).toString());
        hashmap = new HashMap();
        l3 = 0;
        do
        {
label0:
            {
                StringBuilder stringbuilder1 = (new StringBuilder()).append(s3).append(".images.image");
                Object obj1;
                String s6;
                String s7;
                String s8;
                if(l3 > 0)
                    obj1 = Integer.valueOf(l3);
                else
                    obj1 = "";
                s6 = stringbuilder1.append(obj1).toString();
                s7 = (String)map.get(s6);
                Log.d("MicroMsg.PushMessage", (new StringBuilder()).append(" img res:").append(s7).toString());
                if(s7 == null)
                    break label0;
                s8 = (String)map.get((new StringBuilder()).append(s6).append(".$type").toString());
                if(hashset1.contains(s8))
                    hashmap.put(s8, s7);
                l3++;
            }
        } while(true);
        if(hashmap.size() > 0)
            pushmessage.d = hashmap;
        Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("msgid :").append(pushmessage.a).toString());
        arraylist1.add(pushmessage);
        i1++;
        if(true) goto _L4; else goto _L3
_L3:
        Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("msgs size: ").append(arraylist1.size()).toString());
        if(arraylist1.size() > 0)
            arraylist = arraylist1;
        else
            arraylist = null;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static IMAGE_PATH_TYPE b(String s)
    {
        IMAGE_PATH_TYPE image_path_type;
        if(s.indexOf("tips/") == 0)
            image_path_type = IMAGE_PATH_TYPE.a;
        else
        if(s.indexOf("weixin://") == 0)
            image_path_type = IMAGE_PATH_TYPE.b;
        else
            image_path_type = IMAGE_PATH_TYPE.c;
        return image_path_type;
    }

    private static PushMessage b(Context context, String s)
    {
        int i1 = 1;
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        PushMessage pushmessage = null;
_L4:
        return pushmessage;
_L2:
        ArrayList arraylist = a(context, s);
        if(arraylist == null || arraylist.size() != i1)
        {
            pushmessage = null;
        } else
        {
            pushmessage = (PushMessage)arraylist.get(0);
            if(pushmessage.d == null || pushmessage.d.size() <= 0)
                i1 = 0;
            if(i1 == 0 || !pushmessage.c())
                pushmessage = null;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static void b()
    {
        MMCore.f().f().a(8193, "");
        MMCore.f().f().a(8449, Long.valueOf(0L));
    }

    private boolean c()
    {
label0:
        {
            boolean flag = false;
            long l1 = Util.d();
            long l2 = 0x7fffffffffffffffL;
            long l3 = 0L;
            try
            {
                if(o != null)
                    l2 = (new SimpleDateFormat("yyyy-MM-dd-HH")).parse(o).getTime();
                if(n != null)
                    l3 = (new SimpleDateFormat("yyyy-MM-dd-HH")).parse(n).getTime();
                Log.d("MicroMsg.PushMessage", (new StringBuilder()).append("CHECKTIME : [").append(l3).append(",").append(l2).append("]").toString());
            }
            catch(Exception exception)
            {
                flag = true;
                if(false)
                    ;
                else
                    break label0;
            }
            if(l2 > l1 && l3 <= l1)
                flag = true;
        }
        return flag;
    }

    public final Map a()
    {
        return d;
    }

    public final String toString()
    {
        StringBuilder stringbuilder = (new StringBuilder()).append("ad.id=").append(a).append(", platform=").append(e).append(", device=").append(f);
        String s;
        StringBuilder stringbuilder1;
        String s1;
        if(b)
            s = ", closable";
        else
            s = "";
        stringbuilder1 = stringbuilder.append(s);
        if(g)
            s1 = ", trans-closable";
        else
            s1 = "";
        return stringbuilder1.append(s1).toString();
    }

    private static String p[];
    public String a;
    public boolean b;
    public String c;
    public Map d;
    private String e;
    private String f;
    private boolean g;
    private String h;
    private int i;
    private Rect j;
    private String k;
    private int l;
    private Rect m;
    private String n;
    private String o;

    static 
    {
        String as[] = new String[3];
        as[0] = "LDPI";
        as[1] = "HDPI";
        as[2] = "MDPI";
        p = as;
    }

    private class IMAGE_PATH_TYPE extends Enum
    {

        public static IMAGE_PATH_TYPE valueOf(String s)
        {
            return (IMAGE_PATH_TYPE)Enum.valueOf(com/tencent/mm/modelpmsg/PushMessage$IMAGE_PATH_TYPE, s);
        }

        public static IMAGE_PATH_TYPE[] values()
        {
            return (IMAGE_PATH_TYPE[])d.clone();
        }

        public static final IMAGE_PATH_TYPE a;
        public static final IMAGE_PATH_TYPE b;
        public static final IMAGE_PATH_TYPE c;
        private static final IMAGE_PATH_TYPE d[];

        static 
        {
            a = new IMAGE_PATH_TYPE("ASSET", 0);
            b = new IMAGE_PATH_TYPE("DOWNLOAD", 1);
            c = new IMAGE_PATH_TYPE("ERROR", 2);
            IMAGE_PATH_TYPE aimage_path_type[] = new IMAGE_PATH_TYPE[3];
            aimage_path_type[0] = a;
            aimage_path_type[1] = b;
            aimage_path_type[2] = c;
            d = aimage_path_type;
        }

        private IMAGE_PATH_TYPE(String s, int i1)
        {
            super(s, i1);
        }
    }

}
