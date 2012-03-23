// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;

public class CommonLoginUtil
{

    private CommonLoginUtil(Context context)
    {
        mContext = context;
    }

    public static CommonLoginUtil getInstance(Context context)
    {
        if(mContext != null && mInstance != null) goto _L2; else goto _L1
_L1:
        com/tencent/qqpim/utils/CommonLoginUtil;
        JVM INSTR monitorenter ;
        if(mContext == null || mInstance == null)
            mInstance = new CommonLoginUtil(context);
        com/tencent/qqpim/utils/CommonLoginUtil;
        JVM INSTR monitorexit ;
_L2:
        return mInstance;
        Exception exception;
        exception;
        com/tencent/qqpim/utils/CommonLoginUtil;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void postStaticData()
    {
        (new PostOperStatisticData(null)).start();
    }

    private static Context mContext = null;
    private static CommonLoginUtil mInstance = null;



    private class PostOperStatisticData extends Thread
    {

        public void run()
        {
            IConfigDao iconfigdao;
            String s;
            iconfigdao = ConfigDao.getInstance(null);
            s = iconfigdao.getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_STATISTIC);
            if(s == null || s.length() <= 0) goto _L2; else goto _L1
_L1:
            ArrayList arraylist;
            String as[];
            int i;
            int j;
            arraylist = new ArrayList();
            as = s.split(";");
            i = as.length;
            j = 0;
_L6:
            if(j < i) goto _L4; else goto _L3
_L3:
            if((new OperatingDataUtil(CommonLoginUtil.mContext)).sendOperatingData(arraylist))
                iconfigdao.setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.ACTION_STATISTIC, "");
_L2:
            return;
_L4:
            String as1[] = as[j].split(" ");
            if(as1 != null && as1.length == 2)
            {
                SUI sui = new SUI();
                sui.setId(Integer.valueOf(as1[0]).intValue());
                sui.setTime((int)(Long.valueOf(as1[1]).longValue() / 1000L));
                arraylist.add(sui);
            }
            j++;
            if(true) goto _L6; else goto _L5
_L5:
        }

        final CommonLoginUtil this$0;

        private PostOperStatisticData()
        {
            this$0 = CommonLoginUtil.this;
            super();
        }

        PostOperStatisticData(PostOperStatisticData postoperstatisticdata)
        {
            this();
        }
    }

}
