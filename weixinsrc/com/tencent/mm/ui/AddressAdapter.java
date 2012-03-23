// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.view.View;
import android.view.ViewGroup;
import android.widget.*;
import com.tencent.mm.model.*;
import com.tencent.mm.platformtools.Log;
import com.tencent.mm.platformtools.Util;
import com.tencent.mm.storage.*;
import com.tencent.mm.ui.chatting.SpanUtil;
import java.io.IOException;
import java.util.*;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.tencent.mm.ui:
//            MListAdapter, MMActivity, MMAlert, AvatarDrawable

public class AddressAdapter extends MListAdapter
{

    public AddressAdapter(Context context, String s, String s1)
    {
        super(context, new Contact());
        f = null;
        g = null;
        a = null;
        i = 0;
        k = "";
        b = (MMActivity)context;
        f = s;
        g = s1;
        android.content.res.XmlResourceParser xmlresourceparser = context.getResources().getXml(0x7f08001c);
        android.content.res.XmlResourceParser xmlresourceparser1 = context.getResources().getXml(0x7f08001d);
        o = ColorStateList.createFromXml(context.getResources(), xmlresourceparser);
        p = ColorStateList.createFromXml(context.getResources(), xmlresourceparser1);
_L2:
        return;
        IOException ioexception;
        ioexception;
        continue; /* Loop/switch isn't completed */
        XmlPullParserException xmlpullparserexception;
        xmlpullparserexception;
        if(true) goto _L2; else goto _L1
_L1:
    }

    public AddressAdapter(Context context, String s, String s1, int i1)
    {
        super(context, new Contact());
        f = null;
        g = null;
        a = null;
        i = 0;
        k = "";
        b = (MMActivity)context;
        f = s;
        g = s1;
        j = i1;
        h = new LinkedList();
        o = b.b(0x7f08001c);
        p = b.b(0x7f08001d);
    }

    private String b(Contact contact)
    {
        String s;
        if(contact.r() == 123)
            s = "#";
        else
        if(contact.r() == 33)
            s = b.getString(0x7f0a019b);
        else
        if(contact.r() == 43)
            s = b.getString(0x7f0a036d);
        else
            s = String.valueOf((char)contact.r());
        return s;
    }

    private boolean b(String s)
    {
        boolean flag;
        if(s == null || s.length() <= 0)
            flag = true;
        else
        if(ContactStorageLogic.a(e()))
        {
            SelectedContact selectedcontact = null;
            Iterator iterator = h.iterator();
            if(iterator.hasNext())
                selectedcontact = (SelectedContact)iterator.next();
            if(selectedcontact != null)
            {
                MMActivity mmactivity = b;
                MMActivity mmactivity1 = b;
                Object aobj[] = new Object[1];
                aobj[0] = MMCore.f().h().c(selectedcontact.a).A();
                MMAlert.a(mmactivity, mmactivity1.getString(0x7f0a0097, aobj), b.getString(0x7f0a0010));
            }
            flag = false;
        } else
        if(ConfigStorageLogic.a(s) && h.size() == 0)
        {
            MMAlert.a(b, 0x7f0a035e, 0x7f0a0010);
            flag = false;
        } else
        if(e().size() > 0 && !ContactStorageLogic.a(s) && !ContactStorageLogic.c(s))
        {
            MMAlert.a(b, b.getString(0x7f0a0386), b.getString(0x7f0a0010));
            flag = false;
        } else
        {
            flag = true;
        }
        return flag;
    }

    private SelectedContact d(String s)
    {
        SelectedContact selectedcontact = null;
        Iterator iterator = h.iterator();
        while(iterator.hasNext()) 
        {
            SelectedContact selectedcontact1 = (SelectedContact)iterator.next();
            if(!selectedcontact1.a.equals(s))
                selectedcontact1 = selectedcontact;
            selectedcontact = selectedcontact1;
        }
        return selectedcontact;
    }

