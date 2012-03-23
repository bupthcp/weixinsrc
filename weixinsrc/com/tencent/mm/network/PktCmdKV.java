// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.network;

import com.tencent.mm.protocal.IMMBaseReq_AIDL;
import java.util.HashMap;
import java.util.Map;

class PktCmdKV
{

    private PktCmdKV(int i, boolean flag, boolean flag1)
    {
        a = i;
        b = flag;
        c = flag1;
    }

    public static PktCmdKV a(int i, boolean flag, IMMBaseReq_AIDL immbasereq_aidl)
    {
        PktCmdKV pktcmdkv = (PktCmdKV)d.get(Integer.valueOf(i));
        if(pktcmdkv == null && immbasereq_aidl.l() != 0)
        {
            int j = immbasereq_aidl.l();
            boolean flag1;
            if(!immbasereq_aidl.m())
                flag1 = true;
            else
                flag1 = false;
            pktcmdkv = new PktCmdKV(j, flag1, false);
        }
        if(pktcmdkv == null)
            pktcmdkv = new PktCmdKV(0, false, flag);
        else
            pktcmdkv.c = flag;
        return pktcmdkv;
    }

    private static Map d;
    public int a;
    public boolean b;
    public boolean c;

    static 
    {
        HashMap hashmap = new HashMap();
        d = hashmap;
        hashmap.put(Integer.valueOf(1), new PktCmdKV(1, false, false));
        d.put(Integer.valueOf(38), new PktCmdKV(26, false, false));
        d.put(Integer.valueOf(4), new PktCmdKV(2, false, false));
        d.put(Integer.valueOf(10), new PktCmdKV(8, true, false));
        d.put(Integer.valueOf(9), new PktCmdKV(9, false, false));
        d.put(Integer.valueOf(8), new PktCmdKV(10, false, false));
        d.put(Integer.valueOf(39), new PktCmdKV(25, true, false));
        d.put(Integer.valueOf(37), new PktCmdKV(27, false, false));
        d.put(Integer.valueOf(12), new PktCmdKV(16, false, false));
        d.put(Integer.valueOf(13), new PktCmdKV(23, false, false));
        d.put(Integer.valueOf(21), new PktCmdKV(19, false, false));
        d.put(Integer.valueOf(22), new PktCmdKV(20, false, false));
        d.put(Integer.valueOf(42), new PktCmdKV(28, false, false));
        d.put(Integer.valueOf(2), new PktCmdKV(31, false, false));
        d.put(Integer.valueOf(23), new PktCmdKV(32, false, false));
        d.put(Integer.valueOf(25), new PktCmdKV(33, false, false));
        d.put(Integer.valueOf(5), new PktCmdKV(34, false, false));
        d.put(Integer.valueOf(11), new PktCmdKV(35, false, false));
        d.put(Integer.valueOf(17), new PktCmdKV(36, false, false));
        d.put(Integer.valueOf(16), new PktCmdKV(37, false, false));
        d.put(Integer.valueOf(31), new PktCmdKV(38, false, false));
        d.put(Integer.valueOf(41), new PktCmdKV(39, false, false));
        d.put(Integer.valueOf(40), new PktCmdKV(40, false, false));
        d.put(Integer.valueOf(14), new PktCmdKV(41, false, false));
        d.put(Integer.valueOf(26), new PktCmdKV(42, false, false));
        d.put(Integer.valueOf(7), new PktCmdKV(43, false, false));
        d.put(Integer.valueOf(30), new PktCmdKV(44, false, false));
        d.put(Integer.valueOf(27), new PktCmdKV(45, false, false));
        d.put(Integer.valueOf(45), new PktCmdKV(46, false, false));
        d.put(Integer.valueOf(46), new PktCmdKV(47, false, false));
        d.put(Integer.valueOf(6), new PktCmdKV(48, false, false));
        d.put(Integer.valueOf(47), new PktCmdKV(49, false, false));
        d.put(Integer.valueOf(44), new PktCmdKV(50, false, false));
        d.put(Integer.valueOf(55), new PktCmdKV(51, false, false));
        d.put(Integer.valueOf(54), new PktCmdKV(52, false, false));
        d.put(Integer.valueOf(50), new PktCmdKV(53, false, false));
        d.put(Integer.valueOf(49), new PktCmdKV(54, false, false));
        d.put(Integer.valueOf(48), new PktCmdKV(55, false, false));
        d.put(Integer.valueOf(51), new PktCmdKV(56, false, false));
        d.put(Integer.valueOf(52), new PktCmdKV(57, false, false));
        d.put(Integer.valueOf(58), new PktCmdKV(59, false, false));
        d.put(Integer.valueOf(57), new PktCmdKV(60, false, false));
        d.put(Integer.valueOf(66), new PktCmdKV(71, false, false));
        d.put(Integer.valueOf(70), new PktCmdKV(63, false, false));
        d.put(Integer.valueOf(71), new PktCmdKV(64, false, false));
        d.put(Integer.valueOf(72), new PktCmdKV(65, false, false));
        d.put(Integer.valueOf(73), new PktCmdKV(66, false, false));
        d.put(Integer.valueOf(74), new PktCmdKV(62, false, false));
        d.put(Integer.valueOf(75), new PktCmdKV(81, false, false));
        d.put(Integer.valueOf(85), new PktCmdKV(84, false, false));
    }
}
