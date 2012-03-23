// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui.friend;

import android.view.*;
import android.widget.*;
import com.tencent.mm.algorithm.UIN;
import com.tencent.mm.model.AccountStorage;
import com.tencent.mm.model.MMCore;
import com.tencent.mm.modelfriend.InviteFriendOpenStorage;
import com.tencent.mm.platformtools.Util;
import java.util.ArrayList;
import java.util.List;

class FriendListAdapter extends BaseAdapter
{

    public FriendListAdapter(LayoutInflater layoutinflater)
    {
        a = layoutinflater;
    }

    public final void a(int i)
    {
        if(i >= 0 && i < e.length)
        {
            boolean aflag[] = e;
            boolean flag;
            if(!e[i])
                flag = true;
            else
                flag = false;
            aflag[i] = flag;
            super.notifyDataSetChanged();
        }
    }

    public final void a(List list)
    {
        c = list;
    }

    public final void a(List list, int i)
    {
        if(i < 0)
        {
            b = list;
        } else
        {
            b = new ArrayList();
            int j = 0;
            while(j < list.size()) 
            {
                if(i == ((com.tencent.mm.protocal.MMGetInviteFriend.RespCmd)list.get(j)).c())
                    b.add(list.get(j));
                j++;
            }
        }
        e = new boolean[b.size()];
    }

    public final void a(boolean flag)
    {
        d = flag;
    }

    public final String[] a()
    {
        int i = 0;
        boolean aflag[] = e;
        int j = aflag.length;
        int k = i;
        int l = i;
        for(; k < j; k++)
            if(aflag[k])
                l++;

        String as[] = new String[l];
        int i1 = i;
        while(i1 < b.size()) 
        {
            int j1;
            if(e[i1])
            {
                int k1 = i + 1;
                as[i] = ((com.tencent.mm.protocal.MMGetInviteFriend.RespCmd)b.get(i1)).a();
                j1 = k1;
            } else
            {
                j1 = i;
            }
            i1++;
            i = j1;
        }
        return as;
    }

    public final int b(int i)
    {
        int j;
        if(!d)
            j = 0;
        else
            j = ((com.tencent.mm.protocal.MMGetInviteFriend.FriendGroup)c.get(i)).a();
        return j;
    }

    public int getCount()
    {
        int i = 0;
        if(!d) goto _L2; else goto _L1
_L1:
        if(c != null)
            i = c.size();
_L4:
        return i;
_L2:
        if(b != null)
            i = b.size();
        if(true) goto _L4; else goto _L3
_L3:
    }

    public Object getItem(int i)
    {
        Object obj;
        if(d)
            obj = c.get(i);
        else
            obj = b.get(i);
        return obj;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if(!d) goto _L2; else goto _L1
_L1:
        com.tencent.mm.protocal.MMGetInviteFriend.FriendGroup friendgroup = (com.tencent.mm.protocal.MMGetInviteFriend.FriendGroup)c.get(i);
        ViewHolder viewholder3;
        if(view == null || ((ViewHolder)view.getTag()).f != 2)
        {
            view = a.inflate(0x7f030059, viewgroup, false);
            ViewHolder viewholder2 = new ViewHolder();
            viewholder2.f = 2;
            viewholder2.a = (TextView)view.findViewById(0x7f070135);
            view.setTag(viewholder2);
            viewholder3 = viewholder2;
        } else
        {
            viewholder3 = (ViewHolder)view.getTag();
        }
        viewholder3.a.setText(friendgroup.b());
_L7:
        return view;
_L2:
        com.tencent.mm.protocal.MMGetInviteFriend.RespCmd respcmd;
        String s;
        String s1;
        respcmd = (com.tencent.mm.protocal.MMGetInviteFriend.RespCmd)b.get(i);
        ViewHolder viewholder1;
        TextView textview;
        TextView textview1;
        if(view == null || ((ViewHolder)view.getTag()).f != 1)
        {
            view = a.inflate(0x7f030058, viewgroup, false);
            ViewHolder viewholder = new ViewHolder();
            viewholder.f = 1;
            viewholder.b = (TextView)view.findViewById(0x7f070131);
            viewholder.c = (TextView)view.findViewById(0x7f070132);
            viewholder.e = (CheckBox)view.findViewById(0x7f070134);
            viewholder.d = (TextView)view.findViewById(0x7f070133);
            view.setTag(viewholder);
            viewholder1 = viewholder;
        } else
        {
            viewholder1 = (ViewHolder)view.getTag();
        }
        if(MMCore.f().P().a(respcmd.a()))
            viewholder1.d.setVisibility(0);
        else
            viewholder1.d.setVisibility(8);
        textview = viewholder1.b;
        if(respcmd == null) goto _L4; else goto _L3
_L3:
        s = respcmd.g();
        if(s == null || s.length() <= 0) goto _L6; else goto _L5
_L5:
        textview.setText(s);
        textview1 = viewholder1.c;
        if(respcmd == null)
            break MISSING_BLOCK_LABEL_570;
        if(respcmd.b() == 0)
            s1 = respcmd.a();
        else
        if(respcmd.b() == 2)
        {
            s1 = respcmd.a();
        } else
        {
            if(respcmd.b() != 1)
                break MISSING_BLOCK_LABEL_570;
            String s2 = respcmd.a();
            if(Util.i(s2))
                break MISSING_BLOCK_LABEL_570;
            String as[] = s2.split("@");
            if(as == null || as.length < 2 || Util.i(as[0]))
                s1 = "";
            else
                s1 = (new StringBuilder()).append("@").append(as[0]).toString();
        }
_L10:
        textview1.setText(s1);
        viewholder1.e.setChecked(e[i]);
          goto _L7
_L6:
        s = respcmd.e();
        if(s != null && s.length() > 0) goto _L5; else goto _L8
_L8:
        s = (new UIN(respcmd.d())).toString();
        if(s != null && s.length() > 0) goto _L5; else goto _L9
_L9:
        s = respcmd.f();
        if(s != null && s.length() > 0) goto _L5; else goto _L4
_L4:
        s = "";
          goto _L5
        s1 = "";
          goto _L10
    }

    private final LayoutInflater a;
    private List b;
    private List c;
    private boolean d;
    private boolean e[];

    private class ViewHolder
    {

        TextView a;
        TextView b;
        TextView c;
        TextView d;
        CheckBox e;
        int f;

        ViewHolder()
        {
        }
    }

}