    public Contact a(Contact contact, Cursor cursor)
    {
        if(contact == null)
        {
            contact = new Contact();
            Log.d("MicroMsg.AddressAdapter", "new Contact");
        }
        contact.a(cursor);
        return contact;
    }

    public volatile Object a(Object obj, Cursor cursor)
    {
        return a((Contact)obj, cursor);
    }

    protected void a()
    {
        n();
        b();
    }

    public final void a(int i1)
    {
        Contact contact;
        SelectedContact selectedcontact;
        contact = (Contact)getItem(i1);
        selectedcontact = d(contact.s());
        if(selectedcontact != null) goto _L2; else goto _L1
_L1:
        String s;
        s = contact.s();
        contact.A();
        if(b(s)) goto _L4; else goto _L3
_L3:
        return;
_L4:
        h.add(new SelectedContact(contact.s()));
_L5:
        notifyDataSetChanged();
        if(true) goto _L3; else goto _L2
_L2:
        h.remove(selectedcontact);
          goto _L5
    }

    public final void a(Contact contact)
    {
        SelectedContact selectedcontact = d(contact.s());
        if(selectedcontact != null) goto _L2; else goto _L1
_L1:
        String s;
        s = contact.s();
        contact.A();
        if(b(s)) goto _L4; else goto _L3
_L3:
        return;
_L4:
        h.add(new SelectedContact(contact.s()));
_L5:
        notifyDataSetChanged();
        if(true) goto _L3; else goto _L2
_L2:
        h.remove(selectedcontact);
          goto _L5
    }

    public final void a(List list)
    {
        if(list == null)
            list = new LinkedList();
        a = list;
        if(j != 2)
            a.add(ConfigStorageLogic.b());
        RoleInfo roleinfo = MMCore.f().m().a("@t.qq.com");
        if(roleinfo != null)
            a.add(roleinfo.a());
        if(j == 3 || j == 4 || j == 1 || j == 0 || j == 5)
        {
            String s;
            for(Iterator iterator = ContactStorageLogic.a().iterator(); iterator.hasNext(); a.add(s))
                s = (String)iterator.next();

        }
        if(j == 5)
            a.add("weixin");
        a_(null);
    }

    public final int b(int i1)
    {
        if(l != null && i1 >= 0 && i1 < l.length)
            i1 = l[i1];
        return i1;
    }

    public void b()
    {
        int i1 = 0;
        if(k == null || k.length() <= 0)
            a(MMCore.f().h().a(f, g, a));
        else
            a(MMCore.f().h().c(k, f, g, a));
        l = ContactStorageLogic.a(f, g, a, k);
        n = ContactStorageLogic.a(f, g, k, a);
        m = null;
        if(l != null)
        {
            Log.d("MicroMsg.AddressAdapter", (new StringBuilder()).append("reset : showSection = ").append(n.length).append(" secPos = ").append(l.length).append(" count = ").append(getCount()).toString());
            int j1;
            if(getCount() > 0)
                j1 = getCount();
            else
                j1 = i1;
            m = new int[j1];
            int k1;
            for(; i1 < l.length; i1++)
            {
                int l1;
                if(i1 < -1 + l.length)
                    k1 = l[i1 + 1];
                else
                    k1 = j1;
                for(l1 = l[i1]; l1 < k1; l1++)
                    m[l1] = i1;

            }

        }
        if(e != null)
            e.a();
        notifyDataSetChanged();
    }

    public final void b(List list)
    {
        Contact contact = MMCore.f().h().c(ConfigStorageLogic.b());
        Contact contact2;
        Iterator iterator;
        if(contact != null && contact.o() > 0)
        {
            contact2 = contact;
        } else
        {
            Contact contact1 = new Contact();
            String s = (String)MMCore.f().f().a(2);
            String s1 = (String)MMCore.f().f().a(4);
            contact1.a(s);
            contact1.b(s1);
            MMCore.f().h().c(contact1);
            contact2 = MMCore.f().h().c(s);
        }
        for(iterator = list.iterator(); iterator.hasNext();)
        {
            String s2 = (String)iterator.next();
            if(s2.equals(contact2.s()))
                h.add(new SelectedContact(contact2.s()));
            else
                h.add(new SelectedContact(s2));
        }

        i = h.size();
        a_(null);
    }

