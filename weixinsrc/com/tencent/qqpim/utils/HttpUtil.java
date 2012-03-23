// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.text.TextUtils;
import com.tencent.qqpim.exception.NetWorkException;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.zip.InflaterInputStream;

// Referenced classes of package com.tencent.qqpim.utils:
//            QQPimUtils

public class HttpUtil
{

    public HttpUtil()
    {
        READ_WRITE_SIZE = 1024;
        mUrl = null;
        httpURLConnection = null;
        detailMessage = "\u7F51\u7EDC\u8FDE\u63A5\u9519\u8BEF";
        mDeflate = false;
        mContext = QQPimUtils.APPLICATION_CONTEXT;
    }

    public HttpUtil(String s)
    {
        this();
        setUrl(s);
    }

    private void setDeflateHeaderInfo()
    {
        httpURLConnection.setRequestProperty("User-Agent", "Nokia SyncML HTTP Client");
        httpURLConnection.setRequestProperty("Accept-Encoding", "deflate");
        httpURLConnection.setRequestProperty("Accept-Charset", "utf-8");
        httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
        httpURLConnection.setRequestProperty("Connection", "close");
    }

    private void setMicroMsgAttDownloadHeaderInfo()
    {
        httpURLConnection.setRequestProperty("User-Agent", "MicroMsg Android Client");
        httpURLConnection.setRequestProperty("Accept-Encoding", "qzip");
        httpURLConnection.setRequestProperty("Connection", "close");
    }

    private void setMicroMsgAttUploadHeaderInfo()
    {
        httpURLConnection.setRequestProperty("User-Agent", "MicroMsg Android Client");
        httpURLConnection.setRequestProperty("Connection", "keep-alive");
    }

    private void setNormalHeaderInfo()
    {
        httpURLConnection.setRequestProperty("User-Agent", "Nokia SyncML HTTP Client");
        httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
        httpURLConnection.setRequestProperty("Connection", "close");
    }

    private void setXmlHeaderInfo()
    {
        httpURLConnection.setRequestProperty("User-Agent", "Nokia SyncML HTTP Client");
        httpURLConnection.setRequestProperty("Accept-Charset", "utf-8");
        httpURLConnection.setRequestProperty("Content-Type", "application/vnd.syncml+wbxml");
        httpURLConnection.setRequestProperty("Connection", "close");
    }

    public void close()
    {
        if(httpURLConnection != null)
        {
            httpURLConnection.disconnect();
            httpURLConnection = null;
        }
    }

    public void get()
    {
        try
        {
            httpURLConnection.setRequestMethod("GET");
            return;
        }
        catch(Exception exception)
        {
            exception.toString();
        }
        throw new NetWorkException("\u7F51\u7EDC\u8FDE\u63A5\u51FA\u9519!");
    }

