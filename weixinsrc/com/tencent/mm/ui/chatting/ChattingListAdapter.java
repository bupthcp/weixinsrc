// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.chatting;

import android.content.Context;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelemoji.EmojiInfo;
import com.tencent.mm.modelemoji.EmojiInfoStorage;
import com.tencent.mm.modelimage.ImgInfo;
import com.tencent.mm.modelimage.ImgInfoStorage;
import com.tencent.mm.modelvideo.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.MsgInfo;
import com.tencent.mm.storage.MsgInfoStorage;
import com.tencent.mm.test.Test;
import com.tencent.mm.ui.*;
import java.io.FileInputStream;
import java.util.*;
import junit.framework.Assert;

// Referenced classes of package com.tencent.mm.ui.chatting:
//            SpanUtil, AvatarClickListeners, AutoPlay, ViewHolder, 
//            ChatBgAttr, ChattingUI, EmojiView

public class ChattingListAdapter extends MListAdapter
    implements com.tencent.mm.modelvideo.VideoInfoStorage.IOnVideoInfoChanged
{

    public ChattingListAdapter(ChattingUI chattingui, MsgInfo msginfo, String s, String s1, boolean flag, AutoPlay autoplay)
    {
        super(chattingui, msginfo);
        h = new HashSet();
        p = null;
        o = chattingui;
        j = new SpanUtil(chattingui, new _cls1(chattingui));
        m = s;
        l = s1;
        n = flag;
        k = autoplay;
        f = 18;
        g = f;
        i = new AvatarClickListeners(chattingui);
    }

    private static void a(ImageView imageview, String s)
    {
        imageview.setImageDrawable(new BitmapDrawable(AvatarLogic.i(s)));
    }

    static void a(ChattingListAdapter chattinglistadapter)
    {
        LinkedList linkedlist = new LinkedList();
        linkedlist.add(chattinglistadapter.m);
        LinkedList linkedlist1 = new LinkedList();
        for(int i1 = 0; i1 < linkedlist.size(); i1++)
            linkedlist1.add(Integer.valueOf(3));

        (new SendVerifyRequest(chattinglistadapter.o, chattinglistadapter. new _cls2())).a(linkedlist, linkedlist1);
    }

    private void a(ViewHolder viewholder, MsgInfo msginfo)
    {
        if(viewholder != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        float f1 = MsgInfoStorageLogic.a(msginfo);
        com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent voicecontent;
        if(msginfo.b() == k.g())
        {
            viewholder.o.setVisibility(0);
            viewholder.o.a();
        } else
        {
            viewholder.o.setVisibility(8);
            viewholder.o.b();
        }
        voicecontent = new com.tencent.mm.model.MsgInfoStorageLogic.VoiceContent(msginfo.i());
        if(msginfo.f() == 0)
            if(voicecontent.c() == 0L)
            {
                viewholder.r.setVisibility(0);
                viewholder.q.setVisibility(8);
                viewholder.p.a();
            } else
            if(voicecontent.c() == -1L)
            {
                viewholder.r.setVisibility(8);
                viewholder.q.setVisibility(0);
                viewholder.p.b();
                viewholder.p.setVisibility(8);
                viewholder.k.setWidth(100);
                viewholder.j.setVisibility(8);
                viewholder.o.setWidth((int)((float)b((int)f1) * MMActivity.k()));
            } else
            {
                viewholder.r.setVisibility(8);
                viewholder.q.setVisibility(0);
                viewholder.p.b();
                viewholder.p.setVisibility(8);
                viewholder.j.setVisibility(0);
                viewholder.k.setWidth((int)((float)b((int)f1) * MMActivity.k()));
                TextView textview1 = viewholder.j;
                ChattingUI chattingui1 = o;
                Object aobj1[] = new Object[1];
                aobj1[0] = Integer.valueOf((int)f1);
                textview1.setText(chattingui1.getString(0x7f0a009b, aobj1));
                viewholder.o.setWidth((int)((float)b((int)f1) * MMActivity.k()));
            }
        if(1 == msginfo.f())
            if(msginfo.e() == 1)
            {
                viewholder.q.setVisibility(8);
                viewholder.r.setVisibility(0);
            } else
            if(voicecontent.c() == -1L)
            {
                viewholder.q.setVisibility(0);
                viewholder.k.setWidth(100);
                viewholder.j.setVisibility(8);
                viewholder.r.setVisibility(8);
                viewholder.o.setWidth((int)((float)b((int)f1) * MMActivity.k()));
            } else
            {
                viewholder.q.setVisibility(0);
                viewholder.j.setVisibility(0);
                viewholder.k.setWidth((int)((float)b((int)f1) * MMActivity.k()));
                TextView textview = viewholder.j;
                ChattingUI chattingui = o;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf((int)f1);
                textview.setText(chattingui.getString(0x7f0a009b, aobj));
                viewholder.o.setWidth((int)((float)b((int)f1) * MMActivity.k()));
                viewholder.r.setVisibility(8);
            }
        if(p != null)
        {
            viewholder.j.setTextColor(p.d());
            if(p.h())
                viewholder.j.setShadowLayer(2F, 1.2F, 1.2F, p.e());
            else
                viewholder.j.setShadowLayer(0F, 0F, 0F, 0);
            if(p.f())
                viewholder.j.setBackgroundResource(0x7f0200d8);
            else
                viewholder.j.setBackgroundColor(0);
        }
        if(voicecontent.c() == -1L)
        {
            viewholder.a.setImageDrawable(o.a(0x7f0201e2));
            viewholder.a.setVisibility(0);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static int b(int i1)
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

    static ChattingUI b(ChattingListAdapter chattinglistadapter)
    {
        return chattinglistadapter.o;
    }

    public final volatile Object a(Object obj, Cursor cursor)
    {
        MsgInfo msginfo = (MsgInfo)obj;
        if(msginfo == null)
            msginfo = new MsgInfo();
        msginfo.a(cursor);
        return msginfo;
    }

    protected final void a()
    {
        a(MMCore.f().i().d());
    }

    public final void a(int i1)
    {
        MsgInfo msginfo = (MsgInfo)getItem(i1);
        if(msginfo != null && msginfo.b() != 0L)
            h.add(Long.valueOf(msginfo.b()));
    }

    public final void a(String s)
    {
        a_(null);
    }

    public final boolean a(Context context, String s)
    {
        p = new ChatBgAttr(Util.a(context.getAssets().open(s)));
        boolean flag = true;
_L2:
        return flag;
        Exception exception;
        exception;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void b()
    {
        g = MMCore.f().i().p(m);
        a(MMCore.f().i().f(m, f));
        int i1 = getCount();
        if(i1 > 0)
        {
            a = new short[i1];
            b = new short[i1];
        }
        super.notifyDataSetChanged();
    }

    public final boolean b(String s)
    {
        p = new ChatBgAttr(Util.a(new FileInputStream(s)));
        boolean flag = true;
_L2:
        return flag;
        Exception exception;
        exception;
        p = null;
        flag = false;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final int c()
    {
        int i1;
        if(e())
        {
            i1 = 0;
        } else
        {
            f = 18 + f;
            if(f <= g)
                i1 = 18;
            else
                i1 = g % 18;
        }
        return i1;
    }

    public final int d()
    {
        return g;
    }

    public final boolean e()
    {
        boolean flag;
        if(f >= g)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public int getItemViewType(int i1)
    {
        return a[i1];
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        MsgInfo msginfo;
        ViewHolder viewholder1;
        msginfo = (MsgInfo)getItem(i1);
        boolean flag;
        if(i1 != 0 && (b[i1] == 0 || a[i1 + -1] == 0))
        {
            MsgInfo msginfo1 = (MsgInfo)getItem(i1 + -1);
            long l13 = msginfo1.g();
            long l14 = msginfo.g();
            short aword0[];
            int j4;
            boolean flag9;
            boolean flag10;
            boolean flag11;
            short word0;
            if(msginfo.c() == 0 && msginfo.d() != 47)
            {
                b[i1] = 2;
            } else
            {
                boolean flag7;
                boolean flag8;
                if(l14 - l13 < 60000L)
                    flag7 = true;
                else
                    flag7 = false;
                if((l14 - l13) / 0x2bf20L < 1L)
                    flag8 = true;
                else
                    flag8 = false;
                if(flag7 || flag8)
                    b[i1] = 2;
                else
                    b[i1] = 1;
            }
            aword0 = a;
            j4 = i1 + -1;
            flag9 = msginfo1.l();
            flag10 = msginfo1.k();
            if(msginfo1.f() == 0)
                flag11 = true;
            else
                flag11 = false;
            if(flag9)
            {
                ViewHolder viewholder13;
                byte byte7;
                if(flag11)
                    byte7 = 3;
                else
                    byte7 = 1;
                word0 = byte7;
            } else
            if(flag10)
            {
                byte byte6;
                if(flag11)
                    byte6 = 7;
                else
                    byte6 = 6;
                word0 = byte6;
            } else
            if(msginfo1.q())
            {
                byte byte5;
                if(flag11)
                    byte5 = 15;
                else
                    byte5 = 14;
                word0 = byte5;
            } else
            {
                byte byte4;
                if(flag11)
                    byte4 = 4;
                else
                    byte4 = 2;
                word0 = byte4;
            }
            aword0[j4] = word0;
        }
        if((b[i1] == 1 || i1 == 0 || h.contains(Long.valueOf(msginfo.b()))) && msginfo.g() > 1000L)
            flag = true;
        else
            flag = false;
        if(msginfo.d() != 10000) goto _L2; else goto _L1
_L1:
        if(view == null || ((ViewHolder)view.getTag()).B != 5)
        {
            a[i1] = 5;
            view = View.inflate(o, 0x7f030031, null);
            viewholder13 = new ViewHolder();
            viewholder13.b = (TextView)view.findViewById(0x7f07009e);
            viewholder13.j = (TextView)view.findViewById(0x7f0700a1);
            viewholder13.B = 5;
            view.setTag(viewholder13);
        } else
        {
            view.getTag();
        }
_L21:
        viewholder1 = (ViewHolder)view.getTag();
        Assert.assertNotNull(view);
        Assert.assertNotNull(viewholder1);
        if(flag)
        {
            viewholder1.b.setVisibility(0);
            viewholder1.b.setText(Util.a(o, msginfo.g(), false));
            if(p != null)
            {
                viewholder1.b.setTextColor(p.a());
                ViewHolder viewholder;
                int j1;
                ViewHolder viewholder2;
                ViewHolder viewholder3;
                ViewHolder viewholder4;
                ViewHolder viewholder5;
                ViewHolder viewholder6;
                ViewHolder viewholder7;
                ViewHolder viewholder8;
                ViewHolder viewholder9;
                ViewHolder viewholder10;
                ImageView imageview;
                byte byte3;
                ViewHolder viewholder11;
                ViewHolder viewholder12;
                if(p.g())
                    viewholder1.b.setShadowLayer(2F, 1.2F, 1.2F, p.b());
                else
                    viewholder1.b.setShadowLayer(0F, 0F, 0F, 0);
                if(p.c())
                    viewholder1.b.setBackgroundResource(0x7f0200d7);
                else
                    viewholder1.b.setBackgroundColor(0);
            }
        } else
        {
            viewholder1.b.setVisibility(8);
        }
        viewholder1.B;
        JVM INSTR tableswitch 1 16: default 504
    //                   1 2448
    //                   2 6387
    //                   3 2671
    //                   4 6387
    //                   5 2420
    //                   6 5126
    //                   7 5308
    //                   8 3728
    //                   9 4290
    //                   10 5368
    //                   11 5368
    //                   12 3822
    //                   13 4110
    //                   14 2950
    //                   15 3361
    //                   16 6744;
           goto _L3 _L4 _L5 _L6 _L5 _L7 _L8 _L9 _L10 _L11 _L12 _L12 _L13 _L14 _L15 _L16 _L17
_L3:
        return view;
_L2:
        msginfo.f();
        JVM INSTR tableswitch 0 1: default 720
    //                   0 732
    //                   1 1721;
           goto _L18 _L19 _L20
_L18:
        Log.a("MicroMsg.ChattingListAdapter", "getView: not found this type");
          goto _L21
_L19:
        if(msginfo.l())
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 1)
            {
                a[i1] = 1;
                view = View.inflate(o, 0x7f03002e, null);
                viewholder12 = (new ViewHolder()).a(true, view);
                view.setTag(viewholder12);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.q())
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 14)
            {
                a[i1] = 14;
                view = View.inflate(o, 0x7f03002a, null);
                viewholder11 = (new ViewHolder()).b(true, view);
                view.setTag(viewholder11);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.k())
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 6)
            {
                a[i1] = 6;
                view = View.inflate(o, 0x7f030030, null);
                viewholder10 = (new ViewHolder()).c(true, view);
                view.setTag(viewholder10);
            } else
            {
                viewholder10 = (ViewHolder)view.getTag();
            }
            imageview = viewholder10.a;
            if(k.g() == msginfo.b() || MsgInfoStorageLogic.c(msginfo))
                byte3 = 8;
            else
                byte3 = 0;
            imageview.setVisibility(byte3);
        } else
        if(msginfo.m())
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 8)
            {
                a[i1] = 8;
                view = View.inflate(o, 0x7f03002d, null);
                viewholder9 = new ViewHolder();
                viewholder9.b = (TextView)view.findViewById(0x7f07009e);
                viewholder9.h = (TextView)view.findViewById(0x7f0700a0);
                viewholder9.i = (TextView)view.findViewById(0x7f0700ae);
                viewholder9.j = (TextView)view.findViewById(0x7f0700a1);
                viewholder9.B = 8;
                view.setTag(viewholder9);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.d() == 37 || msginfo.d() == 40)
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 9)
            {
                a[i1] = 9;
                view = View.inflate(o, 0x7f03002b, null);
                viewholder4 = new ViewHolder();
                viewholder4.e = (ImageView)view.findViewById(0x7f0700aa);
                viewholder4.b = (TextView)view.findViewById(0x7f07009e);
                viewholder4.m = (TextView)view.findViewById(0x7f0700a2);
                viewholder4.l = (TextView)view.findViewById(0x7f0700ac);
                viewholder4.h = (TextView)view.findViewById(0x7f0700a6);
                viewholder4.n = (TextView)view.findViewById(0x7f0700a7);
                viewholder4.d = (ImageView)view.findViewById(0x7f07009f);
                viewholder4.B = 9;
                view.setTag(viewholder4);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.p())
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 10)
            {
                a[i1] = 10;
                view = View.inflate(o, 0x7f03002f, null);
                viewholder8 = (new ViewHolder()).e(true, view);
                view.setTag(viewholder8);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.d() == 42)
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 12)
            {
                a[i1] = 12;
                view = View.inflate(o, 0x7f030029, null);
                viewholder7 = (new ViewHolder()).a(view, true);
                view.setTag(viewholder7);
            } else
            {
                view.getTag();
            }
        } else
        if(msginfo.d() == 48)
        {
            if(view == null || ((ViewHolder)view.getTag()).B != 16)
            {
                a[i1] = 16;
                view = View.inflate(o, 0x7f03002c, null);
                viewholder6 = new ViewHolder();
                viewholder6.d = (ImageView)view.findViewById(0x7f07009f);
                viewholder6.b = (TextView)view.findViewById(0x7f07009e);
                viewholder6.j = (TextView)view.findViewById(0x7f0700ad);
                viewholder6.x = (ProgressBar)view.findViewById(0x7f070029);
                viewholder6.B = 16;
                view.setTag(viewholder6);
            } else
            {
                view.getTag();
            }
        } else
        if(view == null || ((ViewHolder)view.getTag()).B != 2)
        {
            a[i1] = 2;
            view = View.inflate(o, 0x7f030028, null);
            viewholder5 = (new ViewHolder()).d(true, view);
            view.setTag(viewholder5);
        } else
        {
            view.getTag();
        }
          goto _L21
