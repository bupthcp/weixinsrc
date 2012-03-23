// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package QQPIM;

import com.a.a.a.*;

public final class DeleteFileInfo extends g
{

    public DeleteFileInfo()
    {
        file = "";
    }

    public DeleteFileInfo(String s)
    {
        file = "";
        file = s;
    }

    public final String className()
    {
        return "QQPIM.DeleteFileInfo";
    }

    public final Object clone()
    {
        Object obj = null;
        Object obj1 = super.clone();
        obj = obj1;
_L2:
        return obj;
        CloneNotSupportedException clonenotsupportedexception;
        clonenotsupportedexception;
        if(!$assertionsDisabled)
            throw new AssertionError();
        if(true) goto _L2; else goto _L1
_L1:
    }

    public final void display(StringBuilder stringbuilder, int i)
    {
        (new h(stringbuilder, i)).a(file, "file");
    }

    public final boolean equals(Object obj)
    {
        DeleteFileInfo deletefileinfo = (DeleteFileInfo)obj;
        return c.a(file, deletefileinfo.file);
    }

    public final String getFile()
    {
        return file;
    }

    public final void readFrom(a a1)
    {
        file = a1.b(0, true);
    }

    public final void setFile(String s)
    {
        file = s;
    }

    public final void writeTo(e e1)
    {
        e1.a(file, 0);
    }

    static final boolean $assertionsDisabled;
    public String file;

    static 
    {
        boolean flag;
        if(!QQPIM/DeleteFileInfo.desiredAssertionStatus())
            flag = true;
        else
            flag = false;
        $assertionsDisabled = flag;
    }
}
