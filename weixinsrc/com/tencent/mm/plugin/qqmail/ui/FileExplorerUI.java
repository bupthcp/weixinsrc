// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.qqmail.ui;

import android.os.Bundle;
import android.os.Environment;
import android.widget.*;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.ui.MMActivity;
import java.io.File;

public class FileExplorerUI extends MMActivity
{

    public FileExplorerUI()
    {
    }

    static FileListAdapter a(FileExplorerUI fileexplorerui)
    {
        return fileexplorerui.c;
    }

    static ListView b(FileExplorerUI fileexplorerui)
    {
        return fileexplorerui.b;
    }

    protected final int a()
    {
        return 0x7f030062;
    }

    public void onCreate(Bundle bundle)
    {
        boolean flag;
        RadioButton radiobutton;
        File file;
        flag = true;
        super.onCreate(bundle);
        d(0x7f0a0460);
        b = (ListView)findViewById(0x7f070147);
        a = (RadioGroup)findViewById(0x7f070148);
        radiobutton = (RadioButton)findViewById(0x7f07014a);
        RadioButton radiobutton1 = (RadioButton)findViewById(0x7f070149);
        b(new _cls1());
        d = getString(0x7f0a0470);
        e = getString(0x7f0a046f);
        file = Environment.getRootDirectory();
        File file1;
        if(!file.canRead())
        {
            file = Environment.getDataDirectory();
            if(file.canRead())
                d = file.getName();
            else
                file = null;
        }
        if(MMCore.f().c())
        {
            file1 = Environment.getExternalStorageDirectory();
        } else
        {
            file1 = Environment.getDownloadCacheDirectory();
            if(file1.canRead())
                e = file1.getName();
            else
                file1 = null;
        }
        c = new FileListAdapter();
        if(file1 == null) goto _L2; else goto _L1
_L1:
        a.check(0x7f070149);
        c.a(file1.getPath());
        c.a(null, file1);
        radiobutton1.setText(e);
_L5:
        boolean flag1;
        if(file != null)
            flag1 = flag;
        else
            flag1 = false;
        radiobutton.setEnabled(flag1);
        if(file1 == null)
            flag = false;
        radiobutton1.setEnabled(flag);
        b.setAdapter(c);
        c.notifyDataSetChanged();
        b.setOnItemClickListener(new _cls2());
        a.setOnCheckedChangeListener(new _cls3(file, file1));
_L4:
        return;
_L2:
        if(file == null) goto _L4; else goto _L3
_L3:
        a.check(0x7f07014a);
        c.a(file.getPath());
        c.a(null, file);
        radiobutton.setText(d);
          goto _L5
    }

    public void onDestroy()
    {
        super.onDestroy();
    }

    protected void onPause()
    {
        super.onPause();
    }

    protected void onResume()
    {
        super.onResume();
    }

    private RadioGroup a;
    private ListView b;
    private FileListAdapter c;
    private String d;
    private String e;

    private class _cls1
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private FileExplorerUI a;

