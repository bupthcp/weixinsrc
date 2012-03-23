// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.login;

import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.NetSceneQueue;
import com.tencent.mm.modelsimple.NetSceneAuth;
import com.tencent.mm.ui.SecurityImage;

class LoginQQModel extends com.tencent.mm.ui.SecurityImage.ISecurityModel
{

    LoginQQModel()
    {
        a = null;
        b = null;
        c = null;
        d = null;
    }

    public final void a()
    {
        NetSceneAuth netsceneauth = new NetSceneAuth(a, b, e.b(), e.a());
        MMCore.g().b(netsceneauth);
    }

    protected final void b()
    {
    }

    protected String a;
    protected String b;
    protected String c;
    protected byte d[];
}
