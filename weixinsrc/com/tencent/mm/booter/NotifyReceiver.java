// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.booter;

import android.content.*;
import android.text.format.Time;
import com.tencent.mm.algorithm.TypeTransform;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelbase.RDispatcher;
import com.tencent.mm.modelimage.ImgService;
import com.tencent.mm.modelmulti.NetSceneSync;
import com.tencent.mm.modelmulti.NewSyncMgr;
import com.tencent.mm.modelsimple.NetSceneDirectSend;
import com.tencent.mm.modelsimple.NetSceneSynCheck;
import com.tencent.mm.modelvoip.VoipService;
import com.tencent.mm.network.IDispatcher;
import com.tencent.mm.network.NetService;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.MMWakerLock;
import com.tencent.mm.pointers.PByteArray;
import com.tencent.mm.protocal.MMProtocalJni;
import com.tencent.mm.ui.MMAppMgr;

public class NotifyReceiver extends BroadcastReceiver
{

    public NotifyReceiver()
    {
    }

    static Context a(Context context)
    {
        b = context;
        return context;
    }

    public static void a()
    {
        MMCore.g().b(38, d);
        MMCore.g().b(39, d);
        if(d == null)
            d = new NofityIOnSceneEnd();
        MMCore.g().a(38, d);
        MMCore.g().a(39, d);
    }

