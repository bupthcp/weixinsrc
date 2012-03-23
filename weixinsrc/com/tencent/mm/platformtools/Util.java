// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.platformtools;

import android.app.ActivityManager;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.database.Cursor;
import android.graphics.*;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.*;
import android.telephony.TelephonyManager;
import android.text.format.DateFormat;
import com.tencent.mm.algorithm.MD5;
import com.tencent.mm.test.Test;
import java.io.*;
import java.net.*;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.xml.parsers.*;
import junit.framework.Assert;
import org.w3c.dom.*;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

// Referenced classes of package com.tencent.mm.platformtools:
//            Log

public final class Util
{

    private Util()
    {
    }

    public static int a(int i1)
    {
        boolean flag;
        if(i1 > 0)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        return 0 + (new Random(System.currentTimeMillis())).nextInt(1 + (i1 + 0));
    }

    public static int a(Integer integer)
    {
        int i1;
        if(integer == null)
            i1 = 0;
        else
            i1 = integer.intValue();
        return i1;
    }

    public static int a(Integer integer, int i1)
    {
        if(integer != null)
            i1 = integer.intValue();
        return i1;
    }

    public static int a(Object obj)
    {
        int i1 = 0;
        if(obj != null) goto _L2; else goto _L1
_L1:
        return i1;
_L2:
        if(obj instanceof Integer)
            i1 = ((Integer)obj).intValue();
        else
        if(obj instanceof Long)
            i1 = ((Long)obj).intValue();
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static long a(Long long1)
    {
        long l1;
        if(long1 == null)
            l1 = 0L;
        else
            l1 = long1.longValue();
        return l1;
    }

    public static long a(Long long1, long l1)
    {
        if(long1 != null)
            l1 = long1.longValue();
        return l1;
    }

    public static Bitmap a(Bitmap bitmap, float f1)
    {
        Assert.assertNotNull(bitmap);
        Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap1);
        Paint paint = new Paint();
        Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        RectF rectf = new RectF(rect);
        paint.setAntiAlias(true);
        paint.setDither(true);
        paint.setFilterBitmap(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(0xffc0c0c0);
        canvas.drawRoundRect(rectf, f1, f1, paint);
        paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        bitmap.recycle();
        return bitmap1;
    }

    public static Bitmap a(String s, int i1, int j1, boolean flag)
    {
        android.graphics.BitmapFactory.Options options;
        boolean flag1 = false;
        if(s != null && !s.equals("") && i1 > 0 && j1 > 0)
            flag1 = true;
        Assert.assertTrue(flag1);
        options = new android.graphics.BitmapFactory.Options();
        double d1;
        double d2;
        options.inJustDecodeBounds = true;
        Bitmap bitmap1 = BitmapFactory.decodeFile(s, options);
        if(bitmap1 != null)
            bitmap1.recycle();
        Log.d("MicroMsg.Util", (new StringBuilder()).append("extractThumbNail: round=").append(j1).append("x").append(i1).append(", crop=").append(flag).toString());
        d1 = (1D * (double)options.outHeight) / (double)i1;
        d2 = (1D * (double)options.outWidth) / (double)j1;
        Log.d("MicroMsg.Util", (new StringBuilder()).append("extractThumbNail: extract beX = ").append(d2).append(", beY = ").append(d1).toString());
        if(!flag) goto _L2; else goto _L1
_L1:
        if(d1 <= d2) goto _L4; else goto _L3
_L3:
        double d3 = d2;
_L6:
        options.inSampleSize = (int)d3;
        if(options.inSampleSize <= 1)
            options.inSampleSize = 1;
        for(; (options.outHeight * options.outWidth) / options.inSampleSize > 0x2a3000; options.inSampleSize = 1 + options.inSampleSize);
          goto _L5
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        Bitmap bitmap;
        Log.a("MicroMsg.Util", (new StringBuilder()).append("decode bitmap failed: ").append(outofmemoryerror.getMessage()).toString());
        bitmap = null;
_L9:
        return bitmap;
_L4:
        d3 = d1;
          goto _L6
_L2:
        if(d1 < d2)
            d3 = d2;
        else
            d3 = d1;
          goto _L6
_L5:
        if(!flag)
            break MISSING_BLOCK_LABEL_494;
        if(d1 <= d2) goto _L8; else goto _L7
_L7:
        double d4 = 1D * (double)j1;
        int k1;
        int l1;
        int j2 = (int)((d4 * (double)options.outHeight) / (double)options.outWidth);
        k1 = j1;
        l1 = j2;
_L10:
        Bitmap bitmap2;
        options.inJustDecodeBounds = false;
        Log.c("MicroMsg.Util", (new StringBuilder()).append("bitmap required size=").append(k1).append("x").append(l1).append(", orig=").append(options.outWidth).append("x").append(options.outHeight).append(", sample=").append(options.inSampleSize).toString());
        bitmap2 = BitmapFactory.decodeFile(s, options);
        if(bitmap2 != null)
            break MISSING_BLOCK_LABEL_564;
        Log.a("MicroMsg.Util", "bitmap decode failed");
        bitmap = null;
          goto _L9
_L8:
        k1 = (int)((1D * (double)i1 * (double)options.outWidth) / (double)options.outHeight);
        l1 = i1;
          goto _L10
        if(d1 < d2)
        {
            int i2 = (int)((1D * (double)j1 * (double)options.outHeight) / (double)options.outWidth);
            k1 = j1;
            l1 = i2;
        } else
        {
            k1 = (int)((1D * (double)i1 * (double)options.outWidth) / (double)options.outHeight);
            l1 = i1;
        }
          goto _L10
        Log.c("MicroMsg.Util", (new StringBuilder()).append("bitmap decoded size=").append(bitmap2.getWidth()).append("x").append(bitmap2.getHeight()).toString());
        bitmap = Bitmap.createScaledBitmap(bitmap2, k1, l1, true);
        if(bitmap == null)
            break MISSING_BLOCK_LABEL_724;
        bitmap2.recycle();
_L15:
        if(!flag) goto _L12; else goto _L11
_L11:
        Bitmap bitmap3 = Bitmap.createBitmap(bitmap, bitmap.getWidth() - j1 >> 1, bitmap.getHeight() - i1 >> 1, j1, i1);
        if(bitmap3 == null) goto _L9; else goto _L13
_L13:
        bitmap.recycle();
        Log.c("MicroMsg.Util", (new StringBuilder()).append("bitmap croped size=").append(bitmap3.getWidth()).append("x").append(bitmap3.getHeight()).toString());
_L14:
        bitmap = bitmap3;
          goto _L9
_L12:
        bitmap3 = bitmap;
          goto _L14
        bitmap = bitmap2;
          goto _L15
    }

    public static MediaPlayer a(Context context, int i1, android.media.MediaPlayer.OnCompletionListener oncompletionlistener)
    {
        MediaPlayer mediaplayer;
        try
        {
            String s = context.getString(i1);
            AssetFileDescriptor assetfiledescriptor = context.getAssets().openFd(s);
            mediaplayer = new MediaPlayer();
            mediaplayer.setDataSource(assetfiledescriptor.getFileDescriptor(), assetfiledescriptor.getStartOffset(), assetfiledescriptor.getLength());
            assetfiledescriptor.close();
            mediaplayer.prepare();
            mediaplayer.setLooping(false);
            mediaplayer.start();
            mediaplayer.setOnCompletionListener(oncompletionlistener);
        }
        catch(Exception exception)
        {
            mediaplayer = null;
        }
        return mediaplayer;
    }

    public static CharSequence a(Context context, long l1, boolean flag)
    {
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        if(l1 >= 0x36ee80L) goto _L2; else goto _L1
_L1:
        Object obj = "";
_L4:
        return ((CharSequence) (obj));
_L2:
        GregorianCalendar gregoriancalendar1 = new GregorianCalendar(gregoriancalendar.get(1), gregoriancalendar.get(2), gregoriancalendar.get(5));
        long l2 = l1 - gregoriancalendar1.getTimeInMillis();
        if(l2 > 0L && l2 <= 0x5265c00L)
        {
            obj = (new StringBuilder()).append("").append(b(context, l2)).append(DateFormat.format(context.getString(0x7f0a0083), l1)).toString();
        } else
        {
            long l3 = 0x5265c00L + (l1 - gregoriancalendar1.getTimeInMillis());
            if(l3 > 0L && l3 <= 0x5265c00L)
            {
                if(flag)
                    obj = (new StringBuilder()).append(context.getString(0x7f0a008c)).append(" ").append(b(context, l3)).toString();
                else
                    obj = (new StringBuilder()).append(context.getString(0x7f0a008c)).append(" ").append(b(context, l3)).append(DateFormat.format(context.getString(0x7f0a0083), l1)).toString();
            } else
            {
                GregorianCalendar gregoriancalendar2 = new GregorianCalendar();
                gregoriancalendar2.setTimeInMillis(l1);
                if(gregoriancalendar.get(1) == gregoriancalendar2.get(1) && gregoriancalendar.get(3) == gregoriancalendar2.get(3))
                {
                    obj = (new StringBuilder()).append("").append(DateFormat.format("E ", gregoriancalendar2)).append(b(context, 0x36ee80L * (long)gregoriancalendar2.get(11))).toString();
                    if(!flag)
                        obj = (new StringBuilder()).append(((String) (obj))).append(DateFormat.format(context.getString(0x7f0a0083), l1)).toString();
                } else
                if(gregoriancalendar.get(1) == gregoriancalendar2.get(1))
                {
                    if(flag)
                    {
                        obj = DateFormat.format(context.getString(0x7f0a0080), l1);
                    } else
                    {
                        Object aobj1[] = new Object[1];
                        aobj1[0] = b(context, 0x36ee80L * (long)gregoriancalendar2.get(11));
                        obj = DateFormat.format(context.getString(0x7f0a0082, aobj1).toString(), l1);
                    }
                } else
                if(flag)
                {
                    obj = DateFormat.format(context.getString(0x7f0a0081), l1);
                } else
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = b(context, 0x36ee80L * (long)gregoriancalendar2.get(11));
                    obj = DateFormat.format(context.getString(0x7f0a0084, aobj).toString(), l1);
                }
            }
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static String a(long l1)
    {
        return (new SimpleDateFormat("[yy-MM-dd HH:mm:ss]")).format(new Date(1000L * l1));
    }

    public static String a(Context context)
    {
        if(context != null) goto _L2; else goto _L1
_L1:
        String s = null;
_L3:
        return s;
_L2:
        String s1;
label0:
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            if(telephonymanager == null)
            {
                s = null;
            } else
            {
                s1 = telephonymanager.getDeviceId();
                if(s1 != null)
                    break label0;
                s = null;
            }
        }
          goto _L3
        String s2 = s1.trim();
        s = s2;
          goto _L3
        SecurityException securityexception;
        securityexception;
        Log.a("MicroMsg.Util", "getDeviceId failed, security exception");
_L4:
        s = null;
          goto _L3
        Exception exception;
        exception;
          goto _L4
    }

    public static String a(Context context, int i1, int j1)
    {
        StringBuilder stringbuilder = (new StringBuilder()).append(b(context, 0x36ee80L * (long)i1 + 60000L * (long)j1));
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(i1);
        aobj[1] = Integer.valueOf(j1);
        return stringbuilder.append(String.format("%02d:%02d", aobj)).toString();
    }

    public static String a(Context context, long l1)
    {
        Object aobj[] = new Object[1];
        aobj[0] = b(l1);
        return context.getString(0x7f0a01f1, aobj);
    }

    public static String a(Context context, Intent intent, String s)
    {
        String s1 = null;
        if(context != null && intent != null && s != null) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.Util", "resolvePhotoFromIntent fail, invalid argument");
_L6:
        return s1;
_L2:
label0:
        {
            {
                Uri uri = Uri.parse(intent.toURI());
                Cursor cursor = context.getContentResolver().query(uri, s1, s1, s1, s1);
                if(cursor == null || cursor.getCount() <= 0)
                    break label0;
                Exception exception;
                String s2;
                Bitmap bitmap;
                File file;
                BufferedOutputStream bufferedoutputstream;
                try
                {
                    cursor.moveToFirst();
                    int i1 = cursor.getColumnIndex("_data");
                    Log.a("MicroMsg.Util", (new StringBuilder()).append("orition: ").append(cursor.getString(cursor.getColumnIndex("orientation"))).toString());
                    s1 = cursor.getString(i1);
                    Log.d("MicroMsg.Util", (new StringBuilder()).append("photo from resolver, path:").append(s1).toString());
                }
                catch(Exception exception1) { }
            }
            if(cursor != null)
                cursor.close();
            continue; /* Loop/switch isn't completed */
        }
        if(intent.getData() != null)
        {
            String s3 = intent.getData().getPath();
            if((new File(s3)).exists())
                s1 = s3;
            Log.d("MicroMsg.Util", (new StringBuilder()).append("photo file from data, path:").append(s1).toString());
            continue; /* Loop/switch isn't completed */
        }
        if(intent.getAction() == null || !intent.getAction().equals("inline-data"))
            break; /* Loop/switch isn't completed */
        try
        {
            s2 = (new StringBuilder()).append(MD5.a(DateFormat.format("yyyy-MM-dd-HH-mm-ss", System.currentTimeMillis()).toString().getBytes())).append(".jpg").toString();
            s1 = (new StringBuilder()).append(s).append(s2).toString();
            bitmap = (Bitmap)intent.getExtras().get("data");
            file = new File(s1);
            if(!file.exists())
                file.createNewFile();
            bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file));
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, bufferedoutputstream);
            bufferedoutputstream.close();
            Log.d("MicroMsg.Util", (new StringBuilder()).append("photo image from data, path:").append(s1).toString());
        }
        // Misplaced declaration of an exception variable
        catch(Exception exception) { }
        if(true) goto _L4; else goto _L3
