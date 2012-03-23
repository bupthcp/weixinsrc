// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.app.*;
import android.content.Context;
import android.view.*;
import android.widget.LinearLayout;
import android.widget.ListView;

// Referenced classes of package com.tencent.mm.ui:
//            AlertAdapter, MMAppMgr

public final class MMAlert
{

    private MMAlert()
    {
    }

    public static AlertDialog a(Context context, int i, int j)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(j);
            builder.setMessage(i);
            builder.setPositiveButton(0x7f0a0016, new _cls2());
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, int i, int j, int k, int l, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnClickListener onclicklistener1)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(j);
            builder.setMessage(i);
            builder.setPositiveButton(k, onclicklistener);
            builder.setNegativeButton(l, onclicklistener1);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, int i, int j, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(j);
            builder.setMessage(i);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, int i, int j, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnClickListener onclicklistener1)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(j);
            builder.setMessage(i);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            builder.setNegativeButton(0x7f0a0015, onclicklistener1);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, View view, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setTitle(s);
            builder.setView(view);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, View view, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnClickListener onclicklistener1)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setTitle(s);
            builder.setMessage(null);
            builder.setView(view);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            builder.setNegativeButton(0x7f0a0015, onclicklistener1);
            builder.setOnCancelListener(new _cls3(onclicklistener1));
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, View view, String s1, String s2, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setTitle(s);
            builder.setView(view);
            builder.setPositiveButton(s1, onclicklistener);
            builder.setNegativeButton(s2, null);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, String s1)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(s1);
            builder.setMessage(s);
            builder.setPositiveButton(0x7f0a0016, new _cls1());
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, String s1, android.content.DialogInterface.OnClickListener onclicklistener)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(s1);
            builder.setMessage(s);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static AlertDialog a(Context context, String s, String s1, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnClickListener onclicklistener1)
    {
        AlertDialog alertdialog;
        if((context instanceof Activity) && ((Activity)context).isFinishing())
        {
            alertdialog = null;
        } else
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
            builder.setIcon(0x7f020129);
            builder.setTitle(s1);
            builder.setMessage(s);
            builder.setPositiveButton(0x7f0a0016, onclicklistener);
            builder.setNegativeButton(0x7f0a0015, onclicklistener1);
            alertdialog = builder.create();
            alertdialog.show();
        }
        return alertdialog;
    }

    public static Dialog a(Context context, String s, String as[], String s1, OnAlertSelectId onalertselectid)
    {
        return a(context, s, as, s1, onalertselectid, ((android.content.DialogInterface.OnCancelListener) (null)));
    }

    public static Dialog a(Context context, String s, String as[], String s1, OnAlertSelectId onalertselectid, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        String s2 = context.getString(0x7f0a0015);
        Dialog dialog = new Dialog(context, 0x7f0b0048);
        LinearLayout linearlayout = (LinearLayout)((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030010, null);
        linearlayout.setMinimumWidth(10000);
        ListView listview = (ListView)linearlayout.findViewById(0x7f07003a);
        listview.setAdapter(new AlertAdapter(context, s, as, s1, s2));
        listview.setDividerHeight(0);
        listview.setOnItemClickListener(new _cls9(s, onalertselectid, dialog, listview));
        android.view.WindowManager.LayoutParams layoutparams = dialog.getWindow().getAttributes();
        layoutparams.x = 0;
        layoutparams.y = -1000;
        layoutparams.gravity = 80;
        dialog.onWindowAttributesChanged(layoutparams);
        dialog.setCanceledOnTouchOutside(true);
        if(oncancellistener != null)
            dialog.setOnCancelListener(oncancellistener);
        dialog.setContentView(linearlayout);
        dialog.show();
        return dialog;
    }

    public static ProgressDialog a(Context context, String s, String s1, boolean flag, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        MMAppMgr.a(true);
        return ProgressDialog.show(context, s, s1, flag, true, new _cls4(oncancellistener));
    }

    private class _cls2
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
        }

        _cls2()
        {
        }
    }


    private class _cls3
        implements android.content.DialogInterface.OnCancelListener
    {

        public final void onCancel(DialogInterface dialoginterface)
        {
            if(a != null)
                a.onClick(dialoginterface, 0);
        }

        private android.content.DialogInterface.OnClickListener a;

        _cls3(android.content.DialogInterface.OnClickListener onclicklistener)
        {
            a = onclicklistener;
            super();
        }
    }


    private class _cls1
        implements android.content.DialogInterface.OnClickListener
    {

        public final void onClick(DialogInterface dialoginterface, int i)
        {
            dialoginterface.cancel();
        }

        _cls1()
        {
        }
    }


    private class _cls9
        implements android.widget.AdapterView.OnItemClickListener
    {

        public final void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            if(a != null && !a.equals("") && i + -1 >= 0)
            {
                b.a(i + -1);
                c.dismiss();
                d.requestFocus();
            } else
            {
                b.a(i);
                c.dismiss();
                d.requestFocus();
            }
        }

        private String a;
        private OnAlertSelectId b;
        private Dialog c;
        private ListView d;

        _cls9(String s, OnAlertSelectId onalertselectid, Dialog dialog, ListView listview)
        {
            a = s;
            b = onalertselectid;
            c = dialog;
            d = listview;
            super();
        }

        private class OnAlertSelectId
        {

            public abstract void a(int i);
        }

    }


    private class _cls4
        implements android.content.DialogInterface.OnCancelListener
    {

        public final void onCancel(DialogInterface dialoginterface)
        {
            if(a != null)
                a.onCancel(dialoginterface);
            MMAppMgr.a(false);
        }

        private android.content.DialogInterface.OnCancelListener a;

        _cls4(android.content.DialogInterface.OnCancelListener oncancellistener)
        {
            a = oncancellistener;
            super();
        }
    }

}