    protected static void b()
    {
        int i = c.getIntExtra("notify_uin", 0);
        if(!MMCore.f().b())
        {
            Log.c("MicroMsg.NotifyReceiver", (new StringBuilder()).append("receiveImp accStg not seting uin:").append(i).toString());
            MMCore.f().a(i);
        }
        if(MMCore.f().b() && !MMCore.w()) goto _L2; else goto _L1
_L1:
        Log.b("MicroMsg.NotifyReceiver", (new StringBuilder()).append("receiveImp hasSetuin:").append(MMCore.f().b()).append(" isHold:").append(MMCore.w()).toString());
_L4:
        return;
_L2:
        int j = c.getIntExtra("notify_option_type", 0);
        switch(j)
        {
        default:
            Log.a("MicroMsg.NotifyReceiver", (new StringBuilder()).append("invald opCode:").append(j).toString());
            break;

        case 1: // '\001'
            b(b);
            Context context = b;
            Log.c("MicroMsg.NotifyReceiver", "dealWithLooper");
            if(!MMCore.f().b() || MMCore.w())
            {
                Log.b("MicroMsg.NotifyReceiver", (new StringBuilder()).append("receiveImp hasSetuin:").append(MMCore.f().b()).append(" isHold:").append(MMCore.w()).toString());
            } else
            {
                Log.c("MicroMsg.NotifyReceiver", "Looper run");
                Time time = new Time();
                time.setToNow();
                if(!NetService.a(time.hour, time.minute, context))
                {
                    Log.c("MicroMsg.NotifyReceiver", "background active time limited");
                } else
                {
                    if(MMAppMgr.d() || !NetService.a(context))
                        MMCore.g().b(new NetSceneSync(3));
                    else
                        MMCore.g().b(new NetSceneSynCheck());
                    MMCore.i().a();
                    MMCore.j().a();
                    MMCore.l().a();
                    if(MMCore.q() != null)
                        MMCore.q().b();
                }
            }
            break;

        case 2: // '\002'
            b(b);
            Intent intent = c;
            Log.c("MicroMsg.NotifyReceiver", "dealWithNotify");
            int k = intent.getIntExtra("notify_respType", 0);
            byte abyte0[] = intent.getByteArrayExtra("notify_respBuf");
            switch(k)
            {
            default:
                break;

            case 10: // '\n'
                Log.d("MicroMsg.NotifyReceiver", "on direct send notify");
                com.tencent.mm.protocal.MMDirectSend.Resp resp = new com.tencent.mm.protocal.MMDirectSend.Resp();
                resp.a(MMCore.u());
                if(MMProtocalJni.bufToResp(k, resp, abyte0, null, new PByteArray()))
                    MMCore.g().a(0, 0, "", new NetSceneDirectSend(resp));
                break;

            case 38: // '&'
                Log.d("MicroMsg.NotifyReceiver", "on sync notify");
                long l;
                if(abyte0 == null)
                    l = 7L;
                else
                    l = TypeTransform.a(abyte0);
                NewSyncMgr.a(l, 7);
                break;

            case 39: // '\''
                MMCore.g().b(new NetSceneSynCheck());
                break;

            case 74: // 'J'
                MMCore.k().a(null);
                break;
            }
            break;

        case 99: // 'c'
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static void b(Context context)
    {
        MMWakerLock mmwakerlock = new MMWakerLock(context);
        a = mmwakerlock;
        mmwakerlock.a();
    }

    static Context c()
    {
        return b;
    }

    static MMWakerLock d()
    {
        return a;
    }

    static MMWakerLock e()
    {
        a = null;
        return null;
    }

    public void onReceive(Context context, Intent intent)
    {
        Log.c("MicroMsg.NotifyReceiver", "onReceive");
        if(context.getSharedPreferences("com.tencent.mm_preferences", 0).getBoolean("settings_fully_exit", false))
        {
            Log.c("MicroMsg.NotifyReceiver", "fully exited, no need to start service");
        } else
        {
            b = context;
            c = intent;
            if(MMCore.q() != null)
                b();
            else
            if(intent.getIntExtra("notify_respType", 0) == 10)
            {
                Log.c("MicroMsg.NotifyReceiver", "in the background mode, the directsend ignore");
            } else
            {
                MMCore.g().a(true);
                MMCore.a(context.getApplicationContext());
                Log.c("MicroMsg.NotifyReceiver", "ready processing, peeking service");
                android.os.IBinder ibinder = peekService(context, (new Intent()).setAction("com.tencent.mm.booter.CoreService"));
                if(ibinder != null)
                {
                    MMCore.a(new RDispatcher(com.tencent.mm.network.IDispatcher_AIDL.Stub.a(ibinder), new _cls1()));
                    b();
                } else
                {
                    Log.a("MicroMsg.NotifyReceiver", "core service has been shut down, skip current request");
                    Intent intent1 = new Intent();
                    intent1.setClass(context, com/tencent/mm/booter/NotifyReceiver$NotifyService);
                    context.startService(intent1);
                }
            }
        }
    }

    private static MMWakerLock a = null;
    private static Context b;
    private static Intent c;
    private static NofityIOnSceneEnd d;

    static 
    {
        a();
    }

    private class NofityIOnSceneEnd
        implements IOnSceneEnd
    {

        public final void a(int i, int j, String s, NetSceneBase netscenebase)
        {
            netscenebase.b();
            JVM INSTR tableswitch 38 38: default 24
        //                       38 41;
               goto _L1 _L2
_L1:
            if(NotifyReceiver.d() != null)
                NotifyReceiver.d().b();
            NotifyReceiver.e();
            return;
_L2:
            if(i != 4 || MMAppMgr.d()) goto _L4; else goto _L3
_L3:
            j;
            JVM INSTR lookupswitch 9: default 136
        //                       -999999: 917
        //                       -100: 890
        //                       -72: 873
        //                       -17: 939
        //                       -16: 939
        //                       -9: 873
        //                       -6: 873
        //                       -4: 873
        //                       -3: 873;
               goto _L5 _L6 _L7 _L8 _L9 _L9 _L8 _L8 _L8 _L8
_L5:
            if(i == 0 && j == 0)
                MMCore.p().a();
_L4:
            if(MMCore.f().b())
            {
                Log.d("MicroMsg.NotifyReceiver", "begin post sync task");
                boolean flag = ConfigStorageLogic.j();
                boolean flag1 = Util.b((Boolean)MMCore.f().f().a(0x10100));
                boolean flag2;
                boolean flag3;
                boolean flag4;
                if(flag && flag1)
                {
                    class _cls1
                        implements Runnable
                    {

                        public void run()
                        {
                            MMCore.x();
                            MMAppMgr.f();
                        }

                        private NofityIOnSceneEnd a;

                _cls1()
                {
                    a = NofityIOnSceneEnd.this;
                    super();
                }
                    }

                    int k;
                    ArrayList arraylist;
                    ConfigStorage configstorage;
                    int l;
                    int i1;
                    int j1;
                    int k1;
                    MsgInfoStorage msginfostorage;
                    int l1;
                    int i2;
                    int j2;
                    int k2;
                    OpLogStorage oplogstorage;
                    boolean flag6;
                    Long long1;
                    MMNotification mmnotification;
                    byte byte0;
                    if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10102), 0L)) > 0x48190800L)
                        flag6 = true;
                    else
                        flag6 = false;
                    if(flag6)
                    {
                        MsgInfoStorageLogic.a(true, null);
                        MMCore.f().f().a(0x10102, Long.valueOf(Util.c()));
                    }
                }
                SceneGetVUserInfo.a(true);
                PostTaskCollectGoupCard.a();
                if(MMCore.f().b() && !MMCore.w() && (0x10 & ConfigStorageLogic.f()) == 0)
                    flag2 = true;
                else
                    flag2 = false;
                if(flag2)
                {
                    boolean flag5;
                    if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10501), 0L)) > 0x1b7740L)
                        flag5 = true;
                    else
                        flag5 = false;
                    if(flag5)
                    {
                        configstorage = MMCore.f().f();
                        l = Util.a((Integer)configstorage.a(0x10601));
                        i1 = Util.a((Integer)configstorage.a(0x10602));
                        j1 = Util.a((Integer)configstorage.a(0x10603));
                        k1 = Util.a((Integer)configstorage.a(0x10604));
                        msginfostorage = MMCore.f().i();
                        l1 = msginfostorage.g("medianote", 1);
                        i2 = msginfostorage.g("medianote", 3);
                        j2 = msginfostorage.g("medianote", 34);
                        k2 = msginfostorage.g("medianote", 43);
                        oplogstorage = MMCore.f().g();
                        if(l1 - l > 0)
                        {
                            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpMediaNote(l1 - l, 1));
                            configstorage.a(0x10601, Integer.valueOf(l1));
                        }
                        if(i2 - i1 > 0)
                        {
                            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpMediaNote(i2 - i1, 3));
                            configstorage.a(0x10602, Integer.valueOf(i2));
                        }
                        if(j2 - j1 > 0)
                        {
                            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpMediaNote(j2 - j1, 34));
                            configstorage.a(0x10603, Integer.valueOf(j2));
                        }
                        if(k2 - k1 > 0)
                        {
                            oplogstorage.a(new com.tencent.mm.storage.OpLogStorage.OpMediaNote(k2 - k1, 43));
                            configstorage.a(0x10604, Integer.valueOf(k2));
                        }
                        MMCore.f().f().a(0x10501, Long.valueOf(Util.c()));
                    }
                }
                if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10502), 0L)) > 0x1b7740L)
                    flag3 = true;
                else
                    flag3 = false;
                if(flag3)
                {
                    k = Util.a((Integer)MMCore.f().f().a(0x10504), 0xfffe7961);
                    if(k != 0xfffe7961)
                    {
                        arraylist = new ArrayList();
                        arraylist.add(new com.tencent.mm.storage.OpLogStorage.OpKvStat.OpKvStatItem(9, (new StringBuilder()).append(k).append("").toString()));
                        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpKvStat(arraylist));
                        MMCore.f().f().a(0x10504, Integer.valueOf(0xfffe7961));
                    }
                    MMCore.f().f().a(0x10502, Long.valueOf(Util.c()));
                }
                PostTaskFMessageCardStat.a();
                if(1000L * Util.d(Util.a((Long)MMCore.f().f().a(0x10803), 0L)) > 0x1b7740L)
                    flag4 = true;
                else
                    flag4 = false;
                if(flag4)
                    PostTaskLocationOpenStat.a();
                PostTaskUpdateCtRemark.a();
                PostTaskReportEgg.a();
                Log.d("MicroMsg.NotifyReceiver", "end post sync task");
            }
            if(true) goto _L1; else goto _L8
