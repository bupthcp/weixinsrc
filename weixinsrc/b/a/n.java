// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.content.Context;
import android.telephony.NeighboringCellInfo;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.*;

class n
{

    n()
    {
    }

    public List a(Context context)
    {
        LinkedList linkedlist;
        TelephonyManager telephonymanager;
        String s;
        linkedlist = new LinkedList();
        telephonymanager = (TelephonyManager)context.getSystemService("phone");
        s = telephonymanager.getNetworkOperator();
        if(s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        LinkedList linkedlist1 = linkedlist;
_L5:
        return linkedlist1;
_L2:
        String s1;
        String s2;
        s1 = "460";
        s2 = "";
        String s4;
        s1 = s.substring(0, 3);
        s4 = s.substring(3);
        String s3;
        s2 = s4;
        s3 = s1;
_L3:
        Exception exception;
        List list;
        try
        {
            GsmCellLocation gsmcelllocation = (GsmCellLocation)telephonymanager.getCellLocation();
            if(gsmcelllocation != null)
            {
                int i = gsmcelllocation.getCid();
                int j = gsmcelllocation.getLac();
                if(j < 65535 && j != -1 && i != -1)
                    linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s3, s2, (new StringBuilder()).append(j).append("").toString(), (new StringBuilder()).append(i).append("").toString(), "", "gsm", "", "", ""));
            }
        }
        catch(Exception exception1) { }
        list = telephonymanager.getNeighboringCellInfo();
        if(list != null && list.size() > 0)
        {
            Iterator iterator = list.iterator();
            do
            {
                if(!iterator.hasNext())
                    break;
                NeighboringCellInfo neighboringcellinfo = (NeighboringCellInfo)iterator.next();
                if(neighboringcellinfo.getCid() != -1)
                    linkedlist.add(new com.tencent.mm.modelsimple.NetSceneLbsFind.CellInfo(s3, s2, "", (new StringBuilder()).append(neighboringcellinfo.getCid()).append("").toString(), "", "gsm", "", "", ""));
            } while(true);
        }
        break MISSING_BLOCK_LABEL_322;
        exception;
        s3 = s1;
          goto _L3
        linkedlist1 = linkedlist;
        if(true) goto _L5; else goto _L4
_L4:
    }
}
