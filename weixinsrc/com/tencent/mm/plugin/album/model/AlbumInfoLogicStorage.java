// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.plugin.album.model;

import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.protobuf.ByteString;
import com.tencent.mm.protocal.protobuf.*;
import java.io.IOException;
import java.util.LinkedList;

// Referenced classes of package com.tencent.mm.plugin.album.model:
//            AlbumInfoStorage, AlbumInfo

public final class AlbumInfoLogicStorage
{

    private AlbumInfoLogicStorage()
    {
    }

    private static boolean a(int i)
    {
        boolean flag = true;
        if(i != flag)
            flag = false;
        return flag;
    }

    public static boolean a(com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListFP.Resp resp)
    {
        int i = 0;
        while(i < resp.a.e()) 
        {
            AlbumPhotoId albumphotoid = ((AlbumPhotoData)resp.a.f().get(i)).c();
            int j = ((AlbumPhotoData)resp.a.f().get(i)).c().f();
            SKBuiltinBuffer_t skbuiltinbuffer_t = ((AlbumPhotoData)resp.a.f().get(i)).d();
            if(a(j))
                try
                {
                    AlbumPhotoAttr albumphotoattr = AlbumPhotoAttr.a(skbuiltinbuffer_t.d().b());
                    String s = albumphotoid.c();
                    a(s, s.split(";")[0], albumphotoid, albumphotoattr);
                }
                catch(IOException ioexception) { }
            i++;
        }
        return true;
    }

    public static boolean a(com.tencent.mm.plugin.album.protocal.MMGetTLPhotoListNP.Resp resp)
    {
        int i = 0;
        while(i < resp.a.d()) 
        {
            AlbumPhotoId albumphotoid = ((AlbumPhotoData)resp.a.e().get(i)).c();
            int j = ((AlbumPhotoData)resp.a.e().get(i)).c().f();
            SKBuiltinBuffer_t skbuiltinbuffer_t = ((AlbumPhotoData)resp.a.e().get(i)).d();
            if(a(j))
                try
                {
                    AlbumPhotoAttr albumphotoattr = AlbumPhotoAttr.a(skbuiltinbuffer_t.d().b());
                    String s = albumphotoid.c();
                    a(s, s.split(";")[0], albumphotoid, albumphotoattr);
                }
                catch(IOException ioexception) { }
            i++;
        }
        return true;
    }

    public static boolean a(String s, com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListFP.Resp resp)
    {
        Log.d("MicroMsg.AlbumInfoLogicStorage", (new StringBuilder()).append("insertPhotoList userName: ").append(s).toString());
        int i = 0;
        while(i < resp.a.e()) 
        {
            AlbumPhotoId albumphotoid = ((AlbumPhotoData)resp.a.f().get(i)).c();
            int j = ((AlbumPhotoData)resp.a.f().get(i)).c().f();
            SKBuiltinBuffer_t skbuiltinbuffer_t = ((AlbumPhotoData)resp.a.f().get(i)).d();
            if(a(j))
                try
                {
                    AlbumPhotoAttr albumphotoattr = AlbumPhotoAttr.a(skbuiltinbuffer_t.d().b());
                    a(albumphotoid.c(), s, albumphotoid, albumphotoattr);
                }
                catch(IOException ioexception) { }
            i++;
        }
        return true;
    }

    public static boolean a(String s, com.tencent.mm.plugin.album.protocal.MMGetAlbumPhotoListNP.Resp resp)
    {
        Log.d("MicroMsg.AlbumInfoLogicStorage", "insertPhotoList");
        int i = 0;
        while(i < resp.a.d()) 
        {
            AlbumPhotoId albumphotoid = ((AlbumPhotoData)resp.a.e().get(i)).c();
            int j = ((AlbumPhotoData)resp.a.e().get(i)).c().f();
            SKBuiltinBuffer_t skbuiltinbuffer_t = ((AlbumPhotoData)resp.a.e().get(i)).d();
            if(a(j))
                try
                {
                    AlbumPhotoAttr albumphotoattr = AlbumPhotoAttr.a(skbuiltinbuffer_t.d().b());
                    a(albumphotoid.c(), s, albumphotoid, albumphotoattr);
                }
                catch(IOException ioexception) { }
            i++;
        }
        return true;
    }

    private static boolean a(String s, String s1, AlbumPhotoId albumphotoid, AlbumPhotoAttr albumphotoattr)
    {
        AlbumInfoStorage albuminfostorage = MMCore.f().J();
        AlbumInfo albuminfo = albuminfostorage.a(s);
        if(albuminfo == null)
        {
            albuminfo = new AlbumInfo();
            albuminfo.a(albumphotoid.d());
            albuminfo.a(albumphotoid.c());
            albuminfo.b(s1);
            albuminfo.a(albumphotoid.e());
            albuminfo.c(albumphotoattr.e());
            albuminfo.d(albumphotoattr.f());
            albuminfo.e(albuminfo.h());
            albuminfo.b(albumphotoattr.d());
            albuminfo.a(albumphotoattr.c());
            albuminfo.c(albumphotoattr.h());
            albuminfo.b(albumphotoattr.g());
            albuminfostorage.a(albuminfo);
        } else
        {
            albuminfo.a(albumphotoid.d());
            albuminfo.a(albumphotoid.c());
            albuminfo.b(s1);
            albuminfo.a(albumphotoid.e());
            albuminfo.c(albumphotoattr.e());
            albuminfo.d(albumphotoattr.f());
            albuminfo.e(albuminfo.h());
            albuminfo.b(albumphotoattr.d());
            albuminfo.a(albumphotoattr.c());
            albuminfo.c(albumphotoattr.h());
            albuminfo.b(albumphotoattr.g());
            albuminfostorage.a(albuminfo.b(), albuminfo);
        }
        albuminfo.j();
        return true;
    }
}