_L20:
        if(!msginfo.n()) goto _L23; else goto _L22
_L22:
        if(view == null || ((ViewHolder)view.getTag()).B != 13)
        {
            a[i1] = 13;
            view = View.inflate(o, 0x7f030033, null);
            viewholder3 = (new ViewHolder()).a(view, false);
            viewholder3.B = 13;
            view.setTag(viewholder3);
        } else
        {
            view.getTag();
        }
          goto _L21
_L23:
        if(!msginfo.l()) goto _L25; else goto _L24
_L24:
        if(view == null || ((ViewHolder)view.getTag()).B != 3)
        {
            a[i1] = 3;
            view = View.inflate(o, 0x7f030036, null);
            viewholder = (new ViewHolder()).a(false, view);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
_L34:
        msginfo.e();
        JVM INSTR tableswitch 1 5: default 1912
    //                   1 2287
    //                   2 2294
    //                   3 2315
    //                   4 2336
    //                   5 2357;
           goto _L26 _L27 _L28 _L29 _L30 _L31
_L26:
        Log.a("MicroMsg.ChattingListAdapter", "getMsgStateResId: not found this state");
        j1 = -1;
_L39:
        if(j1 != -1)
        {
            viewholder.a.setBackgroundDrawable(o.a(j1));
            viewholder.a.setVisibility(0);
        } else
        {
            viewholder.a.setVisibility(8);
        }
          goto _L21
_L25:
        if(!msginfo.q()) goto _L33; else goto _L32
_L32:
        if(view == null || ((ViewHolder)view.getTag()).B != 15)
        {
            a[i1] = 15;
            view = View.inflate(o, 0x7f030034, null);
            viewholder = (new ViewHolder()).b(false, view);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
          goto _L34
_L33:
        if(!msginfo.k()) goto _L36; else goto _L35
_L35:
        if(view == null || ((ViewHolder)view.getTag()).B != 7)
        {
            a[i1] = 7;
            view = View.inflate(o, 0x7f030038, null);
            viewholder = (new ViewHolder()).c(false, view);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
          goto _L34
_L36:
        if(!msginfo.p()) goto _L38; else goto _L37
_L37:
        if(view == null || ((ViewHolder)view.getTag()).B != 11)
        {
            a[i1] = 11;
            view = View.inflate(o, 0x7f030037, null);
            viewholder2 = (new ViewHolder()).e(false, view);
            view.setTag(viewholder2);
        } else
        {
            view.getTag();
        }
          goto _L21
_L38:
        if(view == null || ((ViewHolder)view.getTag()).B != 4)
        {
            a[i1] = 4;
            view = View.inflate(o, 0x7f030032, null);
            viewholder = (new ViewHolder()).d(false, view);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
          goto _L34
_L27:
        j1 = -1;
          goto _L39
_L28:
        if(Test.b)
            j1 = 0x7f0201e6;
        else
            j1 = -1;
          goto _L39
_L29:
        if(Test.b)
            j1 = 0x7f0201e3;
        else
            j1 = -1;
          goto _L39
_L30:
        if(Test.b)
            j1 = 0x7f0201e4;
        else
            j1 = -1;
          goto _L39
_L31:
        j1 = 0x7f0201e2;
          goto _L39
_L7:
        viewholder1.j.setText(msginfo.i());
        j.a(viewholder1.j);
          goto _L3
_L4:
        String s18;
        int i4;
        if(MMCore.f().c())
            viewholder1.c.setImageBitmap(MMCore.f().k().a(msginfo.j(), MMActivity.k()));
        else
            viewholder1.c.setImageBitmap(BitmapFactory.decodeResource(o.getResources(), 0x7f0201f3));
        viewholder1.d.setVisibility(0);
        if(!n) goto _L41; else goto _L40
_L40:
        i4 = MsgInfoStorageLogic.a(msginfo.i());
        if(i4 == -1) goto _L43; else goto _L42
_L42:
        s18 = msginfo.i().substring(0, i4).trim();
        if(s18 == null || s18.length() <= 0) goto _L43; else goto _L44
_L44:
        a(viewholder1.d, s18);
        viewholder1.h.setText(ContactStorageLogic.e(s18));
_L45:
        viewholder1.d.setOnClickListener(i.a(s18));
          goto _L3
_L41:
        String s17 = m;
        if(ContactStorageLogic.E(s17))
            viewholder1.d.setVisibility(8);
        else
            a(viewholder1.d, s17);
        viewholder1.h.setText(ContactStorageLogic.e(s17));
        s18 = msginfo.h();
          goto _L45
_L6:
        viewholder1.d.setVisibility(0);
        a(viewholder1.d, l);
        viewholder1.d.setOnClickListener(i.a(l));
        ImgInfo imginfo;
        if(MMCore.f().c())
            viewholder1.c.setImageBitmap(MMCore.f().k().a(msginfo.j(), MMActivity.k()));
        else
            viewholder1.c.setImageDrawable(o.a(0x7f0201f3));
        imginfo = MMCore.f().k().a(msginfo.j());
        if(imginfo != null)
        {
            boolean flag6;
            ProgressBar progressbar2;
            byte byte1;
            TextView textview1;
            byte byte2;
            if(imginfo.l() || msginfo.e() == 5)
                flag6 = true;
            else
                flag6 = false;
            viewholder1.g.setText((new StringBuilder()).append("").append(imginfo.n()).append("%").toString());
            progressbar2 = viewholder1.f;
            if(flag6)
                byte1 = 4;
            else
                byte1 = 0;
            progressbar2.setVisibility(byte1);
            textview1 = viewholder1.g;
            if(flag6)
                byte2 = 4;
            else
                byte2 = 0;
            textview1.setVisibility(byte2);
        } else
        {
            viewholder1.a.setImageDrawable(o.a(0x7f0201e2));
            viewholder1.f.setVisibility(8);
            viewholder1.g.setVisibility(8);
        }
          goto _L3
_L15:
        EmojiInfo emojiinfo3 = MMCore.f().l().d(msginfo.j());
        if(emojiinfo3 == null) goto _L47; else goto _L46
_L46:
        com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent emojicontent1;
        emojicontent1 = com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(msginfo.i());
        if(!emojicontent1.d())
            EmojiView.a(msginfo.b());
        if(!emojiinfo3.d() || emojicontent1.d()) goto _L49; else goto _L48
_L48:
        boolean flag5;
        EmojiInfo emojiinfo4;
        EmojiView emojiview6;
        long l10;
        EmojiView emojiview7 = viewholder1.z;
        long l12 = msginfo.b();
        flag5 = true;
        emojiinfo4 = emojiinfo3;
        emojiview6 = emojiview7;
        l10 = l12;
_L57:
        emojiview6.a(emojiinfo4, l10, flag5, false);
        if(!emojicontent1.d())
        {
            emojicontent1.e();
            msginfo.b(emojicontent1.a());
            MMCore.f().i().a(msginfo.b(), msginfo);
        }
_L47:
        viewholder1.d.setVisibility(0);
        if(!n) goto _L51; else goto _L50
_L50:
        int k3 = MsgInfoStorageLogic.a(msginfo.i());
        if(k3 == -1) goto _L53; else goto _L52
_L52:
        String s16 = msginfo.i().substring(0, k3).trim();
        if(s16 == null || s16.length() <= 0) goto _L53; else goto _L54
_L54:
        a(viewholder1.d, s16);
        viewholder1.h.setText(ContactStorageLogic.e(s16));
_L60:
        viewholder1.d.setOnClickListener(i.a(s16));
          goto _L3
_L49:
        if(!emojiinfo3.d()) goto _L56; else goto _L55
_L55:
        EmojiView emojiview5;
        long l8;
        emojiview5 = viewholder1.z;
        l8 = msginfo.b();
_L59:
        flag5 = false;
        long l11 = l8;
        emojiinfo4 = emojiinfo3;
        emojiview6 = emojiview5;
        l10 = l11;
          goto _L57
_L56:
        emojiview5 = viewholder1.z;
        l8 = msginfo.b();
        if(emojiinfo3.j() != EmojiInfo.i || EmojiView.b() > msginfo.b()) goto _L59; else goto _L58
_L58:
        flag5 = true;
        long l9 = l8;
        emojiinfo4 = emojiinfo3;
        emojiview6 = emojiview5;
        l10 = l9;
          goto _L57
_L51:
        String s15 = m;
        if(ContactStorageLogic.E(s15))
            viewholder1.d.setVisibility(8);
        else
            a(viewholder1.d, s15);
        viewholder1.h.setText(ContactStorageLogic.e(s15));
        s16 = msginfo.h();
          goto _L60
_L16:
        EmojiInfo emojiinfo;
        viewholder1.d.setVisibility(0);
        a(viewholder1.d, l);
        viewholder1.d.setOnClickListener(i.a(l));
        emojiinfo = MMCore.f().l().d(msginfo.j());
        if(emojiinfo == null) goto _L62; else goto _L61
_L61:
        com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent emojicontent;
        emojicontent = com.tencent.mm.model.MsgInfoStorageLogic.EmojiContent.a(msginfo.i());
        if(!emojicontent.d())
            EmojiView.a(msginfo.b());
        if(!emojiinfo.d() || emojicontent.d()) goto _L64; else goto _L63
_L63:
        boolean flag3;
        EmojiInfo emojiinfo2;
        EmojiView emojiview2;
        long l5;
        EmojiView emojiview4 = viewholder1.z;
        long l7 = msginfo.b();
        flag3 = true;
        emojiinfo2 = emojiinfo;
        emojiview2 = emojiview4;
        l5 = l7;
_L67:
        EmojiView emojiview;
        EmojiView emojiview1;
        EmojiInfo emojiinfo1;
        emojiview2.a(emojiinfo2, l5, flag3, true);
        if(!emojicontent.d())
        {
            emojicontent.e();
            msginfo.b(emojicontent.a());
            MMCore.f().i().a(msginfo.b(), msginfo);
        }
        long l3;
        long l4;
        boolean flag4;
        ProgressBar progressbar1;
        byte byte0;
        long l6;
        EmojiView emojiview3;
        if(emojiinfo.m() == EmojiInfo.l || msginfo.e() != 1)
            flag4 = true;
        else
            flag4 = false;
        progressbar1 = viewholder1.f;
        if(flag4)
            byte0 = 4;
        else
            byte0 = 0;
        progressbar1.setVisibility(byte0);
          goto _L3
_L64:
        if(!emojiinfo.d()) goto _L66; else goto _L65
_L65:
        emojiview3 = viewholder1.z;
        l3 = msginfo.b();
        emojiview1 = emojiview3;
        emojiinfo1 = emojiinfo;
_L97:
        flag3 = false;
        l4 = l3;
        emojiinfo2 = emojiinfo1;
        emojiview2 = emojiview1;
        l5 = l4;
          goto _L67
_L66:
        emojiview = viewholder1.z;
        l3 = msginfo.b();
        if(emojiinfo.j() != EmojiInfo.i || msginfo.b() < EmojiView.b()) goto _L69; else goto _L68
_L68:
        flag3 = true;
        l6 = l3;
        emojiinfo2 = emojiinfo;
        emojiview2 = emojiview;
        l5 = l6;
          goto _L67
_L62:
        viewholder1.f.setVisibility(8);
          goto _L3
_L10:
        com.tencent.mm.storage.MsgInfo.MailContent mailcontent = MMCore.f().i().l(msginfo.i());
        viewholder1.i.setText(mailcontent.a());
        viewholder1.j.setText(mailcontent.b());
        viewholder1.h.setText(mailcontent.c());
        TextView textview = viewholder1.j;
        int j3;
        if(mailcontent.e())
            j3 = 0x7f02015d;
        else
            j3 = 0;
        textview.setCompoundDrawablesWithIntrinsicBounds(0, 0, j3, 0);
          goto _L3
_L13:
        String s13;
        com.tencent.mm.storage.MsgInfo.FriendContent friendcontent2;
        if(n)
            s13 = MsgInfoStorageLogic.b(msginfo.i());
        else
            s13 = msginfo.i();
        friendcontent2 = MMCore.f().i().n(s13);
        if(friendcontent2 == null || friendcontent2.a() == null || friendcontent2.a().length() <= 0)
        {
            Log.a("MicroMsg.ChattingListAdapter", "getView : parse possible friend msg failed");
        } else
        {
            int i3 = MsgInfoStorageLogic.a(msginfo.i());
            if(i3 != -1)
            {
                String s14 = msginfo.i().substring(0, i3).trim();
                String s;
                String s1;
                String s2;
                int k1;
                boolean flag1;
                String s3;
                String s4;
                String s5;
                int l1;
                String s6;
                String s7;
                String s8;
                boolean flag2;
                VideoInfo videoinfo;
                String s9;
                android.graphics.Bitmap bitmap;
                int i2;
                ProgressBar progressbar;
                int j2;
                String s10;
                int k2;
                String s11;
                String s12;
                int l2;
                com.tencent.mm.storage.MsgInfo.FriendContent friendcontent;
                android.text.SpannableString spannablestring;
                android.text.SpannableString spannablestring1;
                android.text.SpannableString spannablestring2;
                android.text.SpannableString spannablestring3;
                com.tencent.mm.storage.MsgInfo.VerifyContent verifycontent;
                android.text.SpannableString spannablestring4;
                com.tencent.mm.storage.MsgInfo.FriendContent friendcontent1;
                android.text.SpannableString spannablestring5;
                android.text.SpannableString spannablestring6;
                if(s14 != null && s14.length() > 0)
                    viewholder1.h.setText(ContactStorageLogic.e(s14));
                else
                    s14 = null;
            } else
            {
                s14 = friendcontent2.a();
            }
            viewholder1.m.setText(0x7f0a0169);
            viewholder1.h.setText(friendcontent2.a());
            viewholder1.m.setCompoundDrawablesWithIntrinsicBounds(0x7f020300, 0, 0, 0);
            spannablestring6 = SpanUtil.a(o, friendcontent2.b(), (int)viewholder1.l.getTextSize());
            viewholder1.l.setText(spannablestring6);
            viewholder1.n.setVisibility(8);
            a(viewholder1.e, friendcontent2.a());
            a(viewholder1.d, s14);
            viewholder1.d.setVisibility(0);
            viewholder1.d.setOnClickListener(i.a(s14));
            viewholder1.c.setVisibility(8);
        }
          goto _L3
_L14:
        friendcontent1 = MMCore.f().i().n(msginfo.i());
        if(friendcontent1 == null || friendcontent1.a() == null || friendcontent1.a().length() <= 0)
        {
            Log.a("MicroMsg.ChattingListAdapter", "getView : parse possible friend msg failed");
        } else
        {
            viewholder1.m.setText(0x7f0a0169);
            viewholder1.h.setText(friendcontent1.a());
            viewholder1.m.setCompoundDrawablesWithIntrinsicBounds(0x7f020300, 0, 0, 0);
            spannablestring5 = SpanUtil.a(o, friendcontent1.b(), (int)viewholder1.l.getTextSize());
            viewholder1.l.setText(spannablestring5);
            viewholder1.n.setVisibility(8);
            a(viewholder1.e, friendcontent1.a());
            a(viewholder1.d, l);
            viewholder1.d.setVisibility(0);
            viewholder1.c.setVisibility(8);
        }
          goto _L3
_L11:
        if(msginfo.d() != 37) goto _L71; else goto _L70
_L70:
        verifycontent = MMCore.f().i().m(msginfo.i());
        if(verifycontent != null && verifycontent.a() != null && verifycontent.a().length() > 0) goto _L73; else goto _L72
_L72:
        Log.a("MicroMsg.ChattingListAdapter", "getView : parse verify msg failed");
          goto _L3
_L73:
        verifycontent.h();
        JVM INSTR tableswitch 18 30: default 4424
    //                   18 4558
    //                   19 4424
    //                   20 4424
    //                   21 4424
    //                   22 4583
    //                   23 4583
    //                   24 4583
    //                   25 4633
    //                   26 4583
    //                   27 4583
    //                   28 4583
    //                   29 4583
    //                   30 4608;
           goto _L74 _L75 _L74 _L74 _L74 _L76 _L76 _L76 _L77 _L76 _L76 _L76 _L76 _L78
_L74:
        viewholder1.m.setText(0x7f0a015e);
        viewholder1.e.setImageResource(0x7f0200f5);
_L79:
        spannablestring4 = SpanUtil.a(o, verifycontent.c(), (int)viewholder1.h.getTextSize());
        viewholder1.h.setText(spannablestring4);
        a(viewholder1.d, verifycontent.a());
        if(!ContactStorageLogic.f(verifycontent.a()))
        {
            viewholder1.l.setVisibility(0);
            viewholder1.l.setText((new StringBuilder()).append("(").append(o.getString(0x7f0a0309)).append(")").toString());
        } else
        {
            viewholder1.l.setVisibility(8);
        }
          goto _L3
_L75:
        viewholder1.m.setText(0x7f0a015a);
        viewholder1.e.setImageResource(0x7f0200f3);
          goto _L79
_L76:
        viewholder1.m.setText(0x7f0a015b);
        viewholder1.e.setImageResource(0x7f0200f4);
          goto _L79
_L78:
        viewholder1.m.setText(0x7f0a0351);
        viewholder1.e.setImageResource(0x7f020253);
          goto _L79
_L77:
        viewholder1.m.setText(0x7f0a015c);
        viewholder1.e.setImageResource(0x7f0200f1);
          goto _L79
_L71:
        if(msginfo.d() != 40) goto _L81; else goto _L80
_L80:
        friendcontent = MMCore.f().i().n(msginfo.i());
        if(friendcontent != null && friendcontent.a() != null && friendcontent.a().length() > 0) goto _L83; else goto _L82
_L82:
        Log.a("MicroMsg.ChattingListAdapter", "getView : parse possible friend msg failed");
          goto _L3
_L83:
        friendcontent.g();
        JVM INSTR lookupswitch 3: default 4772
    //                   4: 4906
    //                   10: 4964
    //                   31: 5022;
           goto _L84 _L85 _L86 _L87
_L84:
        viewholder1.m.setText(0x7f0a0163);
        viewholder1.e.setImageResource(0x7f020251);
        spannablestring3 = SpanUtil.a(o, friendcontent.c(), (int)viewholder1.h.getTextSize());
        viewholder1.h.setText(spannablestring3);
_L88:
        a(viewholder1.d, friendcontent.a());
        if(!ContactStorageLogic.f(friendcontent.a()))
        {
            viewholder1.l.setVisibility(0);
            viewholder1.l.setText((new StringBuilder()).append("(").append(o.getString(0x7f0a0309)).append(")").toString());
        } else
        {
            viewholder1.l.setVisibility(8);
        }
          goto _L3
_L85:
        viewholder1.m.setText(0x7f0a0161);
        viewholder1.e.setImageResource(0x7f020252);
        spannablestring2 = SpanUtil.a(o, friendcontent.c(), (int)viewholder1.h.getTextSize());
        viewholder1.h.setText(spannablestring2);
          goto _L88
_L86:
        viewholder1.m.setText(0x7f0a0162);
        viewholder1.e.setImageResource(0x7f020250);
        spannablestring1 = SpanUtil.a(o, friendcontent.c(), (int)viewholder1.h.getTextSize());
        viewholder1.h.setText(spannablestring1);
          goto _L88
_L87:
        viewholder1.m.setText(0x7f0a0160);
        viewholder1.e.setImageResource(0x7f0200f2);
        spannablestring = SpanUtil.a(o, friendcontent.c(), (int)viewholder1.h.getTextSize());
        viewholder1.h.setText(spannablestring);
          goto _L88
_L81:
        Log.b("MicroMsg.ChattingListAdapter", (new StringBuilder()).append("FROM_FMESSAGE did not include this type, msgType = ").append(msginfo.d()).toString());
          goto _L3
_L8:
        viewholder1.d.setVisibility(0);
        if(!n) goto _L90; else goto _L89
_L89:
        l2 = MsgInfoStorageLogic.a(msginfo.i());
        if(l2 == -1) goto _L92; else goto _L91
_L91:
        s12 = msginfo.i().substring(0, l2).trim();
        if(s12 == null || s12.length() <= 0) goto _L92; else goto _L93
_L93:
        a(viewholder1.d, s12);
        viewholder1.h.setText(ContactStorageLogic.e(s12));
_L94:
        viewholder1.o.a(true);
        a(viewholder1, msginfo);
        viewholder1.d.setOnClickListener(i.a(s12));
          goto _L3
_L90:
        s11 = m;
        if(ContactStorageLogic.E(s11))
            viewholder1.d.setVisibility(8);
        else
            a(viewholder1.d, s11);
        viewholder1.h.setText(ContactStorageLogic.e(s11));
        s12 = msginfo.h();
          goto _L94
_L9:
        viewholder1.d.setVisibility(0);
        a(viewholder1.d, l);
        viewholder1.d.setOnClickListener(i.a(l));
        viewholder1.o.a(false);
        a(viewholder1, msginfo);
          goto _L3
_L12:
        if(viewholder1.B == 10)
            flag2 = true;
        else
            flag2 = false;
        videoinfo = VideoLogic.e(msginfo.j());
        if(videoinfo == null)
            videoinfo = new VideoInfo();
        s9 = MMCore.f().p().e(msginfo.j());
        bitmap = MMCore.f().k().a(s9, MMActivity.k(), o);
        if(bitmap == null)
        {
            if(!MMCore.f().c())
                viewholder1.c.setImageDrawable(o.a(0x7f0202e6));
            else
                viewholder1.c.setImageDrawable(o.a(0x7f020104));
        } else
        {
            viewholder1.c.setImageBitmap(bitmap);
        }
        if(videoinfo.r() == 0)
            viewholder1.A.setVisibility(0);
        else
            viewholder1.A.setVisibility(8);
        if(flag2)
        {
            if(n)
                s10 = videoinfo.q();
            else
                s10 = videoinfo.p();
            if(ContactStorageLogic.E(s10))
            {
                viewholder1.d.setVisibility(8);
            } else
            {
                viewholder1.d.setVisibility(0);
                a(viewholder1.d, s10);
            }
            viewholder1.h.setText(ContactStorageLogic.e(s10));
            viewholder1.t.setText(Util.b(videoinfo.g()));
            viewholder1.u.setText(Util.b(videoinfo.m()));
            k2 = videoinfo.j();
            if(k2 == 199)
                viewholder1.s.setImageDrawable(o.a(0x7f0202ea));
            else
                viewholder1.s.setImageDrawable(o.a(0x7f0202dc));
            if(k2 == 112)
            {
                viewholder1.v.setVisibility(0);
                viewholder1.w.setVisibility(8);
                viewholder1.x.setVisibility(0);
                viewholder1.y.setVisibility(0);
                viewholder1.x.setProgress(VideoLogic.b(videoinfo));
                Log.e("MicroMsg.ChattingListAdapter", "status begin");
                viewholder1.x.invalidate();
            } else
            if(k2 == 113 || k2 == 198)
            {
                viewholder1.w.setVisibility(0);
                viewholder1.v.setVisibility(8);
                viewholder1.y.setVisibility(8);
                viewholder1.x.setVisibility(8);
                Log.e("MicroMsg.ChattingListAdapter", "status pause");
            } else
            {
                viewholder1.v.setVisibility(8);
                viewholder1.w.setVisibility(8);
                viewholder1.y.setVisibility(8);
                viewholder1.x.setVisibility(8);
                Log.e("MicroMsg.ChattingListAdapter", "status gone");
            }
            viewholder1.d.setOnClickListener(i.a(s10));
            viewholder1.v.setOnClickListener(new VideoPauseClickListener(msginfo.j(), false));
            viewholder1.w.setOnClickListener(new VideoStartClickListener(msginfo.j(), false));
        } else
        {
            viewholder1.t.setText(Util.b(videoinfo.g()));
            viewholder1.u.setText(Util.b(videoinfo.m()));
            i2 = videoinfo.j();
            viewholder1.s.setImageDrawable(o.a(0x7f0202ea));
            if(i2 == 104 || i2 == 103)
            {
                viewholder1.v.setVisibility(0);
                viewholder1.w.setVisibility(8);
                viewholder1.x.setVisibility(0);
                viewholder1.y.setVisibility(0);
                progressbar = viewholder1.x;
                if(videoinfo.g() == 0)
                {
                    j2 = 0;
                } else
                {
                    Log.d("MicroMsg.VideoLogic", (new StringBuilder()).append("getUploadProgress :").append(videoinfo.e()).append(" ").append(videoinfo.g()).toString());
                    j2 = (100 * videoinfo.e()) / videoinfo.g();
                }
                progressbar.setProgress(j2);
                Log.e("MicroMsg.ChattingListAdapter", "status begin");
                viewholder1.x.invalidate();
            } else
            if(i2 == 105 || i2 == 198)
            {
                viewholder1.w.setVisibility(0);
                viewholder1.v.setVisibility(8);
                viewholder1.y.setVisibility(8);
                viewholder1.x.setVisibility(8);
                Log.e("MicroMsg.ChattingListAdapter", "status pause");
            } else
            {
                viewholder1.v.setVisibility(8);
                viewholder1.w.setVisibility(8);
                viewholder1.y.setVisibility(8);
                viewholder1.x.setVisibility(8);
                Log.e("MicroMsg.ChattingListAdapter", "status gone");
            }
            viewholder1.d.setVisibility(0);
            a(viewholder1.d, l);
            viewholder1.d.setOnClickListener(i.a(l));
            viewholder1.v.setOnClickListener(new VideoPauseClickListener(msginfo.j(), true));
            viewholder1.w.setOnClickListener(new VideoStartClickListener(msginfo.j(), true));
        }
          goto _L3
_L5:
        if(viewholder1.B == 2)
            flag1 = true;
        else
            flag1 = false;
        if(flag1)
        {
            viewholder1.d.setVisibility(0);
            s3 = null;
            if(n)
            {
                s5 = msginfo.i();
                l1 = MsgInfoStorageLogic.a(s5);
                if(l1 != -1)
                {
                    s7 = s5.substring(0, l1).trim();
                    if(s7 != null && s7.length() > 0)
                    {
                        a(viewholder1.d, s7);
                        viewholder1.h.setText(ContactStorageLogic.e(s7));
                    } else
                    {
                        s7 = s3;
                    }
                    s8 = s5.substring(l1 + 1).trim();
                    s3 = s7;
                    s6 = s8;
                } else
                {
                    s6 = s5;
                }
                viewholder1.j.setText(s6);
            } else
            {
                s4 = m;
                if(ContactStorageLogic.E(s4))
                    viewholder1.d.setVisibility(8);
                else
                    a(viewholder1.d, s4);
                viewholder1.h.setText(ContactStorageLogic.e(s4));
                viewholder1.j.setText(msginfo.i());
                s3 = msginfo.h();
            }
            j.a(viewholder1.j);
            viewholder1.d.setOnClickListener(i.a(s3));
        } else
        {
            viewholder1.d.setVisibility(0);
            a(viewholder1.d, l);
            viewholder1.d.setOnClickListener(i.a(l));
            viewholder1.j.setText(msginfo.i());
            if(msginfo.e() == 2 || msginfo.e() == 5)
                viewholder1.f.setVisibility(8);
            else
                viewholder1.f.setVisibility(0);
            j.a(viewholder1.j);
        }
          goto _L3
_L17:
        if(viewholder1 == null) goto _L3; else goto _L95
_L95:
        viewholder1.j.setVisibility(8);
        s = m;
        if(!ContactStorageLogic.b(m))
            break MISSING_BLOCK_LABEL_6986;
        k1 = MsgInfoStorageLogic.a(msginfo.i());
        if(k1 == -1)
            break MISSING_BLOCK_LABEL_6986;
        s1 = msginfo.i().substring(0, k1).trim();
        if(s == null || s1.length() <= 0)
            break MISSING_BLOCK_LABEL_6986;
_L96:
        a(viewholder1.d, s1);
        viewholder1.d.setVisibility(0);
        viewholder1.d.setOnClickListener(i.a(s1));
        s2 = MMCore.f().S().a(msginfo);
        if(s2 == null || s2.equals(""))
        {
            viewholder1.x.setVisibility(0);
            viewholder1.j.setVisibility(8);
        } else
        {
            viewholder1.x.setVisibility(8);
            viewholder1.j.setVisibility(0);
            Log.d("MicroMsg.ChattingListAdapter", (new StringBuilder()).append("location info : ").append(s2).toString());
            viewholder1.j.setText((new StringBuilder()).append("").append(s2).toString());
        }
          goto _L3
        s1 = s;
          goto _L96
_L92:
        s12 = null;
          goto _L94
_L69:
        emojiview1 = emojiview;
        emojiinfo1 = emojiinfo;
          goto _L97
_L53:
        s16 = null;
          goto _L60
_L43:
        s18 = null;
          goto _L45
    }

    public int getViewTypeCount()
    {
        return 19;
    }

    private short a[];
    private short b[];
    private int f;
    private int g;
    private HashSet h;
    private final AvatarClickListeners i;
    private final SpanUtil j;
    private final AutoPlay k;
    private final String l;
    private final String m;
    private final boolean n;
    private ChattingUI o;
    private ChatBgAttr p;

    private class _cls1
        implements SpanUtil.OnClickListener
    {

        public final void a(int i1)
        {
            i1;
            JVM INSTR tableswitch 2 23: default 104
        //                       2 115
        //                       3 104
        //                       4 105
        //                       5 104
        //                       6 115
        //                       7 115
        //                       8 115
        //                       9 115
        //                       10 104
        //                       11 104
        //                       12 104
        //                       13 104
        //                       14 115
        //                       15 115
        //                       16 115
        //                       17 115
        //                       18 115
        //                       19 115
        //                       20 115
        //                       21 115
        //                       22 115
        //                       23 115;
               goto _L1 _L2 _L1 _L3 _L1 _L2 _L2 _L2 _L2 _L1 _L1 _L1 _L1 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2 _L2
_L1:
            return;
_L3:
            ChattingListAdapter.a(b);
            continue; /* Loop/switch isn't completed */
_L2:
            a.finish();
            if(true) goto _L1; else goto _L4
_L4:
        }

        private ChattingUI a;
        private ChattingListAdapter b;

        _cls1(ChattingUI chattingui)
        {
            b = ChattingListAdapter.this;
            a = chattingui;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.SendVerifyRequest.IOnSendVerifyRequest
    {

        public final void a()
        {
        }

        private ChattingListAdapter a;

        _cls2()
        {
            a = ChattingListAdapter.this;
            super();
        }
    }


    private class VideoPauseClickListener
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            if(MMCore.f().c()) goto _L2; else goto _L1
_L1:
            com.tencent.mm.ui.MMToast.ToastSdcard.a(ChattingListAdapter.b(c), 1);
_L4:
            return;
_L2:
            if(b)
            {
                String s1 = a;
                VideoInfo videoinfo1 = VideoLogic.e(s1);
                if(videoinfo1 == null)
                {
                    Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" getinfo failed: ").append(s1).toString());
                    CodeInfo.b();
                } else
                if(videoinfo1.j() != 104 && videoinfo1.j() != 103)
                {
                    Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" get status failed: ").append(s1).append(" status:").append(videoinfo1.j()).toString());
                    CodeInfo.b();
                } else
                {
                    videoinfo1.h(105);
                    videoinfo1.b(Util.c());
                    videoinfo1.a(1280);
                    if(!VideoLogic.a(videoinfo1))
                    {
                        Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" update failed: ").append(s1).toString());
                        CodeInfo.b();
                    }
                }
            } else
            {
                String s = a;
                VideoInfo videoinfo = VideoLogic.e(s);
                if(videoinfo == null)
                {
                    Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" getinfo failed: ").append(s).toString());
                    CodeInfo.b();
                } else
                if(videoinfo.j() != 112)
                {
                    Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" get status failed: ").append(s).append(" status:").append(videoinfo.j()).toString());
                    CodeInfo.b();
                } else
                {
                    videoinfo.h(113);
                    videoinfo.b(Util.c());
                    videoinfo.a(1280);
                    if(!VideoLogic.a(videoinfo))
                    {
                        Log.a("MicroMsg.VideoLogic", (new StringBuilder()).append("ERR:").append(CodeInfo.a()).append(" update failed: ").append(s).toString());
                        CodeInfo.b();
                    }
                }
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private String a;
        private boolean b;
        private ChattingListAdapter c;

        public VideoPauseClickListener(String s, boolean flag)
        {
            c = ChattingListAdapter.this;
            super();
            a = s;
            b = flag;
        }
    }


    private class VideoStartClickListener
        implements android.view.View.OnClickListener
    {

        static String a(VideoStartClickListener videostartclicklistener)
        {
            return videostartclicklistener.a;
        }

        public void onClick(View view)
        {
            if(MMCore.f().c()) goto _L2; else goto _L1
_L1:
            com.tencent.mm.ui.MMToast.ToastSdcard.a(ChattingListAdapter.b(c), 1);
_L4:
            return;
_L2:
            VideoInfo videoinfo = MMCore.f().p().a(a);
            if(b)
            {
                if(videoinfo.j() == 198)
                {
                    VideoInfo videoinfo2 = VideoLogic.e(a);
                    if(videoinfo2 != null)
                    {
                        if(videoinfo2.h() < videoinfo2.i())
                            videoinfo2.h(103);
                        else
                            videoinfo2.h(104);
                        videoinfo2.a(Util.c());
                        videoinfo2.b(Util.c());
                        videoinfo2.c(Util.c());
                        videoinfo2.a(3840);
                        if(VideoLogic.a(videoinfo2))
                            MMCore.j().a();
                    }
                } else
                {
                    VideoLogic.c(a);
                }
            } else
            if(videoinfo.j() == 198)
            {
                String s = a;
                VideoInfo videoinfo1 = new VideoInfo();
                videoinfo1.h(112);
                videoinfo1.b(Util.c());
                videoinfo1.c(Util.c());
                videoinfo1.a(s);
                videoinfo1.a(3328);
                if(VideoLogic.a(videoinfo1))
                    MMCore.j().a();
            } else
            if(!NetService.b(ChattingListAdapter.b(c)) && !ChattingUI.a)
            {
                ChattingUI.a = true;
                class _cls1
                    implements android.content.DialogInterface.OnClickListener
                {

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                        VideoLogic.d(VideoStartClickListener.a(a));
                    }

                    private VideoStartClickListener a;

                _cls1()
                {
                    a = VideoStartClickListener.this;
                    super();
                }
                }

                class _cls2
                    implements android.content.DialogInterface.OnClickListener
                {

                    public void onClick(DialogInterface dialoginterface, int i1)
                    {
                    }

                    private VideoStartClickListener a;

                _cls2()
                {
                    a = VideoStartClickListener.this;
                    super();
                }
                }

                MMAlert.a(ChattingListAdapter.b(c), 0x7f0a0331, 0x7f0a0010, new _cls1(), new _cls2());
            } else
            {
                VideoLogic.d(a);
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private String a;
        private boolean b;
        private ChattingListAdapter c;

        public VideoStartClickListener(String s, boolean flag)
        {
            c = ChattingListAdapter.this;
            super();
            a = s;
            b = flag;
        }
    }

}
