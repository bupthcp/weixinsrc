// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelvideo;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import com.tencent.mm.model.*;

// Referenced classes of package com.tencent.mm.modelvideo:
//            VideoInfoStorage

public class ImportVideo
{

    public ImportVideo()
    {
        a = null;
        b = null;
        c = null;
        d = 0;
        e = null;
        f = null;
        g = null;
        h = null;
        i = new _cls1();
    }

    public final void a()
    {
        b = null;
    }

    public final void a(Context context, Intent intent, OnImportFinishListener onimportfinishlistener)
    {
        a = context;
        e = intent;
        f = VideoInfoStorage.c(ConfigStorageLogic.b());
        g = MMCore.f().p().e(f);
        h = MMCore.f().p().d(f);
        b = onimportfinishlistener;
        i.execute(new String[0]);
    }

    Context a;
    OnImportFinishListener b;
    String c;
    int d;
    Intent e;
    String f;
    String g;
    String h;
    private AsyncTask i;

    private class _cls1 extends AsyncTask
    {

        private transient String a()
        {
            String s;
            boolean flag;
            s = null;
            flag = false;
            a = ((flag) ? 1 : 0);
            d d1 = ah.a(b.a, b.e);
            Object obj = d1;
_L1:
            Exception exception;
            if(obj == null)
            {
                a = -50005;
                s = "";
            } else
            {
                b.c = ((d) (obj)).a;
                int j = FileOperation.a(b.c);
                if(j <= 0)
                {
                    a = -50001;
                    s = "";
                } else
                {
label0:
                    {
                        if(j <= 0x989680)
                            break label0;
                        a = -50002;
                        s = "";
                    }
                }
            }
_L2:
            return s;
            exception;
            obj = s;
              goto _L1
            FilesCopy.a(b.c, b.h, flag);
            b.d = ((d) (obj)).c / 1000;
            if(((d) (obj)).b == null)
                break MISSING_BLOCK_LABEL_258;
            Util.a(((d) (obj)).b, 60, android.graphics.Bitmap.CompressFormat.JPEG, b.g);
_L3:
            Exception exception2;
            if(flag)
                try
                {
                    Util.a(BitmapFactory.decodeStream(b.a.getResources().openRawResource(0x7f0200fc)), 60, android.graphics.Bitmap.CompressFormat.JPEG, b.g);
                }
                catch(Exception exception1) { }
            if(!FileOperation.c(b.h))
                a = -50003;
            if(!FileOperation.c(b.g))
                a = -50004;
              goto _L2
            exception2;
            flag = true;
              goto _L3
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return a();
        }

        protected volatile void onPostExecute(Object obj)
        {
            if(b.b != null)
                b.b.a(a, b.f, b.c, b.d);
        }

        private int a;
        private ImportVideo b;

        _cls1()
        {
            b = ImportVideo.this;
            super();
            a = 0;
        }

        private class OnImportFinishListener
        {

            public abstract void a(int j, String s, String s1, int k);
        }

    }

}
