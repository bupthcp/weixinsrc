// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppsCustomizePagedView.java

package com.android.launcher2;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.android.launcher2:
//            AsyncTaskCallback

class AsyncTaskPageData
{
    static final class Type extends Enum
    {

        public static Type[] values()
        {
            Type atype[];
            int i;
            Type atype1[];
            System.arraycopy(atype = ENUM$VALUES, 0, atype1 = new Type[i = atype.length], 0, i);
            return atype1;
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/android/launcher2/AsyncTaskPageData$Type, s);
        }

        public static final Type LoadWidgetPreviewData;
        public static final Type LoadHolographicIconsData;
        private static final Type ENUM$VALUES[];

        static 
        {
            LoadWidgetPreviewData = new Type("LoadWidgetPreviewData", 0);
            LoadHolographicIconsData = new Type("LoadHolographicIconsData", 1);
            ENUM$VALUES = (new Type[] {
                LoadWidgetPreviewData, LoadHolographicIconsData
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    AsyncTaskPageData(int p, ArrayList l, ArrayList si, AsyncTaskCallback bgR, AsyncTaskCallback postR)
    {
        page = p;
        items = l;
        sourceImages = si;
        generatedImages = new ArrayList();
        cellWidth = cellHeight = -1;
        doInBackgroundCallback = bgR;
        postExecuteCallback = postR;
    }

    AsyncTaskPageData(int p, ArrayList l, int cw, int ch, int ccx, AsyncTaskCallback bgR, AsyncTaskCallback postR)
    {
        page = p;
        items = l;
        generatedImages = new ArrayList();
        cellWidth = cw;
        cellHeight = ch;
        cellCountX = ccx;
        doInBackgroundCallback = bgR;
        postExecuteCallback = postR;
    }

    void cleanup(boolean cancelled)
    {
        if(sourceImages != null)
        {
            if(cancelled)
            {
                Bitmap b;
                for(Iterator iterator = sourceImages.iterator(); iterator.hasNext(); b.recycle())
                    b = (Bitmap)iterator.next();

            }
            sourceImages.clear();
        }
        if(generatedImages != null)
        {
            if(cancelled)
            {
                Bitmap b;
                for(Iterator iterator1 = generatedImages.iterator(); iterator1.hasNext(); b.recycle())
                    b = (Bitmap)iterator1.next();

            }
            generatedImages.clear();
        }
    }

    int page;
    ArrayList items;
    ArrayList sourceImages;
    ArrayList generatedImages;
    int cellWidth;
    int cellHeight;
    int cellCountX;
    AsyncTaskCallback doInBackgroundCallback;
    AsyncTaskCallback postExecuteCallback;
}