    public final void c()
    {
        h.clear();
        for(int i1 = 0; i1 < getCount(); i1++)
        {
            Contact contact = (Contact)getItem(i1);
            if(contact != null)
                h.add(new SelectedContact(contact.s()));
        }

        notifyDataSetChanged();
    }

    public final void c(String s)
    {
        String s1 = s.trim();
        if(s1.startsWith("@"))
            if(f != null && f.length() > 0)
                s1 = (new StringBuilder()).append(s1.substring(1)).append("%").append(f).toString();
            else
                s1 = (new StringBuilder()).append(s1.substring(1)).append("%").append("@t.qq.com").toString();
        k = s1;
        n();
        b();
    }

    public final void d()
    {
        h.clear();
    }

    public final List e()
    {
        LinkedList linkedlist = new LinkedList();
        HashSet hashset = new HashSet();
        Iterator iterator = h.iterator();
label0:
        do
        {
            if(!iterator.hasNext())
                break;
            SelectedContact selectedcontact = (SelectedContact)iterator.next();
            Log.d("MicroMsg.AddressAdapter", (new StringBuilder()).append("selectedContact.userName").append(selectedcontact.a).toString());
            if(ContactStorageLogic.c(selectedcontact.a))
            {
                List list = ChatroomMembersLogic.d(selectedcontact.a);
                if(list == null)
                    continue;
                Iterator iterator1 = list.iterator();
                do
                {
                    String s;
                    do
                    {
                        if(!iterator1.hasNext())
                            continue label0;
                        s = (String)iterator1.next();
                    } while(hashset.contains(s));
                    linkedlist.add(s);
                    hashset.add(s);
                } while(true);
            }
            if(!hashset.contains(selectedcontact.a))
            {
                linkedlist.add(selectedcontact.a);
                hashset.add(selectedcontact.a);
            }
        } while(true);
        return linkedlist;
    }

    public final boolean f()
    {
        boolean flag;
        if(h.size() > i)
            flag = true;
        else
            flag = false;
        return flag;
    }

    public final List g()
    {
        LinkedList linkedlist = new LinkedList();
        HashSet hashset = new HashSet();
        hashset.add(ConfigStorageLogic.b());
        for(int i1 = 0; i1 < i; i1++)
            hashset.add(((SelectedContact)h.get(i1)).a);

label0:
        for(int j1 = i; j1 < h.size(); j1++)
        {
            String s = ((SelectedContact)h.get(j1)).a;
            if(ContactStorageLogic.c(s))
            {
                List list = ChatroomMembersLogic.d(s);
                if(list == null)
                    continue;
                Iterator iterator = list.iterator();
                do
                {
                    String s1;
                    do
                    {
                        if(!iterator.hasNext())
                            continue label0;
                        s1 = (String)iterator.next();
                    } while(hashset.contains(s1));
                    linkedlist.add(s1);
                    hashset.add(s1);
                } while(true);
            }
            if(!hashset.contains(s))
            {
                linkedlist.add(s);
                hashset.add(s);
            }
        }

        return linkedlist;
    }

    public int getCount()
    {
        return k().getCount();
    }

