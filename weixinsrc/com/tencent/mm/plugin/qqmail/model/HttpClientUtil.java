// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.model;

import com.tencent.mm.platformtools.Log;
import java.io.File;
import java.security.InvalidParameterException;
import java.util.*;
import org.apache.http.*;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.tencent.mm.plugin.qqmail.model:
//            HttpUtil

public class HttpClientUtil extends HttpUtil
{

    public HttpClientUtil()
    {
        e = new DefaultHttpClient();
    }

    private static String a(HttpUtil.Request request)
    {
        StringBuilder stringbuilder = new StringBuilder();
        for(Iterator iterator = request.b.keySet().iterator(); iterator.hasNext(); stringbuilder.append("\r\n"))
        {
            String s1 = (String)iterator.next();
            stringbuilder.append((new StringBuilder()).append("------").append(d).append("\r\n").toString());
            stringbuilder.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(s1).append("\"").append("\r\n").toString());
            stringbuilder.append("\r\n");
            stringbuilder.append((String)request.b.get(s1));
        }

        File file = new File(request.d.b);
        if(!file.isFile())
        {
            throw new InvalidParameterException("The path to upload isnot a file.");
        } else
        {
            String s = file.getName();
            stringbuilder.append((new StringBuilder()).append("------").append(d).append("\r\n").toString());
            stringbuilder.append((new StringBuilder()).append("Content-Disposition: form-data; name=\"").append(request.d.a).append("\"").append("; filename=\"").append(s).append("\"").append("\r\n").toString());
            stringbuilder.append("\r\n");
            return stringbuilder.toString();
        }
    }

    static String b()
    {
        return d;
    }

    public final HttpUtil.Response a(String s, String s1, HttpUtil.Request request)
    {
        Log.d("MicroMsg.HttpClientUtil", (new StringBuilder()).append("uri=").append(s1).append(", ").append(request).toString());
        HttpResponse httpresponse;
        int j;
        String s2 = a(request);
        String s3 = request.d.b;
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("\r\n");
        stringbuilder.append((new StringBuilder()).append("------").append(d).append("--").append("\r\n").toString());
        FileUploadEntity fileuploadentity = new FileUploadEntity(s2, s3, stringbuilder.toString());
        f = new HttpPost(a(s, s1, request.b));
        f.setHeader("User-Agent", b);
        f.setHeader("Host", a);
        f.setHeader("Connection", "Keep-Alive");
        f.setHeader("Accept-Charset", "utf-8");
        f.setHeader("Cookie", a(request.c));
        f.setEntity(fileuploadentity);
        httpresponse = e.execute(f);
        j = httpresponse.getStatusLine().getStatusCode();
        int i = j;
        HttpUtil.Response response;
        HttpEntity httpentity = httpresponse.getEntity();
        String s4 = httpresponse.getFirstHeader("set-cookie").getValue();
        String s5 = EntityUtils.toString(httpentity);
        response = new HttpUtil.Response(i, c(s4), s5);
        Log.d("MicroMsg.HttpClientUtil", (new StringBuilder()).append("uri=").append(s1).append(", ").append(response).toString());
        e.getConnectionManager().shutdown();
_L1:
        return response;
        Exception exception1;
        exception1;
        i = 0;
_L2:
        if(i == 0)
            i = 503;
        response = new HttpUtil.Response(i, null, null);
        e.getConnectionManager().shutdown();
          goto _L1
        Exception exception;
        exception;
        e.getConnectionManager().shutdown();
        throw exception;
        Exception exception2;
        exception2;
          goto _L2
    }

    public final void a()
    {
        Log.d("MicroMsg.HttpClientUtil", "cancel conection.");
        if(f != null && !f.isAborted())
            f.abort();
    }

    private static final String d = (new StringBuilder()).append("WEIXIN").append(System.currentTimeMillis()).toString();
    private HttpClient e;
    private HttpPost f;


    private class FileUploadEntity
        implements HttpEntity
    {

        public void consumeContent()
        {
            if(isStreaming())
                throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
            else
                return;
        }

        public InputStream getContent()
        {
            throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
        }

        public Header getContentEncoding()
        {
            return null;
        }

        public long getContentLength()
        {
            return (long)d;
        }

        public Header getContentType()
        {
            return new BasicHeader("Content-Type", (new StringBuilder()).append("multipart/form-data; boundary=----").append(HttpClientUtil.b()).toString());
        }

        public boolean isChunked()
        {
            boolean flag;
            if(!isRepeatable())
                flag = true;
            else
                flag = false;
            return flag;
        }

        public boolean isRepeatable()
        {
            return true;
        }

        public boolean isStreaming()
        {
            boolean flag;
            if(!isRepeatable())
                flag = true;
            else
                flag = false;
            return flag;
        }

        public void writeTo(OutputStream outputstream)
        {
            DataOutputStream dataoutputstream;
            dataoutputstream = new DataOutputStream(outputstream);
            dataoutputstream.writeBytes(a);
            FileInputStream fileinputstream;
            byte abyte0[];
            abyte0 = new byte[1024];
            fileinputstream = new FileInputStream(b);
            do
            {
                int i = fileinputstream.read(abyte0);
                if(i <= 0)
                    break;
                dataoutputstream.write(abyte0, 0, i);
            } while(true);
              goto _L1
            Exception exception;
            exception;
_L3:
            if(fileinputstream != null)
                fileinputstream.close();
            throw exception;
_L1:
            dataoutputstream.flush();
            fileinputstream.close();
            dataoutputstream.writeBytes(c);
            return;
            exception;
            fileinputstream = null;
            if(true) goto _L3; else goto _L2
_L2:
        }

        private String a;
        private File b;
        private String c;
        private int d;
        private HttpClientUtil e;

        public FileUploadEntity(String s, String s1, String s2)
        {
            e = HttpClientUtil.this;
            super();
            a = s;
            b = new File(s1);
            c = s2;
            d = s.length() + (int)b.length() + s2.length();
        }
    }

}
