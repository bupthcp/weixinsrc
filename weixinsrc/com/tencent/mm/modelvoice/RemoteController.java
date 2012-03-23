// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvoice;

import android.content.ComponentName;
import android.media.AudioManager;
import com.tencent.mm.platformtools.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class RemoteController
{

    protected void finalize()
    {
        Method method = d;
        if(method != null) goto _L2; else goto _L1
_L1:
        super.finalize();
        return;
_L2:
        try
        {
            Method method1 = d;
            AudioManager audiomanager = a;
            Object aobj[] = new Object[1];
            aobj[0] = b;
            method1.invoke(audiomanager, aobj);
        }
        catch(InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getCause();
            if(throwable instanceof RuntimeException)
                throw (RuntimeException)throwable;
            if(throwable instanceof Error)
                throw (Error)throwable;
            else
                throw new RuntimeException(invocationtargetexception);
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            Log.a("MicroMsg.RemoteControlReceiver", (new StringBuilder()).append("unexpected ").append(illegalaccessexception).toString());
        }
        RemoteControlReceiver.a();
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static Method c;
    private static Method d;
    private AudioManager a;
    private ComponentName b;

    static 
    {
        if(c == null)
        {
            Class aclass1[] = new Class[1];
            aclass1[0] = android/content/ComponentName;
            c = android/media/AudioManager.getMethod("registerMediaButtonEventReceiver", aclass1);
        }
        if(d == null)
        {
            Class aclass[] = new Class[1];
            aclass[0] = android/content/ComponentName;
            d = android/media/AudioManager.getMethod("unregisterMediaButtonEventReceiver", aclass);
        }
_L2:
        return;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    private class RemoteControlReceiver extends BroadcastReceiver
    {

        public static void a()
        {
            b = null;
            if(a != null)
            {
                a.a();
                a = null;
            }
        }

        static CallBack b()
        {
            return b;
        }

        static MTimerHandler c()
        {
            a = null;
            return null;
        }

        public void onReceive(Context context, Intent intent)
        {
            if("android.intent.action.MEDIA_BUTTON".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
            Log.d("MicroMsg.RemoteControlReceiver", (new StringBuilder()).append("unknown action, ignore").append(intent.getAction()).toString());
_L4:
            return;
_L2:
            if(a == null && b != null)
            {
                Log.d("MicroMsg.RemoteControlReceiver", "got remote key event down");
                b.c();
                class _cls1
                    implements com.tencent.mm.platformtools.MTimerHandler.CallBack
                {

                    public final boolean a()
                    {
                        Log.d("MicroMsg.RemoteControlReceiver", "got remote key event up");
                        if(RemoteControlReceiver.b() != null)
                            RemoteControlReceiver.b().d();
                        RemoteControlReceiver.c();
                        return false;
                    }

                    private RemoteControlReceiver a;

                _cls1()
                {
                    a = RemoteControlReceiver.this;
                    super();
                }
                }

                a = new MTimerHandler(new _cls1(), true);
            }
            if(a != null)
                a.a(1000L);
            if(true) goto _L4; else goto _L3
_L3:
        }

        private static MTimerHandler a;
        private static CallBack b;

        public RemoteControlReceiver()
        {
        }

        private class CallBack
        {

            public abstract void c();

            public abstract void d();
        }

    }

}
