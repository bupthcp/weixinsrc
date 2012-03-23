// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.modelemoji;

import android.content.Context;
import java.util.*;

// Referenced classes of package com.tencent.mm.modelemoji:
//            EmojiInfo

public class EmojiLogic
{

    public EmojiLogic()
    {
    }

    static List a()
    {
        return a;
    }

    public static void a(EmojiInfo emojiinfo, Context context)
    {
        if(!a(emojiinfo)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        a.add(emojiinfo);
        if(a.size() == 1)
        {
            DecodeTask decodetask = new DecodeTask();
            Context acontext[] = new Context[1];
            acontext[0] = context;
            decodetask.execute(acontext);
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(EmojiInfo emojiinfo)
    {
        if(emojiinfo != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        for(Iterator iterator = a.iterator(); iterator.hasNext();)
            if(((EmojiInfo)iterator.next()).f().equals(emojiinfo.f()))
            {
                flag = true;
                continue; /* Loop/switch isn't completed */
            }

        flag = false;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static native boolean extractForeground(int ai[], int i, int j);

    private static final List a = new ArrayList();

    static 
    {
        System.loadLibrary("ImgProcess");
    }

    private class DecodeTask extends AsyncTask
    {

        private static int a(int i)
        {
            if(MMActivity.k() <= 1.5F)
                i = (int)(0.5F + ((float)i * MMActivity.k()) / 1.5F);
            return i;
        }

        private static boolean a(EmojiInfo emojiinfo)
        {
            InputStream inputstream = null;
            InputStream inputstream2 = MMCore.c().getAssets().open((new StringBuilder()).append("custom_emoji/").append(emojiinfo.n()).toString());
            InputStream inputstream1 = inputstream2;
            Vector vector;
            int i;
            byte abyte0[] = new byte[inputstream1.available()];
            inputstream1.read(abyte0);
            GifDecoder gifdecoder = new GifDecoder(abyte0);
            vector = new Vector();
            gifdecoder.a(vector);
            i = 0;
_L9:
            if(i >= vector.size()) goto _L2; else goto _L1
_L1:
            GifDecoder.Frame frame;
            int j;
            int k;
            frame = (GifDecoder.Frame)vector.elementAt(i);
            j = a(frame.a.getWidth());
            k = a(frame.a.getHeight());
            IOException ioexception;
            boolean flag;
            IOException ioexception1;
            Exception exception;
            Exception exception1;
            IOException ioexception2;
            IOException ioexception3;
            IOException ioexception4;
            boolean flag1;
            if(frame.a.getWidth() != j || k != frame.a.getHeight())
                flag1 = true;
            else
                flag1 = false;
            if(flag1)
            {
                Bitmap bitmap = Bitmap.createScaledBitmap(frame.a, j, k, true);
                frame.a.recycle();
                Util.a(bitmap, 100, android.graphics.Bitmap.CompressFormat.PNG, (new StringBuilder()).append(MMCore.f().N()).append(emojiinfo.f()).append("_").append(i).toString());
                bitmap.recycle();
            } else
            {
                Util.a(frame.a, 100, android.graphics.Bitmap.CompressFormat.PNG, (new StringBuilder()).append(MMCore.f().N()).append(emojiinfo.f()).append("_").append(i).toString());
                frame.a.recycle();
            }
            break MISSING_BLOCK_LABEL_437;
            ioexception3;
            inputstream = inputstream1;
_L8:
            if(inputstream != null)
                try
                {
                    inputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception1) { }
            flag = false;
_L4:
            return flag;
_L2:
            emojiinfo.e((new StringBuilder()).append("").append(vector.size()).append("_").append(((GifDecoder.Frame)vector.elementAt(0)).b).toString());
            if(inputstream1 != null)
                try
                {
                    inputstream1.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception4) { }
            flag = true;
            if(true) goto _L4; else goto _L3
_L3:
            exception;
            inputstream1 = inputstream;
            exception1 = exception;
_L6:
            if(inputstream1 != null)
                try
                {
                    inputstream1.close();
                }
                // Misplaced declaration of an exception variable
                catch(IOException ioexception2) { }
            throw exception1;
            exception1;
            if(true) goto _L6; else goto _L5
_L5:
            ioexception;
            if(true) goto _L8; else goto _L7
_L7:
            i++;
              goto _L9
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            Context acontext[] = (Context[])aobj;
            if(acontext != null && acontext.length == 1) goto _L2; else goto _L1
_L1:
            EmojiInfo emojiinfo = null;
_L4:
            return emojiinfo;
_L2:
            emojiinfo = (EmojiInfo)EmojiLogic.a().get(0);
            EmojiView.b(false);
            Process.setThreadPriority(0);
            if(!a(emojiinfo))
                emojiinfo = null;
            if(true) goto _L4; else goto _L3
_L3:
        }

        protected volatile void onPostExecute(Object obj)
        {
            EmojiInfo emojiinfo = (EmojiInfo)obj;
            EmojiView.b(true);
            if(emojiinfo != null)
                MMCore.f().l().a(emojiinfo);
            if(EmojiLogic.a().size() > 0)
                EmojiLogic.a().remove(0);
            if(EmojiLogic.a().size() > 0)
            {
                DecodeTask decodetask = new DecodeTask((byte)0);
                Context acontext[] = new Context[1];
                acontext[0] = MMCore.c();
                decodetask.execute(acontext);
            }
        }

        DecodeTask()
        {
            this((byte)0);
        }

        private DecodeTask(byte byte0)
        {
        }
    }

}
