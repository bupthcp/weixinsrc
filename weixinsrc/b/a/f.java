// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package b.a;

import android.hardware.Camera;
import java.util.List;

// Referenced classes of package b.a:
//            k, u

class f
    implements k
{

    f()
    {
    }

    public int a()
    {
        return Camera.getNumberOfCameras();
    }

    public u a(int i)
    {
        Object obj;
        u u1;
        obj = null;
        u1 = new u();
        u1.a = ((Camera) (obj));
        u1.a = Camera.open(i);
        android.hardware.Camera.CameraInfo camerainfo = new android.hardware.Camera.CameraInfo();
        Camera.getCameraInfo(i, camerainfo);
        int j;
        if(camerainfo.facing == 1)
            j = (360 - camerainfo.orientation % 360) % 360;
        else
            j = (360 + camerainfo.orientation) % 360;
        u1.a.setDisplayOrientation(j);
        u1.b = camerainfo.orientation;
        obj = u1;
_L2:
        return ((u) (obj));
        Exception exception;
        exception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public List a(android.hardware.Camera.Parameters parameters)
    {
        return parameters.getSupportedPreviewSizes();
    }

    private static final int a = 360;
}
