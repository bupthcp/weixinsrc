// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import QQPIM.SUIKey;
import android.content.Context;
import com.a.b.a.e;
import com.tencent.qqpim.dao.ConfigDao;
import com.tencent.qqpim.dao.ConfigManager;
import com.tencent.qqpim.interfaces.IConfigDao;
import java.util.ArrayList;

// Referenced classes of package com.tencent.qqpim.utils:
//            XxteaCryptor, HttpHelper, QQPimUtils

public class OperatingDataUtil
{

    public OperatingDataUtil(Context context)
    {
        mContext = context;
    }

    private boolean sendOperatingData(SUIKey suikey, ArrayList arraylist)
    {
        boolean flag = false;
        e e1 = new e();
        e1.b();
        e1.c("report");
        e1.d("reportSoftUsageInfo");
        e1.a("suikey", suikey);
        e1.a("vecsui", arraylist);
        e1.a("UTF-8");
        byte abyte0[] = XxteaCryptor.encrypt(e1.a(), "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
        HttpHelper httphelper = new HttpHelper();
        if(httphelper.postOperatingData("http://pmir.3g.qq.com", abyte0) != 0)
            break MISSING_BLOCK_LABEL_99;
        httphelper.recv();
        flag = true;
_L2:
        return flag;
        Exception exception;
        exception;
        QQPimUtils.writeToLog("sendOperatingData", (new StringBuilder("Exception: ")).append(exception.getMessage()).toString());
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void sendChannelData()
    {
        configManager = new ConfigManager(mContext);
        if(!ConfigDao.getInstance(mContext).getBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.HAD_REPORT_CHANNEL) || !configManager.getChannel().equals(ConfigDao.getInstance(mContext).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.CHANNEL)))
            (new SendChannelInfoThread(null)).start();
    }

    public boolean sendOperatingData(ArrayList arraylist)
    {
        SUIKey suikey = new SUIKey();
        suikey.setImei(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI));
        suikey.setImsi(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMSI));
        suikey.setLc(ConfigDao.getInstance(mContext).getLC());
        suikey.setVersion(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.VERSION));
        suikey.setName("QQPIM");
        return sendOperatingData(suikey, arraylist);
    }

    public static final String XXTEA_KEY = "DFG#$%^#%$RGHR(&*M<><";
    ConfigManager configManager;
    private Context mContext;


    private class SendChannelInfoThread extends Thread
    {

        public void run()
        {
            try
            {
                e e1 = new e();
                e1.b();
                e1.c("info");
                e1.d("reportChannelInfo");
                e1.a("phonetype", new PhoneType(2));
                UserInfo userinfo = new UserInfo();
                userinfo.setImei(ConfigDao.getInstance(null).getStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.IMEI));
                userinfo.setLc(ConfigDao.getInstance(mContext).getLC());
                e1.a("userinfo", userinfo);
                e1.a("channelinfo", new ChannelInfo(configManager.getChannel(), 3));
                e1.a("UTF-8");
                byte abyte0[] = XxteaCryptor.encrypt(e1.a(), "DFG#$%^#%$RGHR(&*M<><".getBytes("UTF-8"));
                HttpHelper httphelper = new HttpHelper();
                int i = httphelper.postOperatingData("http://pmir.3g.qq.com", abyte0);
                System.out.println((new StringBuilder("postOperatingData==")).append(i).toString());
                if(i == 0)
                {
                    httphelper.recv();
                    ConfigDao.getInstance(mContext).setBooleanValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.HAD_REPORT_CHANNEL, true);
                    ConfigDao.getInstance(mContext).setStringValue(com.tencent.qqpim.interfaces.IConfigDao.ConfigValueTag.CHANNEL, configManager.getChannel());
                }
            }
            catch(Exception exception) { }
            super.run();
        }

        final OperatingDataUtil this$0;

        private SendChannelInfoThread()
        {
            this$0 = OperatingDataUtil.this;
            super();
        }

        SendChannelInfoThread(SendChannelInfoThread sendchannelinfothread)
        {
            this();
        }
    }

}
