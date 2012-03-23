// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.setting;

import android.app.ProgressDialog;
import android.content.Context;
import android.widget.Toast;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.NetSceneUploadHDHeadImg;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.ui.MMAlert;
import junit.framework.Assert;

public class ProcessUploadHDHeadImg
    implements IOnSceneEnd
{

    public ProcessUploadHDHeadImg(Context context, String s)
    {
        a = context;
        b = s;
        c = null;
        MMCore.g().a(45, this);
    }

    public final void a(int i, int j, String s, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.ProcessUploadHDHeadImg", (new StringBuilder()).append("onSceneEnd: errType = ").append(i).append(" errCode = ").append(j).append(" errMsg = ").append(s).toString());
        MMCore.g().b(45, this);
        if(c != null)
            c.dismiss();
        if(i != 0 || j != 0) goto _L2; else goto _L1
_L1:
        Toast.makeText(a, 0x7f0a01fd, 0).show();
_L5:
        return;
_L2:
        i;
        JVM INSTR tableswitch 4 4: default 108
    //                   4 132;
           goto _L3 _L4
_L3:
        boolean flag = false;
_L7:
        if(!flag)
            Toast.makeText(a, 0x7f0a01fe, 0).show();
          goto _L5
_L4:
        if(j != -4) goto _L3; else goto _L6
_L6:
        Toast.makeText(a, 0x7f0a0288, 0).show();
        flag = true;
          goto _L7
    }

    public final boolean a(int i)
    {
        boolean flag;
        NetSceneUploadHDHeadImg netsceneuploadhdheadimg;
        if(a != null && b != null && b.length() > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        c = MMAlert.a(a, a.getString(0x7f0a0010), a.getString(0x7f0a01fc), true, null);
        netsceneuploadhdheadimg = new NetSceneUploadHDHeadImg(i, b);
        MMCore.g().b(netsceneuploadhdheadimg);
        return true;
    }

    private Context a;
    private String b;
    private ProgressDialog c;
}
