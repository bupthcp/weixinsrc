// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.*;
import android.graphics.drawable.BitmapDrawable;
import android.widget.ImageView;
import b.a.e;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelavatar.AvatarLogic;
import com.tencent.mm.modelavatar.AvatarStorage;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.tencent.mm.ui:
//            MMActivity

public class AvatarDrawable extends BitmapDrawable
{

    public AvatarDrawable(ImageView imageview, int i, int j)
    {
        super(imageview.getResources(), a(i, j));
        d = "";
        c = imageview;
    }

    public static int a()
    {
        return (int)(52F * MMActivity.k());
    }

    private static Bitmap a(int i, int j)
    {
        if(e == null || e.getWidth() != i)
            try
            {
                Bitmap bitmap = b.a.e.a(MMCore.c().getAssets().open("avatar/default_nor_avatar.png"), MMActivity.k());
                e = bitmap;
                if(bitmap.getWidth() != i)
                    e = Bitmap.createScaledBitmap(e, i, j, true);
            }
            catch(IOException ioexception) { }
        return e;
    }

    public static void a(MMActivity mmactivity)
    {
        if(!MMCore.f().b())
        {
            g = null;
            f.clear();
        } else
        {
            if(f.size() == 0 && MMCore.f().b())
            {
                if(g == null)
                    g = new _cls1();
                MMCore.f().y().a(g);
            }
            f.add(mmactivity);
        }
    }

    public static int b()
    {
        return (int)(40F * MMActivity.k());
    }

    public static int b(String s)
    {
        return Math.abs((new StringBuilder()).append("avatar_drawable_").append(s).toString().hashCode());
    }

    public static void b(MMActivity mmactivity)
    {
        if(MMCore.f().b()) goto _L2; else goto _L1
_L1:
        f.clear();
        g = null;
_L4:
        return;
_L2:
        Iterator iterator = f.iterator();
        do
        {
            if(!iterator.hasNext())
                break;
            MMActivity mmactivity1 = (MMActivity)iterator.next();
            if(mmactivity1 != mmactivity)
                continue;
            f.remove(mmactivity1);
            break;
        } while(true);
        if(f.size() == 0 && MMCore.f().b())
            MMCore.f().y().b(g);
        if(f.size() == 0)
            g = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    static List c()
    {
        return f;
    }

    public final void a(String s)
    {
        if(s != null && s.length() > 0 && !s.equals(d))
        {
            d = s;
            c.setId(b(s));
            c.invalidate();
        }
    }

    public void draw(Canvas canvas)
    {
        Bitmap bitmap;
        android.graphics.Rect rect;
        int ai[];
        int i;
        if(!a)
            bitmap = AvatarLogic.j(d);
        else
            bitmap = null;
        if(bitmap == null || bitmap.isRecycled())
            bitmap = a(c.getMeasuredWidth(), c.getMeasuredHeight());
        rect = getBounds();
        canvas.drawBitmap(bitmap, null, rect, b);
        ai = getState();
        i = ai.length;
        for(int j = 0; j < i; j++)
            if(ai[j] == 0x10100a7) //查看目前的图片是否是focused状态
                canvas.drawRoundRect(new RectF(rect), 6F, 6F, b);

    }

    private static boolean a = false;
    private static final Paint b;
    private static Bitmap e;
    private static List f = new ArrayList();
    private static com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged g = null;
    private ImageView c;
    private String d;

    static 
    {
        Paint paint = new Paint();
        b = paint;
        paint.setAntiAlias(true);
        b.setFilterBitmap(true);
    }

    private class _cls1
        implements com.tencent.mm.modelavatar.AvatarStorage.IOnAvatarChanged
    {

        public final void b(String s)
        {
            for(Iterator iterator = AvatarDrawable.c().iterator(); iterator.hasNext();)
            {
                MMActivity mmactivity = (MMActivity)iterator.next();
                View view = mmactivity.f().findViewById(AvatarDrawable.b(s));
                if(view != null)
                    view.invalidate();
                else
                    mmactivity.f().invalidate();
            }

        }

        _cls1()
        {
        }
    }

}
