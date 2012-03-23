// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.app.AlertDialog;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.modelfriend.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.ConfigStorage;
import com.tencent.mm.ui.MMAlert;
import junit.framework.Assert;

public class SmsBindMobileObserver extends ContentObserver
    implements IOnSceneEnd
{

    public SmsBindMobileObserver(SmsSceneType smsscenetype, Handler handler, Context context, OnMobileBindedListener onmobilebindedlistener)
    {
        super(handler);
        c = false;
        d = false;
        e = false;
        g = 0;
        h = null;
        s = null;
        u = new _cls1();
        t = smsscenetype;
        b = context;
        q = ((LayoutInflater)b.getSystemService("layout_inflater")).inflate(0x7f0300a4, null);
        r = (ProgressBar)q.findViewById(0x7f0701b2);
        i = onmobilebindedlistener;
    }

    static AlertDialog a(SmsBindMobileObserver smsbindmobileobserver)
    {
        return smsbindmobileobserver.h;
    }

    private boolean a(int i1)
    {
        boolean flag = true;
        i1;
        JVM INSTR lookupswitch 8: default 76
    //                   -59: 268
    //                   -57: 80
    //                   -43: 112
    //                   -41: 195
    //                   -36: 252
    //                   -35: 211
    //                   -34: 96
    //                   -1: 80;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L3
_L1:
        flag = false;
_L10:
        return flag;
_L3:
        Toast.makeText(b, 0x7f0a00af, 0).show();
        continue; /* Loop/switch isn't completed */
_L8:
        Toast.makeText(b, 0x7f0a02d0, 0).show();
        continue; /* Loop/switch isn't completed */
_L4:
        Log.a("MicroMsg.SmsBindMobileObserver", "dealErrCodeBindMobile");
        e = flag;
        if(SmsSceneType.b == t)
        {
            MMCore.f().f().a(4097, "");
            MMCore.f().f().a(6, f);
            FriendLogic.a(b.getApplicationContext());
        }
        b(flag);
        Toast.makeText(b, 0x7f0a02d1, 0).show();
        continue; /* Loop/switch isn't completed */
_L5:
        Toast.makeText(b, 0x7f0a02d5, 0).show();
        continue; /* Loop/switch isn't completed */
_L7:
        if(t == SmsSceneType.a)
            b(3);
        else
            MMAlert.a(b, 0x7f0a02d6, 0x7f0a02d8, new _cls2());
        continue; /* Loop/switch isn't completed */
_L6:
        Toast.makeText(b, 0x7f0a02d4, 0).show();
        continue; /* Loop/switch isn't completed */
_L2:
        MMAlert.a(b, 0x7f0a02d2, 0x7f0a0010, null);
        if(true) goto _L10; else goto _L9
_L9:
    }

    private static String b(String s1)
    {
        int i1;
        for(i1 = 0; i1 < s1.length() && (Character.isDigit(s1.charAt(i1)) || Character.isLetter(s1.charAt(i1))); i1++);
        Log.e("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("verify number from sms:").append(s1.substring(0, i1)).toString());
        return s1.substring(0, i1);
    }

    private void b(int i1)
    {
        if(t == SmsSceneType.b)
            MMCore.g().a(27, this);
        else
            MMCore.g().a(36, this);
        if(i != null)
            i.a(i1);
    }

    static boolean b(SmsBindMobileObserver smsbindmobileobserver)
    {
        return smsbindmobileobserver.e;
    }

    static int c(SmsBindMobileObserver smsbindmobileobserver)
    {
        int i1 = 1 + smsbindmobileobserver.g;
        smsbindmobileobserver.g = i1;
        return i1;
    }

    private String c()
    {
        String s1;
        if(o == null || o.length == 0)
        {
            s1 = "";
        } else
        {
            s1 = "";
            for(int i1 = 0; i1 < o.length; i1++)
                if(o[i1] != null || !o[i1].equals(""))
                    s1 = (new StringBuilder()).append(s1).append(" or address = '").append(o[i1]).append("'").toString();

            if(!s1.equals(""))
                s1 = s1.substring(4, s1.length());
            Log.e("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("sql where:").append(s1).toString());
        }
        return s1;
    }

    static int d(SmsBindMobileObserver smsbindmobileobserver)
    {
        return smsbindmobileobserver.g;
    }

    static ProgressBar e(SmsBindMobileObserver smsbindmobileobserver)
    {
        return smsbindmobileobserver.r;
    }

    static boolean f(SmsBindMobileObserver smsbindmobileobserver)
    {
        smsbindmobileobserver.c = true;
        return true;
    }

    static boolean g(SmsBindMobileObserver smsbindmobileobserver)
    {
        return smsbindmobileobserver.d;
    }

    static void h(SmsBindMobileObserver smsbindmobileobserver)
    {
        smsbindmobileobserver.b(2);
    }

    public final void a()
    {
        MMCore.g().b(27, this);
        MMCore.g().b(36, this);
        b = null;
        e = true;
        if(h != null)
            h.dismiss();
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).toString());
        if(netscenebase.equals(j) || netscenebase.equals(k) || netscenebase.equals(l) || netscenebase.equals(m)) goto _L2; else goto _L1
_L1:
        Log.c("MicroMsg.SmsBindMobileObserver", "onSceneEnd, doScene is not called by this class");
_L4:
        return;
_L2:
        if(e)
            continue; /* Loop/switch isn't completed */
        if(i1 == 1 || i1 == 2)
        {
            Log.d("MicroMsg.SmsBindMobileObserver", "error net");
            if(h != null)
                h.dismiss();
            b(4);
            continue; /* Loop/switch isn't completed */
        }
        if(SmsSceneType.b == t && netscenebase.b() == 27)
        {
            switch(((NetSceneBindOpMobile)netscenebase).f())
            {
            default:
                continue; /* Loop/switch isn't completed */

            case 1: // '\001'
            case 2: // '\002'
                if(((NetSceneBindOpMobile)netscenebase).f() == 2 && h != null)
                    h.dismiss();
                break;
            }
            if(i1 == 0 && j1 == 0)
            {
                if(((NetSceneBindOpMobile)netscenebase).f() == 2)
                {
                    FriendLogic.a(b.getApplicationContext());
                    b(1);
                    continue; /* Loop/switch isn't completed */
                }
                if(((NetSceneBindOpMobile)netscenebase).f() == 1)
                {
                    Log.e("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("mobile:").append(f).toString());
                    if(f != null && !f.startsWith("+86"))
                    {
                        if(h != null)
                            h.dismiss();
                        e = true;
                        b(2);
                    } else
                    {
                        n = ((NetSceneBindOpMobile)netscenebase).g();
                        o = n.split(",");
                    }
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(((NetSceneBindOpMobile)netscenebase).f() == 2)
            {
                if(h != null)
                    h.dismiss();
                e = true;
                b(2);
            } else
            if(a(j1))
            {
                if(h != null)
                    h.dismiss();
                e = true;
            } else
            {
                e = true;
                if(h != null)
                    h.dismiss();
                Context context2 = b;
                Context context3 = b;
                Object aobj1[] = new Object[2];
                aobj1[0] = Integer.valueOf(i1);
                aobj1[1] = Integer.valueOf(j1);
                Toast.makeText(context2, context3.getString(0x7f0a02b8, aobj1), 0).show();
            }
            continue; /* Loop/switch isn't completed */
        }
        if(SmsSceneType.a == t && netscenebase.b() == 36)
        {
            switch(((NetSceneBindOpMobileForReg)netscenebase).d())
            {
            default:
                continue; /* Loop/switch isn't completed */

            case 5: // '\005'
            case 6: // '\006'
                if(((NetSceneBindOpMobileForReg)netscenebase).d() == 6 && h != null)
                    h.dismiss();
                break;
            }
            if(i1 == 0 && j1 == 0)
            {
                if(((NetSceneBindOpMobileForReg)netscenebase).d() == 6)
                {
                    s = ((NetSceneBindOpMobileForReg)netscenebase).e();
                    Log.d("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("NetSceneBindOpMobileForReg ticket: ").append(s).toString());
                    b(1);
                    continue; /* Loop/switch isn't completed */
                }
                if(((NetSceneBindOpMobileForReg)netscenebase).d() == 5)
                {
                    Log.e("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("mobile:").append(f).toString());
                    if(f != null && !f.startsWith("+86"))
                    {
                        if(h != null)
                            h.dismiss();
                        e = true;
                        b(2);
                    } else
                    {
                        n = ((NetSceneBindOpMobileForReg)netscenebase).f_();
                        o = n.split(",");
                    }
                    continue; /* Loop/switch isn't completed */
                }
            }
            if(((NetSceneBindOpMobileForReg)netscenebase).d() == 6)
            {
                if(h != null)
                    h.dismiss();
                e = true;
                b(2);
            } else
            if(a(j1))
            {
                if(h != null)
                    h.dismiss();
                e = true;
            } else
            {
                e = true;
                if(h != null)
                    h.dismiss();
                Context context = b;
                Context context1 = b;
                Object aobj[] = new Object[2];
                aobj[0] = Integer.valueOf(i1);
                aobj[1] = Integer.valueOf(j1);
                Toast.makeText(context, context1.getString(0x7f0a02b8, aobj), 0).show();
            }
        } else
        {
            Assert.assertTrue("code path should not be here!", false);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void a(String s1)
    {
        if(t == SmsSceneType.b)
            MMCore.g().a(27, this);
        else
            MMCore.g().a(36, this);
        f = s1;
        c = false;
        d = false;
        n = "";
        e = false;
        if(t == SmsSceneType.b)
        {
            k = new NetSceneBindOpMobile(f, 1, "");
            MMCore.g().b(k);
        } else
        {
            m = new NetSceneBindOpMobileForReg(f, 5, "");
            MMCore.g().b(m);
        }
        if(h == null)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(b);
            builder.setIcon(0x7f020129);
            builder.setTitle(b.getString(0x7f0a02b6));
            builder.setCancelable(false);
            builder.setView(q);
            h = builder.create();
        }
        h.show();
        g = 0;
        r.setIndeterminate(false);
        u.sendEmptyMessage(1000);
    }

    public final String b()
    {
        return s;
    }

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        Log.e("MicroMsg.SmsBindMobileObserver", (new StringBuilder()).append("sms number:").append(n).toString());
        if(!c && !e && !d && n != null && !n.equals("") && o != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Uri uri = Uri.parse("content://sms/inbox");
        a = b.getContentResolver();
        String as[] = new String[3];
        as[0] = "body";
        as[1] = "_id";
        as[2] = "date";
        String s1 = c();
        if(s1 != null && !s1.equals(""))
        {
            Cursor cursor = a.query(uri, as, s1, null, null);
            if(cursor != null)
            {
                int i1 = -1;
                long l1 = 0L;
                do
                {
                    if(!cursor.moveToNext())
                        break;
                    long l2 = cursor.getLong(2);
                    if(l2 > l1)
                    {
                        i1 = cursor.getPosition();
                        l1 = l2;
                    }
                } while(true);
                p = null;
                if(i1 >= 0)
                {
                    d = true;
                    cursor.moveToPosition(i1);
                    p = b(cursor.getString(cursor.getColumnIndex("body")));
                    if(h != null)
                        h.setCancelable(true);
                    if(t == SmsSceneType.b)
                    {
                        j = new NetSceneBindOpMobile(f, 2, p);
                        MMCore.g().b(j);
                    } else
                    {
                        l = new NetSceneBindOpMobileForReg(f, 6, p);
                        MMCore.g().b(l);
                    }
                }
                cursor.close();
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private ContentResolver a;
    private Context b;
    private boolean c;
    private boolean d;
    private boolean e;
    private String f;
    private int g;
    private AlertDialog h;
    private final OnMobileBindedListener i;
    private NetSceneBindOpMobile j;
    private NetSceneBindOpMobile k;
    private NetSceneBindOpMobileForReg l;
    private NetSceneBindOpMobileForReg m;
    private String n;
    private String o[];
    private String p;
    private View q;
    private ProgressBar r;
    private String s;
    private SmsSceneType t;
    private Handler u;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            if(SmsBindMobileObserver.a(a).isShowing() && !SmsBindMobileObserver.b(a)) goto _L2; else goto _L1
_L1:
            return;
_L2:
            SmsBindMobileObserver.c(a);
            SmsBindMobileObserver.e(a).setProgress(SmsBindMobileObserver.d(a));
            if(SmsBindMobileObserver.d(a) < -2 + SmsBindMobileObserver.e(a).getMax())
            {
                sendEmptyMessageDelayed(0, 1000L);
            } else
            {
                SmsBindMobileObserver.f(a);
                SmsBindMobileObserver.e(a).setIndeterminate(true);
                if(!SmsBindMobileObserver.g(a))
                {
                    if(SmsBindMobileObserver.a(a) != null)
                        SmsBindMobileObserver.a(a).dismiss();
                    SmsBindMobileObserver.h(a);
                }
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private SmsBindMobileObserver a;

        _cls1()
        {
            a = SmsBindMobileObserver.this;
            super();
        }
    }


    private class SmsSceneType extends Enum
    {

        public static SmsSceneType valueOf(String s1)
        {
            return (SmsSceneType)Enum.valueOf(com/tencent/mm/ui/friend/SmsBindMobileObserver$SmsSceneType, s1);
        }

        public static SmsSceneType[] values()
        {
            return (SmsSceneType[])c.clone();
        }

        public static final SmsSceneType a;
        public static final SmsSceneType b;
        private static final SmsSceneType c[];

        static 
        {
            a = new SmsSceneType("REGISTERBYMOBILE", 0);
            b = new SmsSceneType("BINDMOBILE", 1);
            SmsSceneType asmsscenetype[] = new SmsSceneType[2];
            asmsscenetype[0] = a;
            asmsscenetype[1] = b;
            c = asmsscenetype;
        }

        private SmsSceneType(String s1, int i1)
        {
            super(s1, i1);
        }
    }


    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
        }

        private SmsBindMobileObserver a;

        _cls2()
        {
            a = SmsBindMobileObserver.this;
            super();
        }
    }


    private class OnMobileBindedListener
    {

        public abstract void a(int i1);
    }

}
