// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.ui;

import android.app.*;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.*;
import com.tencent.mm.algorithm.FileOperation;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelbase.*;
import com.tencent.mm.platformtools.*;
import com.tencent.mm.plugin.album.model.NetSceneDownloadAlbumPhoto;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.MMPullDownView;
import com.tencent.mm.ui.tools.CropImageUI;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.tencent.mm.plugin.album.ui:
//            IAlbumEvent, AlbumphotoAdapter

public class AlbumphotoUI extends MMActivity
    implements IOnSceneEnd, IOnSceneProgressEnd, IAlbumEvent
{

    public AlbumphotoUI()
    {
        f = null;
        i = "";
        j = new ArrayList();
        l = false;
        m = null;
        t = new _cls1();
    }

    static Dialog a(AlbumphotoUI albumphotoui, Dialog dialog)
    {
        albumphotoui.m = dialog;
        return dialog;
    }

    static ProgressDialog a(AlbumphotoUI albumphotoui, ProgressDialog progressdialog)
    {
        albumphotoui.f = progressdialog;
        return progressdialog;
    }

    static ImageView a(AlbumphotoUI albumphotoui, ImageView imageview)
    {
        albumphotoui.n = imageview;
        return imageview;
    }

    static NetSceneDownloadAlbumPhoto a(AlbumphotoUI albumphotoui, NetSceneDownloadAlbumPhoto netscenedownloadalbumphoto)
    {
        albumphotoui.k = netscenedownloadalbumphoto;
        return netscenedownloadalbumphoto;
    }

    static boolean a(AlbumphotoUI albumphotoui)
    {
        boolean flag = true;
        if(!MMCore.f().c())
        {
            com.tencent.mm.ui.MMToast.ToastSdcard.a(albumphotoui, flag);
            flag = false;
        } else
        {
            if(albumphotoui.e == null)
                albumphotoui.e = (new android.app.AlertDialog.Builder(albumphotoui.c())).setTitle(0x7f0a01c5).setItems(0x7f060000, albumphotoui. new _cls10()).setNegativeButton(0x7f0a0015, albumphotoui. new _cls9()).create();
            albumphotoui.e.show();
        }
        return flag;
    }

    static LinearLayout b(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.q;
    }

    private void b()
    {
        if(j.size() <= 0) goto _L2; else goto _L1
_L1:
        l = true;
        i = (String)j.remove(0);
        Log.d("MicroMsg.PhotoAlbumUI", (new StringBuilder()).append("downloading pcId : ").append(i).toString());
        t.post(new _cls13());
_L4:
        return;
_L2:
        if(!l)
            k = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    static LinearLayout c(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.r;
    }

    static AlbumphotoAdapter d(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.b;
    }

    static int e(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.o;
    }

    static String f(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.d;
    }

    static Dialog g(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.m;
    }

    static ImageView h(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.n;
    }

    static List i(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.j;
    }

    static boolean j(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.l;
    }

    static String k(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.i;
    }

    static NetSceneDownloadAlbumPhoto l(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.k;
    }

    static AlertDialog m(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.e;
    }

    static String n(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.g;
    }

    static ProgressDialog o(AlbumphotoUI albumphotoui)
    {
        return albumphotoui.f;
    }

    protected final int a()
    {
        return 0x7f03000c;
    }

    public final void a(int i1, int j1, NetSceneBase netscenebase)
    {
        if(netscenebase.b() == 79)
        {
            int k1;
            if(j1 != 0)
                k1 = (i1 * 100) / j1;
            else
                k1 = 0;
            Log.d("MicroMsg.PhotoAlbumUI", (new StringBuilder()).append("onSceneProgressEnd ").append(k1).append(" offset:").append(i1).append(" totalLen: ").append(j1).toString());
            (new Handler()).post(new _cls12(k1));
        }
    }

    public final void a(int i1, int j1, String s1, NetSceneBase netscenebase)
    {
        Log.c("MicroMsg.PhotoAlbumUI", (new StringBuilder()).append("onSceneEnd: errType = ").append(i1).append(" errCode = ").append(j1).append(" errMsg = ").append(s1).append(" type = ").append(netscenebase.b()).append(" @").append(hashCode()).toString());
        if(f != null)
        {
            f.dismiss();
            f = null;
        }
        if(netscenebase.b() == 80)
        {
            if(l)
            {
                l = false;
                i = "";
            }
            b();
        }
        if(netscenebase.b() == 86 || netscenebase.b() == 87)
        {
            q.setVisibility(8);
            r.setVisibility(0);
        }
        if(i1 == 0 && j1 == 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        netscenebase.b();
        JVM INSTR tableswitch 76 87: default 232
    //                   76 235
    //                   77 284
    //                   78 305
    //                   79 294
    //                   80 242
    //                   81 232
    //                   82 232
    //                   83 264
    //                   84 232
    //                   85 232
    //                   86 254
    //                   87 274;
           goto _L1 _L3 _L4 _L5 _L6 _L7 _L1 _L1 _L8 _L1 _L1 _L9 _L10
_L3:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter notifyDataSetChanged");
_L7:
        b.a_("");
          goto _L1
_L9:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter notifyDataSetChanged");
          goto _L7
_L8:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter notifyDataSetChanged");
          goto _L7
_L10:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter notifyDataSetChanged");
          goto _L7
_L4:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter notifyDataSetChanged");
          goto _L7
_L6:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter upload ok and notifyDataSetChanged");
          goto _L7
_L5:
        Log.d("MicroMsg.PhotoAlbumUI", "albumAdapter batchget attr ok and notifyDataSetChanged");
        b.a_("");
          goto _L7
    }

    /**
     * @deprecated Method a is deprecated
     */

    public final void a(String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if(s1 == null) goto _L2; else goto _L1
_L1:
        boolean flag = s1.equals("");
        if(!flag) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        if(!j.contains(s1) && s1 != i)
            j.add(0, s1);
        if(!l)
            b();
        if(true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    protected void onActivityResult(int i1, int j1, Intent intent)
    {
        Log.c("MicroMsg.PhotoAlbumUI", (new StringBuilder()).append("onAcvityResult requestCode:").append(i1).toString());
        if(j1 == -1) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i1)
        {
        case 4: // '\004'
        default:
            Log.a("MicroMsg.PhotoAlbumUI", "onActivityResult: not found this requestCode");
            break;

        case 2: // '\002'
            if(intent != null)
            {
                g = Util.a(this, intent, MMCore.f().M());
                Intent intent2 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent2.putExtra("CropImage_bCrop", false);
                intent2.putExtra("CropImage_bPrev", true);
                intent2.putExtra("CropImage_ImgPath", g);
                startActivityForResult(intent2, 5);
            }
            break;

        case 3: // '\003'
            g = CameraUtil.a(getApplicationContext(), intent, MMCore.f().M());
            if(g != null)
            {
                Intent intent1 = new Intent(this, com/tencent/mm/ui/tools/CropImageUI);
                intent1.putExtra("CropImage_bCrop", false);
                intent1.putExtra("CropImage_bPrev", true);
                intent1.putExtra("CropImage_ImgPath", g);
                startActivityForResult(intent1, 5);
            }
            break;

        case 5: // '\005'
            g = intent.getStringExtra("CropImage_ImgPath");
            if(g != null)
                if(g == null || g.equals("") || !FileOperation.c(g))
                    Log.d("MicroMsg.PhotoAlbumUI", " doSendImage : filePath is null or empty");
                else
                    t.post(new _cls11());
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        d = getIntent().getStringExtra("album_userName");
        int i1;
        if(d == null || d.equals(""))
            o = 1;
        else
            o = 2;
        if(o == 2)
        {
            MMCore.g().a(76, this);
            MMCore.g().a(86, this);
        } else
        {
            MMCore.g().a(83, this);
            MMCore.g().a(87, this);
        }
        MMCore.g().a(79, this);
        MMCore.g().a(80, this);
        d(0x7f0a0475);
        a = (ListView)findViewById(0x7f07002a);
        c = (ImageButton)findViewById(0x7f07002b);
        i1 = o;
        if(i1 == 2)
            t.post(new _cls7());
        else
        if(i1 == 1)
            t.post(new _cls8());
        if(o == 2)
            b = new AlbumphotoAdapter(this, this, d);
        else
            b = new AlbumphotoAdapter(this, this);
        h = (MMPullDownView)findViewById(0x7f07001b);
        h.a(a);
        h.a(new _cls2());
        p = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000b, null);
        q = (LinearLayout)p.findViewById(0x7f070025);
        r = (LinearLayout)p.findViewById(0x7f070027);
        s = (Button)p.findViewById(0x7f070028);
        c.setOnClickListener(new _cls3());
        s.setOnClickListener(new _cls4());
        a.addFooterView(p);
        q.setVisibility(8);
        r.setVisibility(0);
        a.setAdapter(b);
        b.notifyDataSetChanged();
        a.setOnItemClickListener(new _cls5());
        b(new _cls6());
    }

    public void onDestroy()
    {
        super.onDestroy();
        b.n();
        j.clear();
        if(o == 2)
        {
            MMCore.g().b(76, this);
            MMCore.g().b(86, this);
        } else
        {
            MMCore.g().b(83, this);
            MMCore.g().b(87, this);
        }
        MMCore.g().b(79, this);
        MMCore.g().b(80, this);
        if(f != null)
        {
            f.dismiss();
            f = null;
        }
    }

    private ListView a;
    private AlbumphotoAdapter b;
    private ImageButton c;
    private String d;
    private AlertDialog e;
    private ProgressDialog f;
    private String g;
    private MMPullDownView h;
    private String i;
    private List j;
    private NetSceneDownloadAlbumPhoto k;
    private boolean l;
    private Dialog m;
    private ImageView n;
    private int o;
    private View p;
    private LinearLayout q;
    private LinearLayout r;
    private Button s;
    private Handler t;

    private class _cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
        }

        private AlbumphotoUI a;

        _cls1()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls10
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
            if(i1 != 0) goto _L2; else goto _L1
_L1:
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.setType("image/*");
            a.startActivityForResult(Intent.createChooser(intent, null), 2);
_L6:
            AlbumphotoUI.m(a).dismiss();
_L4:
            return;
_L2:
            if(i1 != 1) goto _L4; else goto _L3
_L3:
            if(!CameraUtil.a(a, ConstantsStorage.c, (new StringBuilder()).append("microMsg.").append(System.currentTimeMillis()).append(".jpg").toString(), 3))
                Toast.makeText(a, a.getString(0x7f0a00c5), 1).show();
            if(true) goto _L6; else goto _L5
_L5:
        }

        private AlbumphotoUI a;

        _cls10()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls9
        implements android.content.DialogInterface.OnClickListener
    {

        public void onClick(DialogInterface dialoginterface, int i1)
        {
        }

        private AlbumphotoUI a;

        _cls9()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls13
        implements Runnable
    {

        public void run()
        {
            AlbumphotoUI.a(a, new NetSceneDownloadAlbumPhoto(AlbumphotoUI.k(a)));
            MMCore.g().b(AlbumphotoUI.l(a));
        }

        private AlbumphotoUI a;

        _cls13()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls12
        implements Runnable
    {

        public void run()
        {
            if(AlbumphotoUI.o(b) != null)
                AlbumphotoUI.o(b).setMessage((new StringBuilder()).append(b.getString(0x7f0a0027)).append(a).append("%").toString());
        }

        private int a;
        private AlbumphotoUI b;

        _cls12(int i1)
        {
            b = AlbumphotoUI.this;
            a = i1;
            super();
        }
    }


    private class _cls11
        implements Runnable
    {

        public void run()
        {
            NetSceneUploadAlbumPhoto netsceneuploadalbumphoto = new NetSceneUploadAlbumPhoto(AlbumphotoUI.n(a), a);
            MMCore.g().b(netsceneuploadalbumphoto);
            class _cls1
                implements android.content.DialogInterface.OnCancelListener
            {

                public void onCancel(DialogInterface dialoginterface)
                {
                    MMCore.g().a(a);
                }

                private NetSceneUploadAlbumPhoto a;
                private _cls11 b;

                _cls1(NetSceneUploadAlbumPhoto netsceneuploadalbumphoto)
                {
                    b = _cls11.this;
                    a = netsceneuploadalbumphoto;
                    super();
                }
            }

            AlbumphotoUI.a(a, MMAlert.a(a, a.getString(0x7f0a0010), "Upload ", true, new _cls1(netsceneuploadalbumphoto)));
        }

        private AlbumphotoUI a;

        _cls11()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls7
        implements Runnable
    {

        public void run()
        {
            NetSceneGetAlbumPhotoListFP netscenegetalbumphotolistfp = new NetSceneGetAlbumPhotoListFP(AlbumphotoUI.f(a));
            MMCore.g().b(netscenegetalbumphotolistfp);
        }

        private AlbumphotoUI a;

        _cls7()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls2
        implements com.tencent.mm.ui.MMPullDownView.OnLoadDataListener
    {

        public final void a()
        {
            Log.d("MicroMsg.PhotoAlbumUI", "OnLoadData");
        }

        private AlbumphotoUI a;

        _cls2()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls3
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            AlbumphotoUI.a(a);
        }

        private AlbumphotoUI a;

        _cls3()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls4
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            String s1;
            AlbumphotoUI.b(a).setVisibility(0);
            AlbumphotoUI.c(a).setVisibility(8);
            AlbumphotoAdapter albumphotoadapter = AlbumphotoUI.d(a);
            if(-1 + albumphotoadapter.getCount() > 0)
                s1 = ((AlbumInfo)albumphotoadapter.getItem(-1 + albumphotoadapter.getCount())).b();
            else
                s1 = "";
            if(s1 != null && !s1.equals("")) goto _L2; else goto _L1
_L1:
            return;
_L2:
            AlbumInfo albuminfo = MMCore.f().J().a(s1);
            if(AlbumphotoUI.e(a) == 2)
            {
                NetSceneGetAlbumPhotoListNP netscenegetalbumphotolistnp = new NetSceneGetAlbumPhotoListNP(AlbumphotoUI.f(a), albuminfo);
                MMCore.g().b(netscenegetalbumphotolistnp);
            } else
            if(albuminfo != null)
            {
                NetSceneGetTLPhotoListNP netscenegettlphotolistnp = new NetSceneGetTLPhotoListNP(albuminfo);
                MMCore.g().b(netscenegettlphotolistnp);
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        private AlbumphotoUI a;

        _cls4()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls5
        implements android.widget.AdapterView.OnItemClickListener
    {

        public void onItemClick(AdapterView adapterview, View view, int i1, long l1)
        {
            Log.d("MicroMsg.PhotoAlbumUI", (new StringBuilder()).append("Click ").append(i1).append(" Count: ").append(AlbumphotoUI.d(a).getCount()).toString());
            break MISSING_BLOCK_LABEL_42;
            while(true) 
            {
                do
                    return;
                while(i1 == AlbumphotoUI.d(a).getCount() || AlbumphotoUI.g(a) != null && AlbumphotoUI.g(a).isShowing());
                View view1 = LayoutInflater.from(a.c()).inflate(0x7f030101, null);
                AlbumphotoUI.a(a, new Dialog(a.c(), 0x7f0b004b));
                class _cls1
                    implements android.view.View.OnClickListener
                {

                    public void onClick(View view2)
                    {
                        AlbumphotoUI.g(a.a).dismiss();
                    }

                    private _cls5 a;

                _cls1()
                {
                    a = _cls5.this;
                    super();
                }
                }

                view1.setOnClickListener(new _cls1());
                AlbumphotoUI.g(a).setCanceledOnTouchOutside(true);
                AlbumphotoUI.g(a).setContentView(view1);
                AlbumphotoUI.g(a).show();
                AlbumphotoUI.a(a, (ImageView)view1.findViewById(0x7f0702ba));
                if(MMCore.f().c())
                {
                    AlbumInfo albuminfo = (AlbumInfo)AlbumphotoUI.d(a).getItem(i1);
                    MMCore.f().M();
                    android.graphics.Bitmap bitmap = AlbumInfoStorage.d("");
                    if(bitmap != null)
                    {
                        AlbumphotoUI.h(a).setImageBitmap(bitmap);
                    } else
                    {
                        AlbumphotoUI.i(a).remove(albuminfo.b());
                        if(!AlbumphotoUI.j(a) || !albuminfo.b().equals(AlbumphotoUI.k(a)))
                        {
                            AlbumphotoUI.a(a, new NetSceneDownloadAlbumPhoto(albuminfo.b()));
                            MMCore.g().b(AlbumphotoUI.l(a));
                        }
                    }
                }
            }
        }

        final AlbumphotoUI a;

        _cls5()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls6
        implements android.view.View.OnClickListener
    {

        public void onClick(View view)
        {
            a.finish();
        }

        private AlbumphotoUI a;

        _cls6()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }


    private class _cls8
        implements Runnable
    {

        public void run()
        {
            NetSceneGetTLPhotoListFP netscenegettlphotolistfp = new NetSceneGetTLPhotoListFP();
            MMCore.g().b(netscenegettlphotolistfp);
        }

        private AlbumphotoUI a;

        _cls8()
        {
            a = AlbumphotoUI.this;
            super();
        }
    }

}
