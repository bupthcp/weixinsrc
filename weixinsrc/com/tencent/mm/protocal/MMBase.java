// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.protocal;

import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.BaseRequest;
import com.tencent.mm.protocal.protobuf.BaseResponse;
import com.tencent.mm.protocal.protobuf.SKBuiltinString_t;

public class MMBase
{

    public MMBase()
    {
    }

    public static BaseRequest a(Req req)
    {
        BaseRequest baserequest = new BaseRequest();
        baserequest.b(req.u());
        baserequest.b(ByteString.a(req.w().getBytes()).a(16));
        baserequest.c(ByteString.a(req.v().getBytes()).a(132));
        baserequest.c(req.x());
        baserequest.a(ByteString.a(req.s().getBytes()).a(36));
        baserequest.a(req.t());
        return baserequest;
    }

    public static void a(Resp resp, BaseResponse baseresponse)
    {
        resp.q(baseresponse.d().c());
    }

    private class Req
    {

        public int a()
        {
            return 0;
        }

        public boolean a(PByteArray pbytearray)
        {
            return false;
        }

        public void b(long l)
        {
            g = l;
        }

        public void i(int l)
        {
            b = l;
        }

        public void j(int l)
        {
            c = l;
        }

        public void k(int l)
        {
            f = l;
        }

        public void o(String s1)
        {
            if(s1 == null)
                s1 = "";
            a = s1;
        }

        public void p(String s1)
        {
            d = s1;
        }

        public void q(String s1)
        {
            e = s1;
        }

        public String s()
        {
            return a;
        }

        public int t()
        {
            return b;
        }

        public int u()
        {
            return c;
        }

        public String v()
        {
            return d;
        }

        public String w()
        {
            return e;
        }

        public int x()
        {
            return f;
        }

        public boolean y()
        {
            return true;
        }

        public long z()
        {
            return g;
        }

        private String a;
        private int b;
        private int c;
        private String d;
        private String e;
        private int f;
        private long g;

        public Req()
        {
            g = 0L;
            b = 0;
            c = 0;
            a = "";
            d = "";
            e = "";
            f = 0;
        }
    }


    private class Resp
    {

        public String H()
        {
            return b;
        }

        public long I()
        {
            return c;
        }

        public void a_(int i)
        {
            a = i;
        }

        public void b(long l)
        {
            c = l;
        }

        public int b_()
        {
            return a;
        }

        public int c_()
        {
            return 0;
        }

        public void q(String s)
        {
            b = s;
        }

        private int a;
        private String b;
        private long c;

        public Resp()
        {
            c = 0L;
            a = -99;
            b = "";
        }
    }

}