    public View getView(int i1, View view, ViewGroup viewgroup)
    {
        Contact contact = (Contact)getItem(i1 + -1);
        int j1;
        Contact contact1;
        ViewHolder viewholder;
        TextView textview;
        ColorStateList colorstatelist;
        ImageView imageview;
        String s1;
        if(contact == null)
            j1 = -1;
        else
            j1 = contact.r();
        contact1 = (Contact)getItem(i1);
        if(view == null)
        {
            view = View.inflate(b, 0x7f030042, null);
            viewholder = new ViewHolder();
            viewholder.b = (TextView)view.findViewById(0x7f0700fc);
            viewholder.a = (ImageView)view.findViewById(0x7f0700fe);
            viewholder.c = (TextView)view.findViewById(0x7f0700ff);
            viewholder.f = (ImageView)view.findViewById(0x7f070100);
            viewholder.g = (CheckBox)view.findViewById(0x7f070103);
            viewholder.d = (TextView)view.findViewById(0x7f070101);
            viewholder.e = (TextView)view.findViewById(0x7f070102);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        if(i1 == 0)
        {
            viewholder.b.setVisibility(0);
            viewholder.b.setText(b(contact1));
        } else
        if(i1 > 0 && contact1.r() != j1)
        {
            viewholder.b.setVisibility(0);
            viewholder.b.setText(b(contact1));
        } else
        {
            viewholder.b.setVisibility(8);
        }
        textview = viewholder.c;
        if(!ContactStorageLogic.E(contact1.s()))
            colorstatelist = o;
        else
            colorstatelist = p;
        textview.setTextColor(colorstatelist);
        if(j == 1 || j == 0 || j == 3 || j == 5)
        {
            viewholder.g.setVisibility(0);
            CheckBox checkbox = viewholder.g;
            boolean flag;
            String s;
            if(d(contact1.s()) != null)
                flag = true;
            else
                flag = false;
            checkbox.setChecked(flag);
        } else
        {
            viewholder.g.setVisibility(8);
        }
        if(f.equals("@domain.android"))
        {
            viewholder.a.setVisibility(8);
            viewholder.d.setText(contact1.s());
        } else
        {
            AvatarDrawable avatardrawable = (AvatarDrawable)viewholder.a.getDrawable();
            if(avatardrawable == null)
            {
                avatardrawable = new AvatarDrawable(viewholder.a, AvatarDrawable.b(), AvatarDrawable.b());
                viewholder.a.setImageDrawable(avatardrawable);
            }
            avatardrawable.a(contact1.s());
            viewholder.d.setVisibility(8);
        }
        s = Util.h(contact1.K());
        if(s.length() > 0 && viewholder.g.getVisibility() != 0)
        {
            viewholder.e.setVisibility(0);
            viewholder.e.setText(SpanUtil.a(b, s, (int)viewholder.e.getTextSize()));
        } else
        {
            viewholder.e.setVisibility(8);
        }
        viewholder.c.setText(SpanUtil.a(b, contact1.A(), (int)viewholder.c.getTextSize()));
        imageview = viewholder.f;
        s1 = contact1.s();
        if(s1.toLowerCase().endsWith("@t.qq.com") || ContactStorageLogic.h(contact1))
        {
            imageview.setImageDrawable(b.a(0x7f020143));
            imageview.setVisibility(0);
        } else
        {
            s1.toLowerCase().endsWith("@chatroom");
            imageview.setVisibility(8);
        }
        return view;
    }

    public final int h()
    {
        int i1;
        if(h != null)
            i1 = h.size();
        else
            i1 = 0;
        return i1;
    }

    public final List i()
    {
        return h;
    }

    public final String[] j()
    {
        Log.e("MicroMsg.AddressAdapter", "getSections");
        return n;
    }

    protected List a;
    protected MMActivity b;
    private String f;
    private String g;
    private List h;
    private int i;
    private int j;
    private String k;
    private int l[];
    private int m[];
    private String n[];
    private ColorStateList o;
    private ColorStateList p;

    private class SelectedContact
    {

        String a;

        public SelectedContact(String s)
        {
            a = s;
        }
    }


    private class ViewHolder
    {

        ImageView a;
        TextView b;
        TextView c;
        TextView d;
        TextView e;
        ImageView f;
        CheckBox g;

        ViewHolder()
        {
        }
    }

}