_L4:
        break MISSING_BLOCK_LABEL_159;
_L3:
        if(cursor != null)
            cursor.close();
        Log.a("MicroMsg.Util", "resolve photo from intent failed");
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static String a(InputStream inputstream)
    {
        BufferedReader bufferedreader;
        StringBuilder stringbuilder;
        bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
        stringbuilder = new StringBuilder();
        break MISSING_BLOCK_LABEL_24;
        ioexception1;
        Exception exception;
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception2) { }
        return stringbuilder.toString();
        IOException ioexception1;
        do
        {
            String s = bufferedreader.readLine();
            if(s == null)
                break;
            stringbuilder.append((new StringBuilder()).append(s).append("\n").toString());
        } while(true);
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception3) { }
        if(true)
            break MISSING_BLOCK_LABEL_70;
        exception;
        try
        {
            inputstream.close();
        }
        catch(IOException ioexception) { }
        throw exception;
    }

    public static String a(String s)
    {
        if(s != null)
            s = s.replace("\\[", "[[]").replace("%", "").replace("\\^", "").replace("'", "").replace("\\{", "").replace("\\}", "").replace("\"", "");
        return s;
    }

    public static String a(String s, String s1)
    {
        if(s != null)
            s1 = s;
        return s1;
    }

    public static String a(List list, String s)
    {
        String s1;
        if(list == null)
        {
            s1 = "";
        } else
        {
            StringBuilder stringbuilder = new StringBuilder("");
            int i1 = 0;
            while(i1 < list.size()) 
            {
                if(i1 == -1 + list.size())
                    stringbuilder.append(((String)list.get(i1)).trim());
                else
                    stringbuilder.append((new StringBuilder()).append(((String)list.get(i1)).trim()).append(s).toString());
                i1++;
            }
            s1 = stringbuilder.toString();
        }
        return s1;
    }

    public static String a(byte abyte0[])
    {
        int i1 = 0;
        String s;
        if(abyte0 == null)
        {
            s = "(null)";
        } else
        {
            char ac[] = new char[16];
            ac[0] = '0';
            ac[1] = '1';
            ac[2] = '2';
            ac[3] = '3';
            ac[4] = '4';
            ac[5] = '5';
            ac[6] = '6';
            ac[7] = '7';
            ac[8] = '8';
            ac[9] = '9';
            ac[10] = 'a';
            ac[11] = 'b';
            ac[12] = 'c';
            ac[13] = 'd';
            ac[14] = 'e';
            ac[15] = 'f';
            int j1 = abyte0.length;
            char ac1[] = new char[j1 * 3 + j1 / 16];
            int k1 = i1;
            while(k1 < j1) 
            {
                byte byte0 = abyte0[k1];
                int l1 = i1 + 1;
                ac1[i1] = ' ';
                int i2 = l1 + 1;
                ac1[l1] = ac[0xf & byte0 >>> 4];
                int j2 = i2 + 1;
                ac1[i2] = ac[byte0 & 0xf];
                if(k1 % 16 == 0 && k1 > 0)
                {
                    i1 = j2 + 1;
                    ac1[j2] = '\n';
                } else
                {
                    i1 = j2;
                }
                k1++;
            }
            s = new String(ac1);
        }
        return s;
    }

    public static List a(String as[])
    {
        Object obj;
        if(as == null || as.length == 0)
        {
            obj = null;
        } else
        {
            ArrayList arraylist = new ArrayList();
            for(int i1 = 0; i1 < as.length; i1++)
                arraylist.add(as[i1]);

            obj = arraylist;
        }
        return ((List) (obj));
    }

    public static void a(Context context, int i1)
    {
        a(context, i1, ((android.media.MediaPlayer.OnCompletionListener) (new _cls1())));
    }

    public static void a(Context context, boolean flag)
    {
        Vibrator vibrator = (Vibrator)context.getSystemService("vibrator");
        if(vibrator != null)
            if(flag)
                vibrator.vibrate(a, -1);
            else
                vibrator.cancel();
    }

    public static void a(Bitmap bitmap, int i1, android.graphics.Bitmap.CompressFormat compressformat, String s)
    {
        boolean flag;
        File file;
        FileOutputStream fileoutputstream;
        if(!i(s))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.Util", (new StringBuilder()).append("saving to ").append(s).toString());
        file = new File(s);
        file.createNewFile();
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(compressformat, i1, fileoutputstream);
        fileoutputstream.flush();
_L2:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void a(Bitmap bitmap, int i1, android.graphics.Bitmap.CompressFormat compressformat, String s, String s1)
    {
        boolean flag;
        File file;
        FileOutputStream fileoutputstream;
        if(s != null && s1 != null)
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        Log.d("MicroMsg.Util", (new StringBuilder()).append("saving to ").append(s).append(s1).toString());
        file = new File((new StringBuilder()).append(s).append(s1).toString());
        file.createNewFile();
        fileoutputstream = new FileOutputStream(file);
        bitmap.compress(compressformat, i1, fileoutputstream);
        fileoutputstream.flush();
_L2:
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static void a(String s, Context context)
    {
        context.startActivity(g(s));
    }

    private static void a(Map map, String s, Node node, int i1)
    {
        int j1 = 0;
        if(!node.getNodeName().equals("#text")) goto _L2; else goto _L1
_L1:
        map.put(s, node.getNodeValue());
_L4:
        return;
_L2:
        if(!node.getNodeName().equals("#cdata-section"))
            break; /* Loop/switch isn't completed */
        map.put(s, node.getNodeValue());
        if(true) goto _L4; else goto _L3
_L3:
        StringBuilder stringbuilder = (new StringBuilder()).append(s).append(".").append(node.getNodeName());
        Object obj;
        String s1;
        NamedNodeMap namednodemap;
        if(i1 > 0)
            obj = Integer.valueOf(i1);
        else
            obj = "";
        s1 = stringbuilder.append(obj).toString();
        map.put(s1, node.getNodeValue());
        namednodemap = node.getAttributes();
        if(namednodemap != null)
        {
            for(int l1 = j1; l1 < namednodemap.getLength(); l1++)
            {
                Node node2 = namednodemap.item(l1);
                map.put((new StringBuilder()).append(s1).append(".$").append(node2.getNodeName()).toString(), node2.getNodeValue());
            }

        }
        HashMap hashmap = new HashMap();
        NodeList nodelist = node.getChildNodes();
        while(j1 < nodelist.getLength()) 
        {
            Node node1 = nodelist.item(j1);
            int k1 = a((Integer)hashmap.get(node1.getNodeName()));
            a(map, s1, node1, k1);
            hashmap.put(node1.getNodeName(), Integer.valueOf(k1 + 1));
            j1++;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public static boolean a()
    {
        int i1 = (new GregorianCalendar()).get(11);
        boolean flag;
        if((long)i1 >= 6L && (long)i1 < 18L)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(char c1)
    {
        Character.UnicodeBlock unicodeblock = Character.UnicodeBlock.of(c1);
        boolean flag;
        if(unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeblock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeblock == Character.UnicodeBlock.GENERAL_PUNCTUATION || unicodeblock == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || unicodeblock == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(int i1, int j1, int k1)
    {
        boolean flag = false;
        if(j1 <= k1) goto _L2; else goto _L1
_L1:
        if(i1 >= j1 || i1 <= k1)
            flag = true;
_L4:
        return flag;
_L2:
        if(j1 < k1)
        {
            if(i1 <= k1 && i1 >= j1)
                flag = true;
        } else
        {
            flag = true;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static boolean a(Context context, Intent intent)
    {
        boolean flag;
        if(context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean a(Context context, String s)
    {
        Iterator iterator = ((ActivityManager)context.getSystemService("activity")).getRunningAppProcesses().iterator();
_L4:
        if(!iterator.hasNext()) goto _L2; else goto _L1
_L1:
        android.app.ActivityManager.RunningAppProcessInfo runningappprocessinfo = (android.app.ActivityManager.RunningAppProcessInfo)iterator.next();
        if(runningappprocessinfo == null || runningappprocessinfo.processName == null || !runningappprocessinfo.processName.equals(s)) goto _L4; else goto _L3
_L3:
        boolean flag;
        Log.b("MicroMsg.Util", (new StringBuilder()).append("process ").append(s).append(" is running").toString());
        flag = true;
_L6:
        return flag;
_L2:
        Log.b("MicroMsg.Util", (new StringBuilder()).append("process ").append(s).append(" is not running").toString());
        flag = false;
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static boolean a(Boolean boolean1)
    {
        boolean flag;
        if(boolean1 == null)
            flag = true;
        else
            flag = boolean1.booleanValue();
        return flag;
    }

    public static boolean a(Boolean boolean1, boolean flag)
    {
        if(boolean1 != null)
            flag = boolean1.booleanValue();
        return flag;
    }

    public static boolean a(String s, int i1, int j1, android.graphics.Bitmap.CompressFormat compressformat, int k1, String s1, String s2)
    {
        boolean flag;
        Bitmap bitmap;
        flag = false;
        bitmap = a(s, i1, j1, flag);
        if(bitmap != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        a(bitmap, k1, compressformat, s1, s2);
        flag = true;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Log.a("MicroMsg.Util", (new StringBuilder()).append("create thumbnail from orig failed: ").append(s2).toString());
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean a(String s, int i1, android.graphics.Bitmap.CompressFormat compressformat, String s1, String s2)
    {
        boolean flag;
        Bitmap bitmap;
        flag = false;
        bitmap = BitmapFactory.decodeFile(s);
        if(bitmap != null) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.Util", "rotate: create bitmap fialed");
_L4:
        return flag;
_L2:
        Bitmap bitmap1;
        float f1 = bitmap.getWidth();
        float f2 = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setRotate(i1, f1 / 2F, f2 / 2F);
        int j1 = (int)f1;
        int k1 = (int)f2;
        bitmap1 = Bitmap.createBitmap(bitmap, flag, flag, j1, k1, matrix, true);
        bitmap.recycle();
        a(bitmap1, 60, compressformat, s1, s2);
        flag = true;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Log.a("MicroMsg.Util", (new StringBuilder()).append("create thumbnail from orig failed: ").append(s2).toString());
        if(true) goto _L4; else goto _L3
_L3:
    }

    public static int b()
    {
        return (int)((long)TimeZone.getDefault().getRawOffset() / 0x36ee80L);
    }

    private static CharSequence b(Context context, long l1)
    {
        String s;
        if(l1 < 0L)
            s = "";
        else
        if(l1 < 0x1499700L)
            s = context.getString(0x7f0a0087);
        else
        if(l1 < 0x2932e00L)
            s = context.getString(0x7f0a0088);
        else
        if(l1 < 0x2ca1c80L)
            s = context.getString(0x7f0a0089);
        else
        if(l1 < 0x3dcc500L)
            s = context.getString(0x7f0a008a);
        else
            s = context.getString(0x7f0a008b);
        return s;
    }

    public static String b(int i1)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Long.valueOf((long)i1 / 60L);
        aobj[1] = Long.valueOf((long)i1 % 60L);
        return String.format("%d:%02d", aobj);
    }

    public static String b(long l1)
    {
        String s;
        if(l1 >> 20 > 0L)
            s = c(l1);
        else
        if(l1 >> 9 > 0L)
        {
            float f1 = (float)Math.round((10F * (float)l1) / 1024F) / 10F;
            s = (new StringBuilder()).append("").append(f1).append("KB").toString();
        } else
        {
            s = (new StringBuilder()).append("").append(l1).append("B").toString();
        }
        return s;
    }

    public static String b(Context context)
    {
        if(context != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        try
        {
            if((TelephonyManager)context.getSystemService("phone") == null)
                Log.a("MicroMsg.Util", "get line1 number failed, null tm");
        }
        catch(SecurityException securityexception)
        {
            Log.a("MicroMsg.Util", "getLine1Number failed, security exception");
        }
        catch(Exception exception) { }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String b(Context context, int i1)
    {
        String s = (new StringBuilder()).append("").append(0xf & i1 >> 24).append(".").append(0xff & i1 >> 16).toString();
        int j1 = i1 & 0xffff;
        if(context != null)
            try
            {
                PackageInfo packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 128);
                if(packageinfo != null)
                {
                    j1 = packageinfo.versionCode;
                    s = packageinfo.versionName;
                }
            }
            catch(Exception exception) { }
        if(Test.h)
            s = (new StringBuilder()).append(s).append(" r").append(j1).append("(").append(i1 & 0xffff).append(")").toString();
        return s;
    }

    public static Map b(String s, String s1)
    {
        Object obj = null;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return ((Map) (obj));
_L2:
        HashMap hashmap;
        DocumentBuilderFactory documentbuilderfactory;
        hashmap = new HashMap();
        documentbuilderfactory = DocumentBuilderFactory.newInstance();
        DocumentBuilder documentbuilder = documentbuilderfactory.newDocumentBuilder();
label0:
        {
            if(documentbuilder != null)
                break label0;
            Log.a("MicroMsg.Util", "new Document Builder failed");
        }
          goto _L1
        Document document = documentbuilder.parse(new InputSource(new ByteArrayInputStream(s.getBytes())));
        Object obj1 = document;
        ((Document) (obj1)).normalize();
_L6:
        Element element;
        if(obj1 == null)
        {
            Log.a("MicroMsg.Util", "new Document failed");
        } else
        {
label1:
            {
                element = ((Document) (obj1)).getDocumentElement();
                if(element != null)
                    break label1;
                Log.a("MicroMsg.Util", "getDocumentElement failed");
            }
        }
          goto _L1
        if(s1 == null || !s1.equals(element.getNodeName())) goto _L4; else goto _L3
_L3:
        a(hashmap, "", element, 0);
_L5:
        java.util.Map.Entry entry;
        for(Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); Log.e("MicroMsg.Util", (new StringBuilder()).append("key=").append((String)entry.getKey()).append(" value=").append((String)entry.getValue()).toString()))
            entry = (java.util.Map.Entry)iterator.next();

        break MISSING_BLOCK_LABEL_314;
_L4:
        NodeList nodelist;
label2:
        {
            nodelist = element.getElementsByTagName(s1);
            if(nodelist.getLength() > 0)
                break label2;
            Log.a("MicroMsg.Util", "parse item null");
        }
          goto _L1
        if(nodelist.getLength() > 1)
            Log.b("MicroMsg.Util", "parse items more than one");
        a(hashmap, "", nodelist.item(0), 0);
          goto _L5
        obj = hashmap;
          goto _L1
        ParserConfigurationException parserconfigurationexception;
        parserconfigurationexception;
          goto _L1
        Exception exception;
        exception;
          goto _L1
        IOException ioexception;
        ioexception;
          goto _L1
        SAXException saxexception;
        saxexception;
          goto _L1
        DOMException domexception;
        domexception;
        obj1 = obj;
          goto _L6
        DOMException domexception1;
        domexception1;
          goto _L6
    }

    public static boolean b(char c1)
    {
        boolean flag;
        if(c1 >= 'a' && c1 <= 'z' || c1 >= 'A' && c1 <= 'Z')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean b(Context context, String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        boolean flag;
        if(!a(context, intent))
        {
            Log.a("MicroMsg.Util", (new StringBuilder()).append("jump to url failed, ").append(s).toString());
            flag = false;
        } else
        {
            context.startActivity(intent);
            flag = true;
        }
        return flag;
    }

    public static boolean b(Boolean boolean1)
    {
        boolean flag;
        if(boolean1 == null)
            flag = false;
        else
            flag = boolean1.booleanValue();
        return flag;
    }

    public static boolean b(String s)
    {
        boolean flag = false;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s1 = s.trim();
        long l1 = Long.valueOf(s1).longValue();
        if(l1 > 0L && l1 <= 0xffffffffL)
            flag = true;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean b(byte abyte0[])
    {
        boolean flag;
        if(abyte0 == null || abyte0.length <= 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static int c(int i1)
    {
        return i1 + (224 + 52 * (1 + (i1 + -1) / 1462));
    }

    public static int c(String s, String s1)
    {
        int i1 = 0;
        try
        {
            ZipInputStream zipinputstream = new ZipInputStream(new FileInputStream(s));
            do
            {
                ZipEntry zipentry = zipinputstream.getNextEntry();
                if(zipentry == null)
                    break;
                String s2 = zipentry.getName();
                if(zipentry.isDirectory())
                {
                    String s3 = s2.substring(0, -1 + s2.length());
                    (new File((new StringBuilder()).append(s1).append(File.separator).append(s3).toString())).mkdirs();
                } else
                {
                    File file = new File((new StringBuilder()).append(s1).append(File.separator).append(s2).toString());
                    file.createNewFile();
                    FileOutputStream fileoutputstream = new FileOutputStream(file);
                    byte abyte0[] = new byte[1024];
                    do
                    {
                        int j1 = zipinputstream.read(abyte0);
                        if(j1 == -1)
                            break;
                        fileoutputstream.write(abyte0, 0, j1);
                        fileoutputstream.flush();
                    } while(true);
                    fileoutputstream.close();
                }
            } while(true);
            zipinputstream.close();
        }
        catch(FileNotFoundException filenotfoundexception)
        {
            i1 = -1;
        }
        catch(IOException ioexception)
        {
            i1 = -2;
        }
        return i1;
    }

    public static long c()
    {
        return System.currentTimeMillis() / 1000L;
    }

    public static String c(long l1)
    {
        float f1 = (float)Math.round((10F * (float)l1) / 1048576F) / 10F;
        return (new StringBuilder()).append("").append(f1).append("MB").toString();
    }

    public static String c(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder("");
        if(abyte0 != null)
        {
            for(int i1 = 0; i1 < abyte0.length; i1++)
            {
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(0xff & abyte0[i1]);
                stringbuilder.append(String.format("%02x", aobj));
            }

        }
        return stringbuilder.toString();
    }

    public static boolean c(char c1)
    {
        boolean flag;
        if(c1 >= '0' && c1 <= '9')
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static boolean c(Context context)
    {
        String s = context.getClass().getName();
        String s1 = d(context);
        Log.d("MicroMsg.Util", (new StringBuilder()).append("top activity=").append(s1).append(", context=").append(s).toString());
        return s1.equalsIgnoreCase(s);
    }

    public static boolean c(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
            flag = false;
        else
            flag = s.trim().matches("^[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\\w\\.-]*[a-zA-Z0-9]\\.[a-zA-Z][a-zA-Z\\.]*[a-zA-Z]$");
        return flag;
    }

    public static int d(int i1)
    {
        return i1 + (208 + 52 * (1 + (i1 + -1) / 1462));
    }

    public static long d()
    {
        return System.currentTimeMillis();
    }

    public static long d(long l1)
    {
        return System.currentTimeMillis() / 1000L - l1;
    }

    public static String d(Context context)
    {
        String s1 = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName();
        String s = s1;
_L2:
        return s;
        Exception exception;
        exception;
        s = "(null)";
        if(true) goto _L2; else goto _L1
_L1:
    }

    public static boolean d(String s)
    {
        boolean flag = false;
        if(s != null) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        String s1 = s.trim();
        if(s1.length() < 6 || s1.length() > 20 || !b(s1.charAt(flag)))
            continue; /* Loop/switch isn't completed */
        for(int i1 = ((flag) ? 1 : 0); i1 < s1.length(); i1++)
        {
            char c1 = s1.charAt(i1);
            if(!b(c1) && !c(c1) && c1 != '-' && c1 != '_')
                continue; /* Loop/switch isn't completed */
        }

        flag = true;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static int e(int i1)
    {
        return i1 + (52 + 52 * (1 + (i1 + -1) / 1462));
    }

    public static long e()
    {
        return SystemClock.elapsedRealtime();
    }

    public static long e(long l1)
    {
        return System.currentTimeMillis() - l1;
    }

    public static boolean e(String s)
    {
        boolean flag;
        flag = false;
        break MISSING_BLOCK_LABEL_2;
        if(s != null && s.length() >= 4)
            if(s.length() >= 9)
                flag = true;
            else
                try
                {
                    Integer.parseInt(s);
                }
                catch(NumberFormatException numberformatexception)
                {
                    flag = true;
                }
        return flag;
    }

    public static int f(int i1)
    {
        return i1 + (40 + 52 * (1 + (i1 + -1) / 1462));
    }

    public static long f()
    {
        return 0x5265c00L * (System.currentTimeMillis() / 0x5265c00L);
    }

    public static long f(long l1)
    {
        return SystemClock.elapsedRealtime() - l1;
    }

    public static android.graphics.BitmapFactory.Options f(String s)
    {
        boolean flag;
        android.graphics.BitmapFactory.Options options;
        if(s != null && !s.equals(""))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try
        {
            Bitmap bitmap = BitmapFactory.decodeFile(s, options);
            if(bitmap != null)
                bitmap.recycle();
        }
        catch(OutOfMemoryError outofmemoryerror)
        {
            Log.a("MicroMsg.Util", (new StringBuilder()).append("decode bitmap failed: ").append(outofmemoryerror.getMessage()).toString());
        }
        return options;
    }

    public static int g(int i1)
    {
        return i1 + (40 + 52 * (1 + (i1 + -1) / 1462));
    }

    public static Intent g(String s)
    {
        boolean flag;
        Intent intent;
        if(s != null && !s.equals(""))
            flag = true;
        else
            flag = false;
        Assert.assertTrue(flag);
        intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(0x10000000);
        intent.setDataAndType(Uri.fromFile(new File(s)), "application/vnd.android.package-archive");
        return intent;
    }

    public static void g()
    {
        Log.b("MicroMsg.Util", (new StringBuilder()).append("memory usage: h=").append(b(Debug.getGlobalAllocSize())).append("|").append(b(Debug.getGlobalFreedSize())).append(", e=").append(b(Debug.getGlobalExternalAllocSize())).append("|").append(b(Debug.getGlobalExternalFreedSize())).append(", n=").append(b(Debug.getNativeHeapAllocatedSize())).append("|").append(b(Debug.getNativeHeapFreeSize())).append("|").append(b(Debug.getNativeHeapSize())).toString());
    }

    public static String h()
    {
        StackTraceElement astacktraceelement[] = (new Throwable()).getStackTrace();
        String s;
        if(astacktraceelement == null || astacktraceelement.length < 2)
        {
            s = "";
        } else
        {
            s = "";
            int i1 = 1;
            while(i1 < astacktraceelement.length && astacktraceelement[i1].getClassName().contains("com.tencent.mm")) 
            {
                s = (new StringBuilder()).append(s).append("[").append(astacktraceelement[i1].getClassName().substring("com.tencent.mm.".length())).append(":").append(astacktraceelement[i1].getMethodName()).append("]").toString();
                i1++;
            }
        }
        return s;
    }

    public static String h(String s)
    {
        if(s == null)
            s = "";
        return s;
    }

    public static boolean i()
    {
        boolean flag = false;
        if("mounted".equals(Environment.getExternalStorageState())) goto _L2; else goto _L1
_L1:
        return flag;
_L2:
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l1 = statfs.getBlockCount();
        long l2 = statfs.getAvailableBlocks();
        if(l1 > 0L && l1 - l2 >= 0L)
        {
            int i1 = (int)((100L * (l1 - l2)) / l1);
            long l3 = (long)statfs.getBlockSize() * (long)statfs.getFreeBlocks();
            Log.d("MicroMsg.Util", (new StringBuilder()).append("checkSDCardFull per:").append(i1).append(" blockCount:").append(l1).append(" availCount:").append(l2).append(" availSize:").append(l3).toString());
            if(95 <= i1 && l3 <= 0x3200000L)
                flag = true;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static boolean i(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public static int j(String s)
    {
        int i1 = 0;
        if(s != null) goto _L2; else goto _L1
_L1:
        return i1;
_L2:
        int j1 = Integer.parseInt(s);
        i1 = j1;
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static String j()
    {
        Enumeration enumeration = NetworkInterface.getNetworkInterfaces();
_L4:
        if(!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        Enumeration enumeration1 = ((NetworkInterface)enumeration.nextElement()).getInetAddresses();
_L6:
        if(!enumeration1.hasMoreElements()) goto _L4; else goto _L3
_L3:
        InetAddress inetaddress = (InetAddress)enumeration1.nextElement();
        if(inetaddress.isLoopbackAddress()) goto _L6; else goto _L5
_L5:
        String s1 = inetaddress.getHostAddress();
        String s = s1;
_L8:
        return s;
        Exception exception;
        exception;
_L2:
        s = null;
        if(true) goto _L8; else goto _L7
_L7:
        SocketException socketexception;
        socketexception;
          goto _L2
    }

    public static int k(String s)
    {
        int i1 = 0;
        if(s != null) goto _L2; else goto _L1
_L1:
        return i1;
_L2:
        long l1 = Long.decode(s).longValue();
        i1 = (int)(l1 & 0xffffffffL);
        continue; /* Loop/switch isn't completed */
        NumberFormatException numberformatexception;
        numberformatexception;
        if(true) goto _L1; else goto _L3
_L3:
    }

    public static Map l(String s)
    {
        Object obj;
        if(s == null || s.length() <= 0)
        {
            obj = null;
        } else
        {
            HashMap hashmap = new HashMap();
            String as[] = s.split("\n");
            int i1 = as.length;
            for(int j1 = 0; j1 < i1; j1++)
            {
                String s1 = as[j1];
                if(s1 == null || s1.length() <= 0)
                    continue;
                String as1[] = s1.trim().split("=", 2);
                if(as1 == null || as1.length < 2)
                    continue;
                String s2 = as1[0];
                String s3 = as1[1];
                if(s2 != null && s2.length() > 0 && s2.matches("^[a-zA-Z0-9_]*"))
                    hashmap.put(s2, s3);
            }

            java.util.Map.Entry entry;
            for(Iterator iterator = hashmap.entrySet().iterator(); iterator.hasNext(); Log.e("MicroMsg.Util", (new StringBuilder()).append("key=").append((String)entry.getKey()).append(" value=").append((String)entry.getValue()).toString()))
                entry = (java.util.Map.Entry)iterator.next();

            obj = hashmap;
        }
        return ((Map) (obj));
    }

    public static String m(String s)
    {
        if(s == null)
            s = "";
        String s1;
        if(s.length() <= 16)
            s1 = MD5.a(s.getBytes());
        else
            s1 = MD5.a(s.substring(0, 16).getBytes());
        return s1;
    }

    public static String n(String s)
    {
        return MD5.a(s.getBytes());
    }

    public static byte[] o(String s)
    {
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        byte abyte0[] = new byte[0];
_L5:
        return abyte0;
_L2:
        int i1;
        abyte0 = new byte[s.length() / 2];
        i1 = 0;
_L3:
        if(i1 >= abyte0.length)
            continue; /* Loop/switch isn't completed */
        abyte0[i1] = (byte)(0xff & Integer.parseInt(s.substring(i1 * 2, 2 + i1 * 2), 16));
        i1++;
          goto _L3
        NumberFormatException numberformatexception;
        numberformatexception;
        abyte0 = new byte[0];
        if(true) goto _L5; else goto _L4
_L4:
    }

    public static int[] p(String s)
    {
        int ai1[];
        if(s == null)
        {
            ai1 = null;
        } else
        {
            String as[] = s.split(":");
            ArrayList arraylist = new ArrayList();
            int i1 = as.length;
            int j1 = 0;
            while(j1 < i1) 
            {
                String s1 = as[j1];
                if(s1 != null && s1.length() > 0)
                    try
                    {
                        arraylist.add(Integer.valueOf(Integer.valueOf(s1).intValue()));
                    }
                    catch(Exception exception)
                    {
                        Log.a("MicroMsg.Util", "invalid port num, ignore");
                    }
                j1++;
            }
            int ai[] = new int[arraylist.size()];
            for(int k1 = 0; k1 < ai.length; k1++)
                ai[k1] = ((Integer)arraylist.get(k1)).intValue();

            ai1 = ai;
        }
        return ai1;
    }

    private static final long a[];
    private static final TimeZone b = TimeZone.getTimeZone("GMT");

    static 
    {
        long al[] = new long[4];
        al[0] = 300L;
        al[1] = 200L;
        al[2] = 300L;
        al[3] = 200L;
        a = al;
    }

    private class _cls1
        implements android.media.MediaPlayer.OnCompletionListener
    {

        public final void onCompletion(MediaPlayer mediaplayer)
        {
            mediaplayer.release();
        }

        _cls1()
        {
        }
    }

}