    public NetWorkType getCurrentNetWorkType()
    {
        NetworkInfo networkinfo = ((ConnectivityManager)mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        NetWorkType networktype;
        if(networkinfo == null || networkinfo.getState() != android.net.NetworkInfo.State.CONNECTING && networkinfo.getState() != android.net.NetworkInfo.State.CONNECTED)
            networktype = NetWorkType.UNAVAILABLE;
        else
        if(networkinfo.getType() == 1)
            networktype = NetWorkType.WIFI;
        else
        if(networkinfo.getType() == 0)
        {
            if(Proxy.getDefaultHost() != null || Proxy.getHost(mContext) != null)
            {
                mProxy = Proxy.getDefaultHost();
                mPort = Proxy.getPort(mContext);
                networktype = NetWorkType.WAP;
            } else
            {
                networktype = NetWorkType.NET;
            }
        } else
        {
            networktype = NetWorkType.UNKNOW;
        }
        return networktype;
    }

    public InputStream getInputStreamResponse()
    {
        Object obj;
label0:
        {
            (new StringBuilder("encoding:")).append(httpURLConnection.getHeaderField("Transfer-Encoding")).toString();
            InputStream inputstream;
            try
            {
                String s = httpURLConnection.getHeaderField("Transfer-Encoding");
                if(s != null && "deflate".equalsIgnoreCase(s))
                {
                    obj = new InflaterInputStream(httpURLConnection.getInputStream());
                    break label0;
                }
                inputstream = httpURLConnection.getInputStream();
            }
            catch(IOException ioexception)
            {
                (new StringBuilder("getResponse error:")).append(ioexception.getMessage()).toString();
                throw new NetWorkException(detailMessage);
            }
            obj = inputstream;
        }
        return ((InputStream) (obj));
    }

    public byte[] getResponse()
    {
        return getResponse(null);
    }

    public byte[] getResponse(IHttpProgress ihttpprogress)
    {
        int i;
        int j;
        i = 0;
        (new StringBuilder("encoding:")).append(httpURLConnection.getHeaderField("Transfer-Encoding")).toString();
        j = httpURLConnection.getContentLength();
        DataOutputStream dataoutputstream;
        byte abyte0[];
        int k;
        String s = httpURLConnection.getHeaderField("Transfer-Encoding");
        Object obj;
        ByteArrayOutputStream bytearrayoutputstream;
        byte abyte1[];
        if(mDeflate || s != null && "deflate".equalsIgnoreCase(s))
            obj = new InflaterInputStream(httpURLConnection.getInputStream());
        else
            obj = httpURLConnection.getInputStream();
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        abyte0 = new byte[1024];
        if(ihttpprogress != null)
            ihttpprogress.onProgress(false, 0, j);
_L1:
        k = ((InputStream) (obj)).read(abyte0, 0, 1024);
        if(k == -1)
        {
            abyte1 = bytearrayoutputstream.toByteArray();
            bytearrayoutputstream.close();
            ((InputStream) (obj)).close();
            return abyte1;
        }
        if(ihttpprogress != null)
            ihttpprogress.onProgress(false, i, j);
        dataoutputstream.write(abyte0, 0, k);
        i += k;
          goto _L1
        Throwable throwable;
        throwable;
        throwable.toString();
        throw new NetWorkException(detailMessage);
    }

    public int getResposeCode()
    {
        int j = httpURLConnection.getResponseCode();
        int i = j;
_L2:
        return i;
        Throwable throwable;
        throwable;
        throwable.toString();
        i = 400;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public void openConnection(int i)
    {
        URL url;
        NetWorkType networktype;
        try
        {
            url = new URL(mUrl);
            networktype = getCurrentNetWorkType();
            if(networktype.equals(NetWorkType.UNAVAILABLE))
                throw new NetWorkException(detailMessage);
        }
        catch(IOException ioexception)
        {
            ioexception.toString();
            throw new NetWorkException(detailMessage);
        }
        if(!networktype.equals(NetWorkType.WAP) || TextUtils.isEmpty(mProxy) || mPort <= 0) goto _L2; else goto _L1
_L1:
        httpURLConnection = (HttpURLConnection)url.openConnection(new java.net.Proxy(java.net.Proxy.Type.HTTP, new InetSocketAddress(mProxy, mPort)));
_L8:
        httpURLConnection.setReadTimeout(15000);
        httpURLConnection.setConnectTimeout(15000);
        mDeflate = false;
        i;
        JVM INSTR tableswitch 1 4: default 180
    //                   1 199
    //                   2 211
    //                   3 218
    //                   4 225;
           goto _L3 _L4 _L5 _L6 _L7
_L7:
        break MISSING_BLOCK_LABEL_225;
_L3:
        setNormalHeaderInfo();
_L9:
        return;
_L2:
        httpURLConnection = (HttpURLConnection)url.openConnection();
          goto _L8
_L4:
        mDeflate = true;
        setDeflateHeaderInfo();
          goto _L9
_L5:
        setXmlHeaderInfo();
          goto _L9
_L6:
        setMicroMsgAttUploadHeaderInfo();
          goto _L9
        setMicroMsgAttDownloadHeaderInfo();
          goto _L9
    }

    public void post(byte abyte0[])
    {
        post(abyte0, null);
    }

    public void post(byte abyte0[], IHttpProgress ihttpprogress)
    {
        int i = 1024;
        int j = 0;
        try
        {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setFixedLengthStreamingMode(abyte0.length);
            httpURLConnection.setUseCaches(false);
            OutputStream outputstream = httpURLConnection.getOutputStream();
            if(ihttpprogress != null)
                ihttpprogress.onProgress(false, 0, 1024);
            do
            {
                do
                {
                    if(j >= abyte0.length)
                    {
                        outputstream.close();
                        return;
                    }
                    if(j + i > abyte0.length)
                        i = abyte0.length - j;
                    outputstream.write(abyte0, j, i);
                    outputstream.flush();
                    j += i;
                } while(ihttpprogress == null);
                ihttpprogress.onProgress(false, j, abyte0.length);
            } while(true);
        }
        catch(Exception exception)
        {
            exception.toString();
        }
        throw new NetWorkException(detailMessage);
    }

    public void setRequestParams(Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        String s = "";
        do
        {
            if(!iterator.hasNext())
            {
                if(!"".equals(s) && mUrl != null && mUrl.indexOf("?") < 0)
                {
                    String s2 = s.replaceFirst("&", "?");
                    mUrl = (new StringBuilder(String.valueOf(mUrl))).append(s2).toString();
                }
                (new StringBuilder("url=")).append(mUrl).toString();
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            String s1 = (String)entry.getKey();
            Object obj = entry.getValue();
            s = (new StringBuilder(String.valueOf(s))).append("&").append(s1).append("=").append(URLEncoder.encode(obj.toString())).toString();
        } while(true);
    }

    public void setUrl(String s)
    {
        mUrl = s;
    }

    protected static final int CONNECT_TIMEOUT = 15000;
    public static final int HEADER_DEFLATE = 1;
    public static final int HEADER_MICROMSG_DOWNLOAD = 4;
    public static final int HEADER_MICROMSG_UPLOAD = 3;
    public static final int HEADER_NORMAL = 0;
    public static final int HEADER_XML = 2;
    private static final String LOGTAG = "HttpUtilTAG";
    protected static final int READ_TIMEOUT = 15000;
    public static final String TAG = "HttpUtil";
    private final int READ_WRITE_SIZE;
    private String detailMessage;
    HttpURLConnection httpURLConnection;
    private Context mContext;
    private boolean mDeflate;
    private int mPort;
    private String mProxy;
    private String mUrl;

    private class NetWorkType extends Enum
    {

        public static NetWorkType valueOf(String s)
        {
            return (NetWorkType)Enum.valueOf(com/tencent/qqpim/utils/HttpUtil$NetWorkType, s);
        }

        public static NetWorkType[] values()
        {
            NetWorkType anetworktype[] = ENUM$VALUES;
            int i = anetworktype.length;
            NetWorkType anetworktype1[] = new NetWorkType[i];
            System.arraycopy(anetworktype, 0, anetworktype1, 0, i);
            return anetworktype1;
        }

        private static final NetWorkType ENUM$VALUES[];
        public static final NetWorkType NET;
        public static final NetWorkType UNAVAILABLE;
        public static final NetWorkType UNKNOW;
        public static final NetWorkType WAP;
        public static final NetWorkType WIFI;

        static 
        {
            WIFI = new NetWorkType("WIFI", 0);
            WAP = new NetWorkType("WAP", 1);
            NET = new NetWorkType("NET", 2);
            UNKNOW = new NetWorkType("UNKNOW", 3);
            UNAVAILABLE = new NetWorkType("UNAVAILABLE", 4);
            NetWorkType anetworktype[] = new NetWorkType[5];
            anetworktype[0] = WIFI;
            anetworktype[1] = WAP;
            anetworktype[2] = NET;
            anetworktype[3] = UNKNOW;
            anetworktype[4] = UNAVAILABLE;
            ENUM$VALUES = anetworktype;
        }

        private NetWorkType(String s, int i)
        {
            super(s, i);
        }
    }


    private class IHttpProgress
    {

        public abstract void onProgress(boolean flag, int i, int j);
    }

}
