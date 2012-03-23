// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelavatar;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import b.a.e;
import com.tencent.mm.algorithm.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storagebase.MStorageEvent;
import java.io.File;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelavatar:
//            AvatarLogic

public class AvatarStorage
{

    public AvatarStorage(String s)
    {
        b = new _cls1();
        c = null;
        d = null;
        d = s;
        a();
    }

    public static Bitmap a(Context context)
    {
        Bitmap bitmap1 = b.a.e.a(context.getAssets().open("avatar/default_hd_avatar.png"));
        Bitmap bitmap = bitmap1;
_L2:
        return a(AvatarLogic.a(bitmap, 9));
        IOException ioexception;
        ioexception;
        bitmap = null;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static Bitmap a(Bitmap bitmap)
    {
        Bitmap bitmap1;
        if(!c(bitmap))
            bitmap1 = null;
        else
            bitmap1 = Bitmap.createScaledBitmap(bitmap, 480, 480, true);
        return bitmap1;
    }

    private static Bitmap a(byte abyte0[])
    {
        Bitmap bitmap = null;
        if(!Util.b(abyte0))
        {
            Bitmap bitmap1 = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
            if(bitmap1 == null)
            {
                Log.a("MicroMsg.AvatarStorage", "updating avatar decode failed");
            } else
            {
                Bitmap bitmap2 = Bitmap.createScaledBitmap(bitmap1, 96, 96, true);
                if(bitmap2 != null)
                    bitmap1.recycle();
                else
                    bitmap2 = bitmap1;
                bitmap = Util.a(bitmap2, 9F);
            }
        }
        return bitmap;
    }

    static LRUMap a(AvatarStorage avatarstorage)
    {
        return avatarstorage.c;
    }

    static MStorageEvent b(AvatarStorage avatarstorage)
    {
        return avatarstorage.b;
    }

    private void b(String s, Bitmap bitmap)
    {
        Object obj = (Map)c.b(s);
        if(obj == null)
            obj = new HashMap();
        ((Map) (obj)).put(Integer.valueOf(96), bitmap);
        c.a(s, obj);
    }

    static boolean b(Bitmap bitmap)
    {
        return c(bitmap);
    }

    private Set c(String s, boolean flag)
    {
        Map map = (Map)c.b(s);
        Set set;
        if(map == null || map.size() <= 0)
        {
            set = null;
        } else
        {
            Set set1 = map.keySet();
            if(set1 == null || set1.size() <= 0)
            {
                set = null;
            } else
            {
                if(flag)
                {
                    Iterator iterator = set1.iterator();
                    do
                    {
                        if(!iterator.hasNext())
                            break;
                        Bitmap bitmap = (Bitmap)map.get((Integer)iterator.next());
                        if(bitmap != null)
                            bitmap.recycle();
                    } while(true);
                }
                c.c(s);
                set = set1;
            }
        }
        return set;
    }

    private static boolean c(Bitmap bitmap)
    {
        boolean flag;
        if(bitmap == null || bitmap.isRecycled())
            flag = false;
        else
            flag = true;
        return flag;
    }

    private Bitmap e(String s)
    {
        Map map = (Map)c.b(s);
        Bitmap bitmap;
        if(map == null || map.size() == 0)
            bitmap = null;
        else
        if(!c((Bitmap)map.get(Integer.valueOf(96))))
            bitmap = null;
        else
            bitmap = (Bitmap)map.get(Integer.valueOf(96));
        return bitmap;
    }

    private void f(String s)
    {
        c(s, true);
    }

    private Bitmap g(String s)
    {
        Bitmap bitmap = null;
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        return bitmap;
_L2:
        Bitmap bitmap1 = e(s);
        if(c(bitmap1))
        {
            bitmap = bitmap1;
        } else
        {
            Bitmap bitmap2 = e(s);
            if(c(bitmap2))
            {
                bitmap = Bitmap.createScaledBitmap(bitmap2, 96, 96, true);
                if(!c(bitmap))
                    bitmap = bitmap2;
                else
                    b(s, bitmap);
            }
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    private static Bitmap h(String s)
    {
        Bitmap bitmap = null;
        Bitmap bitmap1;
        if(!(new File(s)).exists())
            break MISSING_BLOCK_LABEL_30;
        bitmap1 = BitmapFactory.decodeFile(s);
        bitmap = bitmap1;
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        return bitmap;
    }

    public final Bitmap a(Resources resources)
    {
        Bitmap bitmap = e("I_AM_NO_SDCARD_USER_NAME");
        if(!c(bitmap))
        {
            bitmap = BitmapFactory.decodeStream(resources.openRawResource(0x7f0201f2));
            if(bitmap != null)
            {
                Log.c("MicroMsg.AvatarStorage", (new StringBuilder()).append("not cached, recycled=").append(bitmap.isRecycled()).append(", reload=").append("I_AM_NO_SDCARD_USER_NAME").toString());
                bitmap = Util.a(bitmap, 9F);
                b("I_AM_NO_SDCARD_USER_NAME", bitmap);
            }
        }
        return bitmap;
    }

    public final String a(String s, boolean flag)
    {
        String s3;
        if(Util.i(s))
        {
            s3 = null;
        } else
        {
            String s1 = (new StringBuilder()).append(d).append("user_").toString();
            if(flag)
                s1 = (new StringBuilder()).append(s1).append("hd_").toString();
            String s2 = (new StringBuilder()).append(s1).append(MD5.a(s.getBytes())).toString();
            s3 = (new StringBuilder()).append(s2).append(".png").toString();
        }
        return s3;
    }

    public final void a()
    {
        if(c == null)
            c = new LRUMap(a);
        else
            c.a();
    }

    public final void a(int i)
    {
        if(i <= 100)
            i = 100;
        a = i;
        c.a(a);
    }

    public final void a(IOnAvatarChanged ionavatarchanged)
    {
        b.a(ionavatarchanged);
    }

    public final boolean a(String s)
    {
        boolean flag;
        String s1;
        flag = true;
        s1 = a(s, false);
        if(!(new File(s1)).exists()) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        boolean flag1;
        if((new File((new StringBuilder()).append(s1).append(".bm").toString())).exists())
            flag1 = flag;
        else
            flag1 = false;
        if(!flag1)
            flag = false;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public final boolean a(String s, Bitmap bitmap)
    {
        boolean flag;
        if(!c(bitmap))
        {
            flag = false;
        } else
        {
            Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, 96, 96, true);
            if(bitmap1 != null)
            {
                bitmap.recycle();
                bitmap = bitmap1;
            }
            Bitmap bitmap2 = Util.a(bitmap, 9F);
            if(!c(bitmap2))
            {
                flag = false;
            } else
            {
                c(s, true);
                b(s, bitmap2);
                b.b(s);
                b.a();
                SmallBM.a(a(s, false), bitmap2);
                flag = true;
            }
        }
        return flag;
    }

    public final boolean a(String s, byte abyte0[])
    {
        boolean flag = false;
        Bitmap bitmap = a(abyte0);
        if(!c(bitmap))
        {
            Log.a("MicroMsg.AvatarStorage", (new StringBuilder()).append("decode failed :").append(s).toString());
        } else
        {
            f(s);
            b(s, bitmap);
            b.b(s);
            b.a();
            SmallBM.a(a(s, flag), bitmap);
            flag = true;
        }
        return flag;
    }

    public final Bitmap b(String s)
    {
        if(!Util.i(s)) goto _L2; else goto _L1
_L1:
        Bitmap bitmap = null;
_L4:
        return bitmap;
_L2:
        bitmap = g(s);
        if(c(bitmap))
            continue; /* Loop/switch isn't completed */
        String s1 = a(s, false);
        Bitmap bitmap1 = SmallBM.a(s1);
        if(!c(bitmap1))
        {
            Bitmap bitmap2 = h(s1);
            Log.d("MicroMsg.AvatarStorage", (new StringBuilder()).append("read from png :").append(c(bitmap2)).toString());
            if(!c(bitmap2))
            {
                bitmap = null;
                continue; /* Loop/switch isn't completed */
            }
            bitmap1 = Util.a(bitmap2, 9F);
            SmallBM.a(s1, bitmap1);
        }
        b(s, bitmap1);
        bitmap = g(s);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public final void b()
    {
        if(c != null)
        {
            c.a();
            c = null;
        }
    }

    public final void b(IOnAvatarChanged ionavatarchanged)
    {
        b.c(ionavatarchanged);
    }

    public final boolean b(String s, boolean flag)
    {
        String s1 = a(s, flag);
        Log.d("MicroMsg.AvatarStorage", (new StringBuilder()).append("removeavatar :").append(s).append(" hd:").append(flag).append(" path:").append(s1).toString());
        FileOperation.d(s1);
        if(!flag)
        {
            String s2 = (new StringBuilder()).append(s1).append(".bm").toString();
            FileOperation.d(s1);
            FileOperation.d(s2);
        }
        return true;
    }

    public final boolean b(String s, byte abyte0[])
    {
        boolean flag = false;
        Bitmap bitmap = a(abyte0);
        if(!c(bitmap))
        {
            Log.a("MicroMsg.AvatarStorage", (new StringBuilder()).append("decode failed :").append(s).toString());
        } else
        {
            b(s, true);
            Set set = c(s, flag);
            b(s, bitmap);
            b.b(s);
            String s1 = a(s, flag);
            _cls3 _lcls3 = new _cls3(set, s, bitmap);
            String as[] = new String[1];
            as[flag] = s1;
            _lcls3.execute(as);
            flag = true;
        }
        return flag;
    }

    public final String c(String s)
    {
        return MD5.a(FileOperation.a(a(s, true), 0, -1));
    }

    public final Bitmap d(String s)
    {
        Log.d("MicroMsg.AvatarStorage", (new StringBuilder()).append("getHD Headimage Bitmap :").append(s).toString());
        Bitmap bitmap;
        if(Util.i(s))
            bitmap = null;
        else
            bitmap = h(a(s, true));
        return bitmap;
    }

    protected void finalize()
    {
        b();
        super.finalize();
    }

    private static int a = 100;
    private MStorageEvent b;
    private LRUMap c;
    private String d;


    private class _cls1 extends MStorageEvent
    {

        protected final volatile void a(Object obj, Object obj1)
        {
            ((IOnAvatarChanged)obj).b((String)obj1);
        }

        private AvatarStorage a;

        _cls1()
        {
            a = AvatarStorage.this;
            super();
        }

        private class IOnAvatarChanged
        {

            public abstract void b(String s);
        }

    }


    private class SmallBM
    {

        static Bitmap a(String s)
        {
            return b(s);
        }

        static boolean a(String s, Bitmap bitmap)
        {
            return b(s, bitmap);
        }

        private static Bitmap b(String s)
        {
            Bitmap bitmap;
            String s1;
            bitmap = null;
            s1 = (new StringBuilder()).append(s).append(".bm").toString();
            ByteBuffer bytebuffer;
            File file = new File(s1);
            if(!file.exists())
            {
                Log.a("MicroMsg.AvatarStorage", "small bm not exsit");
                break MISSING_BLOCK_LABEL_236;
            }
            int i = (int)file.length();
            if(i <= 0)
            {
                Log.a("MicroMsg.AvatarStorage", "small bm invalid size");
                break MISSING_BLOCK_LABEL_236;
            }
            FileInputStream fileinputstream = new FileInputStream(s1);
            bytebuffer = ByteBuffer.allocateDirect(i);
            bytebuffer.position(0);
            FileChannel filechannel = fileinputstream.getChannel();
            filechannel.read(bytebuffer);
            filechannel.close();
            fileinputstream.close();
            bytebuffer.position(0);
            Bitmap bitmap2;
            bitmap2 = Bitmap.createBitmap(96, 96, android.graphics.Bitmap.Config.ARGB_8888);
            bitmap2.copyPixelsFromBuffer(bytebuffer);
            bitmap = bitmap2;
            break MISSING_BLOCK_LABEL_236;
            Exception exception1;
            exception1;
            Log.a("MicroMsg.AvatarStorage", (new StringBuilder()).append("decode as ARGB_8888 failed").append(exception1.getMessage()).toString());
            Bitmap bitmap1;
            bitmap1 = Bitmap.createBitmap(96, 96, android.graphics.Bitmap.Config.RGB_565);
            bitmap1.copyPixelsFromBuffer(bytebuffer);
            bitmap = bitmap1;
            break MISSING_BLOCK_LABEL_236;
            Exception exception2;
            exception2;
            Log.a("MicroMsg.AvatarStorage", (new StringBuilder()).append("decode as RGB_565 failed:").append(exception2.getMessage()).toString());
_L2:
            return bitmap;
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private static boolean b(String s, Bitmap bitmap)
        {
            boolean flag;
            flag = false;
            break MISSING_BLOCK_LABEL_2;
_L2:
            String s1;
            do
                return flag;
            while(!AvatarStorage.b(bitmap) || Util.i(s));
            s1 = (new StringBuilder()).append(s).append(".bm").toString();
            ByteBuffer bytebuffer = ByteBuffer.allocateDirect(bitmap.getRowBytes() * bitmap.getHeight());
            bytebuffer.position(0);
            bitmap.copyPixelsToBuffer(bytebuffer);
            FileOutputStream fileoutputstream = new FileOutputStream(s1);
            FileChannel filechannel = fileoutputstream.getChannel();
            bytebuffer.position(0);
            filechannel.write(bytebuffer);
            filechannel.close();
            fileoutputstream.close();
            flag = true;
            continue; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            if(true) goto _L2; else goto _L1
_L1:
        }

        private SmallBM()
        {
        }
    }


    private class _cls3 extends AsyncTask
    {

        protected volatile Object doInBackground(Object aobj[])
        {
            SmallBM.a(((String[])aobj)[0], c);
            return null;
        }

        protected volatile void onPostExecute(Object obj)
        {
            if(a != null)
            {
                Iterator iterator = a.iterator();
                do
                {
                    if(!iterator.hasNext())
                        break;
                    Integer integer = (Integer)iterator.next();
                    Map map = (Map)AvatarStorage.a(d).b(b);
                    if(map == null)
                        break;
                    Bitmap bitmap = (Bitmap)map.get(integer);
                    if(bitmap != null)
                        bitmap.recycle();
                } while(true);
            }
            AvatarStorage.b(d).a();
        }

        private Set a;
        private String b;
        private Bitmap c;
        private AvatarStorage d;

        _cls3(Set set, String s, Bitmap bitmap)
        {
            d = AvatarStorage.this;
            a = set;
            b = s;
            c = bitmap;
            super();
        }
    }

}