        _cls1()
        {
            a = FileExplorerUI.this;
            super();
        }
    }


    private class FileListAdapter extends BaseAdapter
    {

        static File a(FileListAdapter filelistadapter)
        {
            return filelistadapter.b;
        }

        static File b(FileListAdapter filelistadapter)
        {
            return filelistadapter.c;
        }

        public final void a(File file, File file1)
        {
            int i = 0;
            b = file;
            if(file1.getAbsolutePath().equalsIgnoreCase(a))
                b = null;
            c = file1;
            if(c.canRead())
            {
                class _cls1
                    implements FileFilter
                {

                    public boolean accept(File file3)
                    {
                        boolean flag;
                        if(file3.isHidden())
                            flag = false;
                        else
                            flag = true;
                        return flag;
                    }

                    private FileListAdapter a;

                _cls1()
                {
                    a = FileListAdapter.this;
                    super();
                }
                }

                d = c.listFiles(new _cls1());
                if(d.length > 0)
                {
                    File afile[] = d;
                    if(afile != null && afile.length != 0)
                    {
                        int j = -1 + afile.length;
                        while(i < afile.length && j >= 0) 
                        {
                            for(; i < afile.length && !afile[i].isFile(); i++);
                            for(; j >= 0 && !afile[j].isDirectory(); j--);
                            if(i < j)
                            {
                                File file2 = afile[i];
                                afile[i] = afile[j];
                                afile[j] = file2;
                            }
                            i++;
                            j--;
                        }
                    }
                }
            } else
            {
                d = new File[i];
            }
        }

        public final void a(String s)
        {
            a = s;
        }

        public int getCount()
        {
            int i = 0;
            if(d != null)
            {
                int j = d.length;
                if(b != null)
                    i = 1;
                i += j;
            }
            return i;
        }

        public Object getItem(int i)
        {
            File file;
            if(b != null && i == 0)
            {
                file = b;
            } else
            {
                (new StringBuilder()).append("pos:").append(i).append(", subFile length:").append(d.length).toString();
                File afile[] = d;
                if(b != null)
                    i--;
                file = afile[i];
            }
            return file;
        }

        public long getItemId(int i)
        {
            return 0L;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            ViewHolder viewholder;
            File file;
            if(view == null)
            {
                view = View.inflate(e, 0x7f030063, null);
                ViewHolder viewholder1 = e. new ViewHolder();
                viewholder1.a = (ImageView)view.findViewById(0x7f07014b);
                viewholder1.b = (TextView)view.findViewById(0x7f07014c);
                viewholder1.c = (TextView)view.findViewById(0x7f07014d);
                view.setTag(viewholder1);
            }
            viewholder = (ViewHolder)view.getTag();
            file = (File)getItem(i);
            if(file != b) goto _L2; else goto _L1
_L1:
            viewholder.b.setText(file.getName());
            viewholder.a.setImageResource(0x7f020111);
            viewholder.c.setVisibility(0);
_L5:
            return view;
_L2:
            ImageView imageview = viewholder.a;
            if(!file.isDirectory()) goto _L4; else goto _L3
_L3:
            int j = 0x7f020114;
_L6:
            imageview.setImageResource(j);
            viewholder.b.setText(file.getName());
            TextView textview = viewholder.c;
            StringBuilder stringbuilder = (new StringBuilder()).append(DateFormat.format("yyyy-MM-dd-hh-mm-ss", file.lastModified()).toString());
            String s;
            String s1;
            if(file.isDirectory())
                s1 = "";
            else
                s1 = (new StringBuilder()).append("  ").append(Util.b(file.length())).toString();
            textview.setText(stringbuilder.append(s1).toString());
            if(true) goto _L5; else goto _L4
_L4:
            s = file.getName();
            if(MailAttachListLinearLayout.b(s))
                j = 0x7f020112;
            else
            if(MailAttachListLinearLayout.a(s))
                j = 0x7f020115;
            else
                j = 0x7f020113;
              goto _L6
        }

        private String a;
        private File b;
        private File c;
        private File d[];
        private FileExplorerUI e;

        FileListAdapter()
        {
            this((byte)0);
        }

        private FileListAdapter(byte byte0)
        {
            e = FileExplorerUI.this;
            super();
        }

        private class ViewHolder
        {

            ImageView a;
            TextView b;
            TextView c;
            private FileExplorerUI d;

            ViewHolder()
            {
                this((byte)0);
            }

            private ViewHolder(byte byte0)
            {
                d = FileExplorerUI.this;
                super();
            }
        }

    }


    private class _cls2
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            File file = (File)FileExplorerUI.a(a).getItem(i);
            if(file != FileListAdapter.a(FileExplorerUI.a(a))) goto _L2; else goto _L1
_L1:
            FileExplorerUI.a(a).a(FileListAdapter.a(FileExplorerUI.a(a)).getParentFile(), FileListAdapter.a(FileExplorerUI.a(a)));
_L4:
            FileExplorerUI.a(a).notifyDataSetChanged();
            FileExplorerUI.b(a).setSelection(0);
            return;
_L2:
            if(file.isDirectory())
                FileExplorerUI.a(a).a(FileListAdapter.b(FileExplorerUI.a(a)), file);
            else
            if(file.isFile())
            {
                a.setResult(-1, (new Intent()).putExtra("choosed_file_path", file.getAbsolutePath()));
                a.finish();
            }
            if(true) goto _L4; else goto _L3
_L3:
        }

        private FileExplorerUI a;

        _cls2()
        {
            a = FileExplorerUI.this;
            super();
        }
    }


    private class _cls3
        implements android.widget.RadioGroup.OnCheckedChangeListener
    {

        public void onCheckedChanged(RadioGroup radiogroup, int i)
        {
            i;
            JVM INSTR tableswitch 2131165513 2131165514: default 24
        //                       2131165513 91
        //                       2131165514 56;
               goto _L1 _L2 _L3
_L1:
            FileExplorerUI.a(c).notifyDataSetInvalidated();
            FileExplorerUI.a(c).notifyDataSetChanged();
            FileExplorerUI.b(c).setSelection(0);
            return;
_L3:
            FileExplorerUI.a(c).a(a.getPath());
            FileExplorerUI.a(c).a(null, a);
            continue; /* Loop/switch isn't completed */
_L2:
            FileExplorerUI.a(c).a(b.getPath());
            FileExplorerUI.a(c).a(null, b);
            if(true) goto _L1; else goto _L4
_L4:
        }

        private File a;
        private File b;
        private FileExplorerUI c;

        _cls3(File file, File file1)
        {
            c = FileExplorerUI.this;
            a = file;
            b = file1;
            super();
        }
    }

}
