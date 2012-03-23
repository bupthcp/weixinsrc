// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.bottle;

import android.app.AlertDialog;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.tencent.mm.model.*;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.setting.ProcessUploadHDHeadImg;
import com.tencent.mm.ui.tools.CropImageUI;

public class BottleWizardStep1 extends MMActivity
{

    public BottleWizardStep1()
    {
        b = null;
    }

    static boolean a(BottleWizardStep1 bottlewizardstep1)
    {
        boolean flag = true;
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(bottlewizardstep1, flag);
            flag = false;
        } else
        {
            if(bottlewizardstep1.a == null)
                bottlewizardstep1.a = (new android.app.AlertDialog.Builder(bottlewizardstep1)).setTitle(0x7f0a01c5).setItems(0x7f060000, bottlewizardstep1. new _cls5()).setNegativeButton(0x7f0a0015, bottlewizardstep1. new _cls4()).create();
            bottlewizardstep1.a.show();
        }
        return flag;
    }

    static AlertDialog b(BottleWizardStep1 bottlewizardstep1)
    {
        return bottlewizardstep1.a;
    }

    protected final int a()
    {
        return 0x7f030024;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR tableswitch 2 4: default 28
    //                   2 98
    //                   3 29
    //                   4 190;
           goto _L1 _L2 _L3 _L4
_L1:
        return;
_L3:
        String s3 = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
        if(s3 != null)
        {
            Intent intent2 = new Intent();
            intent2.setClass(this, com/tencent/mm/ui/tools/CropImageUI);
            intent2.putExtra("CropImage_OutputPath", s3);
            intent2.putExtra("CropImage_ImgPath", s3);
            startActivityForResult(intent2, 4);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(intent != null)
        {
            String s2 = Util.a(this, intent, MMCore.f().M());
            if(s2 != null && s2.length() > 0)
            {
                Intent intent1 = new Intent();
                intent1.setClass(this, com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_ImgPath", s2);
                intent1.putExtra("CropImage_OutputPath", MMCore.f().y().a(ContactStorageLogic.u(ConfigStorageLogic.b()), true));
                startActivityForResult(intent1, 4);
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(intent != null)
        {
            String s = intent.getStringExtra("CropImage_OutputPath");
            if(s == null)
            {
                Log.a("MicroMsg.BottleWizardStep1", "crop picture failed");
            } else
            {
                (new ProcessUploadHDHeadImg(c(), s)).a(2);
                String s1 = ConfigStorageLogic.b();
                MMCore.f().y().a(ContactStorageLogic.u(s1), BitmapFactory.decodeFile(s));
            }
        }
        if(true) goto _L1; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    protected void onResume()
    {
        super.onResume();
        d(0x7f0a03cb);
        ((LinearLayout)findViewById(0x7f070088)).setOnClickListener(new _cls1());
        b(new _cls2());
        a(0x7f0a001a, new _cls3());
        android.graphics.Bitmap bitmap = AvatarLogic.i(ContactStorageLogic.u(ConfigStorageLogic.b()));
        android.graphics.Bitmap bitmap1;
        if(bitmap == null)
            bitmap1 = AvatarLogic.i(ConfigStorageLogic.b());
        else
            bitmap1 = bitmap;
        b = (ImageView)findViewById(0x7f070089);
        if(bitmap1 != null)
            b.setImageBitmap(bitmap1);
    }

    private AlertDialog a;
    private ImageView b;

    private class _cls5
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
            if(i != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            a.startActivityForResult(Intent.createChooser(intent, null), 2);
_L6:
            BottleWizardStep1.b(a).dismiss();
_L4:
            return;
_L2:
            if(i != 1) goto _L4; else goto _L3
_L3:
            if(!CameraUtil.a(a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        private BottleWizardStep1 a;

        _cls5()
        {
            a = BottleWizardStep1.this;
            super();
        }
    }


    private class _cls4
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i)
        {
        }

        private BottleWizardStep1 a;

        _cls4()
        {
            a = BottleWizardStep1.this;
            super();
        }
    }


    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            BottleWizardStep1.a(a);
        }

        private BottleWizardStep1 a;

        _cls1()
        {
            a = BottleWizardStep1.this;
            super();
        }
    }


    private class _cls2
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.n();
            a.finish();
        }

        private BottleWizardStep1 a;

        _cls2()
        {
            a = BottleWizardStep1.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            Intent intent = (new Intent()).setClass(a, com/tencent/mm/ui/bottle/BottleWizardStep2);
            a.startActivity(intent);
            a.finish();
        }

        private BottleWizardStep1 a;

        _cls3()
        {
            a = BottleWizardStep1.this;
            super();
        }
    }

}
