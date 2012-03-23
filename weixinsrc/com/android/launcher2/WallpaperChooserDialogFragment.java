// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   WallpaperChooserDialogFragment.java

package com.android.launcher2;

import android.app.*;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.*;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.*;
import android.widget.*;
import java.io.IOException;
import java.util.ArrayList;

public class WallpaperChooserDialogFragment extends DialogFragment
    implements android.widget.AdapterView.OnItemSelectedListener, android.widget.AdapterView.OnItemClickListener
{
    private class ImageAdapter extends BaseAdapter
        implements ListAdapter, SpinnerAdapter
    {

        public int getCount()
        {
            return mThumbs.size();
        }

        public Object getItem(int position)
        {
            return Integer.valueOf(position);
        }

        public long getItemId(int position)
        {
            return (long)position;
        }

        public View getView(int position, View convertView, ViewGroup parent)
        {
            View view;
            if(convertView == null)
                view = mLayoutInflater.inflate(0x7f030016, parent, false);
            else
                view = convertView;
            ImageView image = (ImageView)view.findViewById(0x7f060036);
            int thumbRes = ((Integer)mThumbs.get(position)).intValue();
            image.setImageResource(thumbRes);
            Drawable thumbDrawable = image.getDrawable();
            if(thumbDrawable != null)
                thumbDrawable.setDither(true);
            else
                Log.e("Launcher.WallpaperChooserDialogFragment", (new StringBuilder("Error decoding thumbnail resId=")).append(thumbRes).append(" for wallpaper #").append(position).toString());
            return view;
        }

        private LayoutInflater mLayoutInflater;
        final WallpaperChooserDialogFragment this$0;

        ImageAdapter(Activity activity)
        {
            this$0 = WallpaperChooserDialogFragment.this;
            super();
            mLayoutInflater = activity.getLayoutInflater();
        }
    }

    static class WallpaperDrawable extends Drawable
    {

        void setBitmap(Bitmap bitmap)
        {
            mBitmap = bitmap;
            if(mBitmap == null)
            {
                return;
            } else
            {
                mIntrinsicWidth = mBitmap.getWidth();
                mIntrinsicHeight = mBitmap.getHeight();
                return;
            }
        }

        public void draw(Canvas canvas)
        {
            if(mBitmap == null)
            {
                return;
            } else
            {
                int width = canvas.getWidth();
                int height = canvas.getHeight();
                int x = (width - mIntrinsicWidth) / 2;
                int y = (height - mIntrinsicHeight) / 2;
                canvas.drawBitmap(mBitmap, x, y, null);
                return;
            }
        }

        public int getOpacity()
        {
            return -1;
        }

        public void setAlpha(int i)
        {
        }

        public void setColorFilter(ColorFilter colorfilter)
        {
        }

        Bitmap mBitmap;
        int mIntrinsicWidth;
        int mIntrinsicHeight;

        WallpaperDrawable()
        {
        }
    }

    class WallpaperLoader extends AsyncTask
    {

        protected transient Bitmap doInBackground(Integer params[])
        {
            if(isCancelled())
                return null;
            try
            {
                return BitmapFactory.decodeResource(getResources(), ((Integer)mImages.get(params[0].intValue())).intValue(), mOptions);
            }
            catch(OutOfMemoryError e)
            {
                return null;
            }
        }

        protected void onPostExecute(Bitmap b)
        {
            if(b == null)
                return;
            if(!isCancelled() && !mOptions.mCancel)
            {
                if(mBitmap != null)
                    mBitmap.recycle();
                View v = getView();
                if(v != null)
                {
                    mBitmap = b;
                    mWallpaperDrawable.setBitmap(b);
                    v.postInvalidate();
                } else
                {
                    mBitmap = null;
                    mWallpaperDrawable.setBitmap(null);
                }
                mLoader = null;
            } else
            {
                b.recycle();
            }
        }

        void cancel()
        {
            mOptions.requestCancelDecode();
            super.cancel(true);
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((Integer[])aobj);
        }

        android.graphics.BitmapFactory.Options mOptions;
        final WallpaperChooserDialogFragment this$0;

        WallpaperLoader()
        {
            this$0 = WallpaperChooserDialogFragment.this;
            super();
            mOptions = new android.graphics.BitmapFactory.Options();
            mOptions.inDither = false;
            mOptions.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
        }
    }


    public WallpaperChooserDialogFragment()
    {
        mBitmap = null;
        mWallpaperDrawable = new WallpaperDrawable();
    }

    public static WallpaperChooserDialogFragment newInstance()
    {
        WallpaperChooserDialogFragment fragment = new WallpaperChooserDialogFragment();
        fragment.setCancelable(true);
        return fragment;
    }

    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        if(savedInstanceState != null && savedInstanceState.containsKey("com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY"))
            mEmbedded = savedInstanceState.getBoolean("com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY");
        else
            mEmbedded = isInLayout();
    }

    public void onSaveInstanceState(Bundle outState)
    {
        outState.putBoolean("com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY", mEmbedded);
    }

    public void onDestroy()
    {
        super.onDestroy();
        if(mLoader != null && mLoader.getStatus() != android.os.AsyncTask.Status.FINISHED)
        {
            mLoader.cancel(true);
            mLoader = null;
        }
    }

    public void onDismiss(DialogInterface dialog)
    {
        super.onDismiss(dialog);
        Activity activity = getActivity();
        if(activity != null)
            activity.finish();
    }

    public Dialog onCreateDialog(Bundle savedInstanceState)
    {
        findWallpapers();
        return null;
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        findWallpapers();
        if(mEmbedded)
        {
            View view = inflater.inflate(0x7f030014, container, false);
            view.setBackgroundDrawable(mWallpaperDrawable);
            final Gallery gallery = (Gallery)view.findViewById(0x7f060033);
            gallery.setCallbackDuringFling(false);
            gallery.setOnItemSelectedListener(this);
            gallery.setAdapter(new ImageAdapter(getActivity()));
            View setButton = view.findViewById(0x7f060034);
            setButton.setOnClickListener(new android.view.View.OnClickListener() {

                public void onClick(View v)
                {
                    selectWallpaper(gallery.getSelectedItemPosition());
                }

                final WallpaperChooserDialogFragment this$0;
                private final Gallery val$gallery;

            
            {
                this$0 = WallpaperChooserDialogFragment.this;
                gallery = gallery1;
                super();
            }
            }
);
            return view;
        } else
        {
            return null;
        }
    }

    private void selectWallpaper(int position)
    {
        try
        {
            WallpaperManager wpm = (WallpaperManager)getActivity().getSystemService("wallpaper");
            wpm.setResource(((Integer)mImages.get(position)).intValue());
            Activity activity = getActivity();
            activity.setResult(-1);
            activity.finish();
        }
        catch(IOException e)
        {
            Log.e("Launcher.WallpaperChooserDialogFragment", (new StringBuilder("Failed to set wallpaper: ")).append(e).toString());
        }
    }

    public void onItemClick(AdapterView parent, View view, int position, long id)
    {
        selectWallpaper(position);
    }

    public void onItemSelected(AdapterView parent, View view, int position, long id)
    {
        if(mLoader != null && mLoader.getStatus() != android.os.AsyncTask.Status.FINISHED)
            mLoader.cancel();
        mLoader = (WallpaperLoader)(new WallpaperLoader()).execute(new Integer[] {
            Integer.valueOf(position)
        });
    }

    public void onNothingSelected(AdapterView adapterview)
    {
    }

    private void findWallpapers()
    {
        mThumbs = new ArrayList(24);
        mImages = new ArrayList(24);
        Resources resources = getResources();
        String packageName = resources.getResourcePackageName(0x7f0b0001);
        addWallpapers(resources, packageName, 0x7f0b0001);
        addWallpapers(resources, packageName, 0x7f0b0000);
    }

    private void addWallpapers(Resources resources, String packageName, int list)
    {
        String extras[] = resources.getStringArray(list);
        String as[];
        int j = (as = extras).length;
        for(int i = 0; i < j; i++)
        {
            String extra = as[i];
            int res = resources.getIdentifier(extra, "drawable", packageName);
            if(res != 0)
            {
                int thumbRes = resources.getIdentifier((new StringBuilder(String.valueOf(extra))).append("_small").toString(), "drawable", packageName);
                if(thumbRes != 0)
                {
                    mThumbs.add(Integer.valueOf(thumbRes));
                    mImages.add(Integer.valueOf(res));
                }
            }
        }

    }

    private static final String TAG = "Launcher.WallpaperChooserDialogFragment";
    private static final String EMBEDDED_KEY = "com.android.launcher2.WallpaperChooserDialogFragment.EMBEDDED_KEY";
    private boolean mEmbedded;
    private Bitmap mBitmap;
    private ArrayList mThumbs;
    private ArrayList mImages;
    private WallpaperLoader mLoader;
    private WallpaperDrawable mWallpaperDrawable;







}
