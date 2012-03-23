// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.model;

import android.content.Context;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.interfaces.IConfigDao;
import com.tencent.qqpim.utils.HttpHelper;
import com.tencent.qqpim.utils.LcUtil;
import java.util.Date;

public class LcModel
{

    public LcModel(Context context1)
    {
        checkUpdateResult = 1;
        context = context1;
    }

    public static void clearLCInformation()
    {
        isLcChecked = false;
    }

    public int checkLC(String s)
    {
        int i;
        LcUtil lcutil;
        HttpHelper httphelper;
        i = 0;
        lcutil = new LcUtil();
        httphelper = new HttpHelper();
        if(httphelper.postLcCheck("http://conf.3g.qq.com/newConf/n", lcutil.makeCheckUpdateRequestPackge(ConfigDao.getInstance(context).getLC().getBytes(), Long.parseLong(s), i)) == 0) goto _L2; else goto _L1
_L1:
        return i;
_L2:
        byte abyte0[] = httphelper.recv();
        if(abyte0 != null)
        {
            checkUpdateResult = lcutil.sloveCheckUpdateResponPackge(ConfigDao.getInstance(context).getLC().getBytes(), abyte0);
            if(checkUpdateResult != 1)
            {
                updatedesText = lcutil.getUpdateDesText();
                updateUrl = lcutil.getUpdateUrl();
            }
            i = checkUpdateResult;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public String getUpdateUrl()
    {
        return updateUrl;
    }

    public String getUpdatedesText()
    {
        return updatedesText;
    }

    public boolean isNeedToShowUpdateDialog()
    {
        boolean flag = true;
        if(checkUpdateResult != 2) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        if(checkUpdateResult == 3)
        {
            Date date = new Date();
            Long long1 = Long.valueOf(ConfigDao.getInstance(context).getLongValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.LAST_LC_CHECK_TIME_STAMP));
            if(long1 != null)
            {
                Date date1 = new Date(long1.longValue());
                if((date.getTime() - date1.getTime()) / 0x5265c00L < 15L)
                    flag = false;
            }
        } else
        {
            flag = false;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void setUpdateUrl(String s)
    {
        updateUrl = s;
    }

    public void setUpdatedesText(String s)
    {
        updatedesText = s;
    }

    public void userChooseCancelUpdate()
    {
        if(checkUpdateResult == 3)
            ConfigDao.getInstance(context).setLongValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.LAST_LC_CHECK_TIME_STAMP, System.currentTimeMillis());
    }

    public void userChooseUpdate()
    {
    }

    public static boolean isLcChecked = false;
    private int checkUpdateResult;
    Context context;
    private String updateUrl;
    private String updatedesText;

}
