// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   AppsCustomizePagedView.java

package com.android.launcher2;

import android.os.AsyncTask;
import android.os.Process;

// Referenced classes of package com.android.launcher2:
//            AsyncTaskPageData, AsyncTaskCallback

class AppsCustomizeAsyncTask extends AsyncTask
{

    AppsCustomizeAsyncTask(int p, AsyncTaskPageData.Type ty)
    {
        page = p;
        threadPriority = 0;
        dataType = ty;
    }

    protected transient AsyncTaskPageData doInBackground(AsyncTaskPageData params[])
    {
        if(params.length != 1)
        {
            return null;
        } else
        {
            params[0].doInBackgroundCallback.run(this, params[0]);
            return params[0];
        }
    }

    protected void onPostExecute(AsyncTaskPageData result)
    {
        result.postExecuteCallback.run(this, result);
    }

    void setThreadPriority(int p)
    {
        threadPriority = p;
    }

    void syncThreadPriority()
    {
        Process.setThreadPriority(threadPriority);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((AsyncTaskPageData)obj);
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((AsyncTaskPageData[])aobj);
    }

    AsyncTaskPageData.Type dataType;
    int page;
    int threadPriority;
}