_L8:
            MMCore.p().a(NotifyReceiver.c().getString(0x7f0a012b));
              goto _L4
_L7:
            Log.a("MicroMsg.NotifyReceiver", "showAuthFailNotification");
            MMCore.p().a(NotifyReceiver.c().getString(0x7f0a012c));
            MMCore.x();
              goto _L4
_L6:
            (new Handler()).post(new _cls1());
              goto _L4
_L9:
            long1 = (Long)MMCore.e().a(16);
            if(long1 != null && Util.d(long1.longValue()) < 0x15180L)
            {
                Log.d("MicroMsg.NotifyReceiver", (new StringBuilder()).append("skip update notification, last check=").append(long1).toString());
            } else
            {
                mmnotification = MMCore.p();
                if(j == -17)
                    byte0 = 2;
                else
                    byte0 = 1;
                mmnotification.a(byte0);
                MMCore.e().a(16, Long.valueOf(Util.c()));
            }
              goto _L4
        }

        NofityIOnSceneEnd()
        {
        }
    }


    private class _cls1
        implements com.tencent.mm.modelbase.RDispatcher.IDeadObjectFixer
    {

        public final void a()
        {
            MMCore.b();
            CoreServiceHelper.b(MMCore.c());
        }

        private NotifyReceiver a;

        _cls1()
        {
            a = NotifyReceiver.this;
            super();
        }
    }

}
