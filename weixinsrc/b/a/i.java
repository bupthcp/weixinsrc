// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import com.tencent.mm.platformtools.Log;
import java.util.*;

class i
{

    i()
    {
    }

    public List a(Context context)
    {
        TelephonyManager telephonymanager;
        LinkedList linkedlist;
        String s;
        String s1;
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        linkedlist = new LinkedList();
        s = "460";
        s1 = "";
        String s2 = telephonymanager.getNetworkOperator();
        if(s2 == null || s2.equals("")) goto _L2; else goto _L1
_L1:
        String s8;
        s = s2.substring(0, 3);
        s8 = s2.substring(3, 5);
        String s4 = s8;
_L3:
        Log.a("checked", (new StringBuilder()).append("phone type:").append(telephonymanager.getPhoneType()).append(" network type:").append(telephonymanager.getNetworkType()).toString());
        Exception exception;
        LinkedList linkedlist1;
        String s3;
        String s7;
        if(telephonymanager.getPhoneType() == 2)
        {
            try
            {
                CdmaCellLocation cdmacelllocation = (CdmaCellLocation)telephonymanager.getCellLocation();
                if(cdmacelllocation != null)
                    linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s, s4, "", "", "", "cdma", (new StringBuilder()).append(cdmacelllocation.getBaseStationId()).append("").toString(), (new StringBuilder()).append(cdmacelllocation.getNetworkId()).append("").toString(), (new StringBuilder()).append(cdmacelllocation.getSystemId()).append("").toString()));
            }
            catch(Exception exception2)
            {
                Exception exception1;
                List list;
                Iterator iterator;
                NeighboringCellInfo neighboringcellinfo;
                String s5;
                GsmCellLocation gsmcelllocation;
                int j;
                int k;
                List list1;
                try
                {
                    GsmCellLocation gsmcelllocation1 = (GsmCellLocation)telephonymanager.getCellLocation();
                    if(gsmcelllocation1 != null)
                    {
                        int l = gsmcelllocation1.getCid();
                        int i1 = gsmcelllocation1.getLac();
                        if(i1 < 65535 && i1 != -1 && l != -1)
                            linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s, s4, (new StringBuilder()).append(i1).append("").toString(), (new StringBuilder()).append(l).append("").toString(), "", "gsm", "", "", ""));
                        Log.e("checked", (new StringBuilder()).append("lac:").append(i1).append("  cid:").append(l).toString());
                    }
                }
                catch(Exception exception3) { }
                list1 = telephonymanager.getNeighboringCellInfo();
                if(list1 != null && list1.size() > 0)
                {
                    Iterator iterator1 = list1.iterator();
                    while(iterator1.hasNext()) 
                    {
                        NeighboringCellInfo neighboringcellinfo1 = (NeighboringCellInfo)iterator1.next();
                        if(neighboringcellinfo1.getCid() != -1 && neighboringcellinfo1.getLac() <= 65535 && neighboringcellinfo1.getLac() != -1)
                        {
                            String s6 = (new StringBuilder()).append(-113 + 2 * neighboringcellinfo1.getRssi()).append("").toString();
                            Log.e("checked", (new StringBuilder()).append("lac:").append(neighboringcellinfo1.getLac()).append("  cid:").append(neighboringcellinfo1.getCid()).append(" dbm:").append(s6).toString());
                            linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s, s4, (new StringBuilder()).append(neighboringcellinfo1.getLac()).append("").toString(), (new StringBuilder()).append(neighboringcellinfo1.getCid()).append("").toString(), s6, "gsm", "", "", ""));
                        }
                    }
                }
            }
        } else
        {
            try
            {
                gsmcelllocation = (GsmCellLocation)telephonymanager.getCellLocation();
                if(gsmcelllocation != null)
                {
                    j = gsmcelllocation.getCid();
                    k = gsmcelllocation.getLac();
                    if(k < 65535 && k != -1 && j != -1)
                        linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s, s4, (new StringBuilder()).append(k).append("").toString(), (new StringBuilder()).append(j).append("").toString(), "", "gsm", "", "", ""));
                    Log.e("checked", (new StringBuilder()).append("lac:").append(k).append("  cid:").append(j).toString());
                }
            }
            // Misplaced declaration of an exception variable
            catch(Exception exception1) { }
            list = telephonymanager.getNeighboringCellInfo();
            if(list != null && list.size() > 0)
            {
                iterator = list.iterator();
                while(iterator.hasNext()) 
                {
                    neighboringcellinfo = (NeighboringCellInfo)iterator.next();
                    if(neighboringcellinfo.getCid() != -1 && neighboringcellinfo.getLac() <= 65535 && neighboringcellinfo.getLac() != -1)
                    {
                        s5 = (new StringBuilder()).append(-113 + 2 * neighboringcellinfo.getRssi()).append("").toString();
                        Log.e("checked", (new StringBuilder()).append("lac:").append(neighboringcellinfo.getLac()).append("  cid:").append(neighboringcellinfo.getCid()).append(" dbm:").append(s5).toString());
                        linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s, s4, (new StringBuilder()).append(neighboringcellinfo.getLac()).append("").toString(), (new StringBuilder()).append(neighboringcellinfo.getCid()).append("").toString(), s5, "gsm", "", "", ""));
                    }
                }
            }
        }
        linkedlist1 = linkedlist;
_L4:
        return linkedlist1;
_L2:
        s3 = telephonymanager.getSimOperator();
        if(s3 == null || s3.equals(""))
            break MISSING_BLOCK_LABEL_274;
        s = s3.substring(0, 3);
        s7 = s3.substring(3, 5);
        s1 = s7;
        s4 = s1;
          goto _L3
        exception;
        linkedlist1 = linkedlist;
          goto _L4
    }
}
