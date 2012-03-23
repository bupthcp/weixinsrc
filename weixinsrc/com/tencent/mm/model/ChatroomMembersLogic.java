// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.mm.model;

import com.tencent.mm.platformtools.Log;
import com.tencent.mm.storage.*;
import java.util.*;

// Referenced classes of package com.tencent.mm.model:
//            MMCore, AccountStorage, ConfigStorageLogic, MsgInfoStorageLogic

public final class ChatroomMembersLogic
{

    private ChatroomMembersLogic()
    {
    }

    public static String a(String s)
    {
        String s1;
        if(s == null || !s.toLowerCase().endsWith("@chatroom"))
        {
            s1 = "";
        } else
        {
            List list = c(s);
            s1 = "";
            int i = 0;
            while(i < list.size()) 
            {
                String s2 = (String)list.get(i);
                String s3;
                if(s2.length() > 0)
                {
                    Contact contact = MMCore.f().h().c(s2);
                    if(contact == null || contact.t() == null)
                        s3 = (new StringBuilder()).append(s1).append(s2).toString();
                    else
                        s3 = (new StringBuilder()).append(s1).append(contact.t()).toString();
                    if(i < -1 + list.size())
                        s3 = (new StringBuilder()).append(s3).append("\u3001").toString();
                } else
                {
                    s3 = s1;
                }
                i++;
                s1 = s3;
            }
        }
        return s1;
    }

    private static String a(List list)
    {
        String s;
        if(list == null || list.size() == 0)
        {
            s = "";
        } else
        {
            s = "";
            int i = 0;
            while(i < list.size()) 
            {
                String s1 = (String)list.get(i);
                String s2;
                if(s1.length() > 0)
                {
                    Contact contact = MMCore.f().h().c(s1);
                    s2 = (new StringBuilder()).append(s).append(contact.z()).toString();
                    if(i < -1 + list.size())
                        s2 = (new StringBuilder()).append(s2).append("\u3001").toString();
                } else
                {
                    s2 = s;
                }
                i++;
                s = s2;
            }
        }
        return s;
    }

    public static boolean a(com.tencent.mm.protocal.MMCreateChatRoom.Resp resp)
    {
        boolean flag = false;
        if(!resp.h().toLowerCase().endsWith("@chatroom") || resp.k().size() == 0)
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("CreateChatroom: room:[").append(resp.h()).append("] listCnt:").append(resp.k().size()).toString());
        } else
        {
            Contact contact = new Contact();
            contact.b(resp.d());
            contact.d(resp.e());
            contact.e(resp.f());
            contact.a(resp.h());
            ContactStorage contactstorage = MMCore.f().h();
            if(!contactstorage.d(contact.s()))
                contactstorage.c(contact);
            ArrayList arraylist = new ArrayList();
            int i = ((flag) ? 1 : 0);
            while(i < resp.k().size()) 
            {
                Contact contact1 = contactstorage.c(((com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)resp.k().get(i)).h());
                Contact contact2;
                if(contact1.o() != 0)
                {
                    contact1.e();
                    contactstorage.a(contact1.s(), contact1);
                    contact2 = contact1;
                } else
                {
                    com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp memberresp = (com.tencent.mm.protocal.MMCreateChatRoom.Resp.MemberResp)resp.k().get(i);
                    contact1.a(memberresp.h());
                    contact1.b(memberresp.i());
                    contact1.d(memberresp.j());
                    contact1.e(memberresp.k());
                    contact1.c(memberresp.f());
                    contact1.k(memberresp.l());
                    contact1.l(memberresp.m());
                    contact1.m(memberresp.k());
                    contact1.g(memberresp.g());
                    contact1.f(memberresp.a());
                    contact1.i(memberresp.d());
                    contact1.j(memberresp.c());
                    contact1.h(memberresp.b());
                    contactstorage.c(contact1);
                    contact2 = contact1;
                }
                arraylist.add(contact2.s());
                i++;
            }
            if(!arraylist.contains(ConfigStorageLogic.b()))
                arraylist.add(ConfigStorageLogic.b());
            flag = a(contact.s(), arraylist);
        }
        return flag;
    }

    public static boolean a(com.tencent.mm.protocal.MMGroupCard.Resp resp, com.tencent.mm.protocal.MMGroupCard.Req req)
    {
        Contact contact = new Contact();
        contact.b(req.c());
        contact.a(resp.b());
        contact.f();
        ContactStorage contactstorage = MMCore.f().h();
        Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("add Group card ").append(contact.s()).append(" ").append(contact.t()).toString());
        if(!contactstorage.d(contact.s()))
            contactstorage.c(contact);
        ArrayList arraylist = new ArrayList();
        for(int i = 0; i < req.e().size(); i++)
        {
            Contact contact1 = contactstorage.c(((com.tencent.mm.protocal.MMSync.CmdModContact.MMRoomInfo)req.e().get(i)).a());
            Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("add ").append(contact1.s()).toString());
            arraylist.add(contact1.s());
        }

        return a(contact.s(), arraylist);
    }

    public static boolean a(String s, com.tencent.mm.protocal.MMAddChatRoomMember.Resp resp)
    {
        boolean flag = false;
        if(!s.toLowerCase().endsWith("@chatroom") || resp.d().size() == 0)
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("AddChatroomMember: room:[").append(s).append("] listCnt:").append(resp.d().size()).toString());
        } else
        {
            ArrayList arraylist = new ArrayList();
            ContactStorage contactstorage = MMCore.f().h();
            int i = ((flag) ? 1 : 0);
            while(i < resp.d().size()) 
            {
                Contact contact = contactstorage.c(((com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)resp.d().get(i)).h());
                Contact contact1;
                if(contact.o() != 0)
                {
                    contact.e();
                    contactstorage.a(contact.s(), contact);
                    contact1 = contact;
                } else
                {
                    com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp memberresp = (com.tencent.mm.protocal.MMAddChatRoomMember.Resp.MemberResp)resp.d().get(i);
                    contact.a(memberresp.h());
                    contact.b(memberresp.i());
                    contact.d(memberresp.j());
                    contact.e(memberresp.k());
                    contact.c(memberresp.f());
                    contact.k(memberresp.l());
                    contact.l(memberresp.m());
                    contact.m(memberresp.k());
                    contact.g(memberresp.g());
                    contact.f(memberresp.a());
                    contact.i(memberresp.d());
                    contact.j(memberresp.c());
                    contact.h(memberresp.b());
                    contactstorage.c(contact);
                    contact1 = contact;
                }
                arraylist.add(contact1.s());
                i++;
            }
            flag = a(s, arraylist);
        }
        return flag;
    }

    public static boolean a(String s, com.tencent.mm.protocal.MMDelChatRoomMember.Resp resp)
    {
        boolean flag;
        if(!s.toLowerCase().endsWith("@chatroom") || resp.b().size() == 0)
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("DelChatroomMember: room:[").append(s).append("] listCnt:").append(resp.b().size()).toString());
            flag = false;
        } else
        {
            ChatroomMembersStorage chatroommembersstorage = MMCore.f().n();
            List list = c(s);
            Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("DelChatroomMember before ").append(list.size()).toString());
            for(Iterator iterator = resp.b().iterator(); iterator.hasNext(); list.remove((String)iterator.next()));
            Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("DelChatroomMember after ").append(list.size()).toString());
            flag = chatroommembersstorage.a(s, list, a(list));
        }
        return flag;
    }

    private static boolean a(String s, ArrayList arraylist)
    {
        int i = 0;
        ChatroomMembersStorage chatroommembersstorage = MMCore.f().n();
        List list = c(s);
        boolean flag;
        if(list != null)
        {
            LinkedList linkedlist = new LinkedList();
            for(int j = i; j < list.size(); j++)
                linkedlist.add(list.get(j));

            for(; i < arraylist.size(); i++)
                if(!list.contains(arraylist.get(i)))
                    linkedlist.add(arraylist.get(i));

            flag = chatroommembersstorage.a(s, linkedlist, a(((List) (linkedlist))));
        } else
        {
            flag = chatroommembersstorage.a(s, arraylist, a(((List) (arraylist))));
        }
        return flag;
    }

    public static boolean a(String s, List list)
    {
        boolean flag = false;
        if(!s.toLowerCase().endsWith("@chatroom") && !s.toLowerCase().endsWith("@groupcard") || list.size() == 0)
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("SyncAddChatroomMember: room:[").append(s).append("] listCnt:").append(list.size()).toString());
        } else
        {
            ContactStorage contactstorage = MMCore.f().h();
            ArrayList arraylist = new ArrayList();
            Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("SyncAddChatroomMember: room:[").append(s).append("] memCnt:").append(list.size()).toString());
            for(int i = ((flag) ? 1 : 0); i < list.size(); i++)
            {
                Log.d("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("SyncAddChatroomMember: memberlist username:[").append(((com.tencent.mm.protocal.MMSync.CmdModContact.MMRoomInfo)list.get(i)).a()).append("]").toString());
                Contact contact = contactstorage.c(((com.tencent.mm.protocal.MMSync.CmdModContact.MMRoomInfo)list.get(i)).a());
                if(contact.o() == 0)
                {
                    contact.a(((com.tencent.mm.protocal.MMSync.CmdModContact.MMRoomInfo)list.get(i)).a());
                    contact.b(((com.tencent.mm.protocal.MMSync.CmdModContact.MMRoomInfo)list.get(i)).b());
                    contact.e();
                    contactstorage.c(contact);
                }
                arraylist.add(contact.s());
            }

            flag = MMCore.f().n().a(s, arraylist, a(((List) (arraylist))));
        }
        return flag;
    }

    public static boolean b(String s)
    {
        boolean flag;
        if(!s.toLowerCase().endsWith("@groupcard"))
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("deleteWholeGroupcard: room:[").append(s).append("]").toString());
            flag = false;
        } else
        {
            ContactStorage contactstorage = MMCore.f().h();
            if(contactstorage.d(s))
                contactstorage.f(s);
            else
                Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("deleteWholeGroupcard RoomName not exist:[").append(s).append("]").toString());
            flag = g(s);
        }
        return flag;
    }

    public static List c(String s)
    {
        List list;
        if(!s.toLowerCase().endsWith("@chatroom"))
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("getMembersByChatRoomName: room:[").append(s).append("]").toString());
            list = null;
        } else
        {
            list = MMCore.f().n().c(s);
        }
        return list;
    }

    public static List d(String s)
    {
        List list;
        if(!s.toLowerCase().endsWith("@chatroom"))
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("getMembersByChatRoomName: room:[").append(s).append("]").toString());
            list = null;
        } else
        {
            list = MMCore.f().n().c(s);
        }
        return list;
    }

    public static int e(String s)
    {
        List list = c(s);
        int i;
        if(list == null)
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("getMembersByChatRoomName: get room:[").append(s).append("] members count fail").toString());
            i = 0;
        } else
        {
            i = list.size();
        }
        return i;
    }

    public static boolean f(String s)
    {
        boolean flag = false;
        if(s != null && s.length() > 0) goto _L2; else goto _L1
_L1:
        Log.a("MicroMsg.ChatroomMembersLogic", "quitChatRoom : invalid args");
_L4:
        return flag;
_L2:
        if(!MMCore.f().h().d(s))
        {
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("quitChatRoom : room[").append(s).append("] is not exist").toString());
            continue; /* Loop/switch isn't completed */
        }
        int i = MMCore.f().i().a(s).c();
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContactMsg(s, i));
        MsgInfoStorageLogic.d(s);
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelChatContact(s));
        MMCore.f().j().a(s);
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpDelContact(s));
        MMCore.f().g().a(new com.tencent.mm.storage.OpLogStorage.OpQuitChatRoom((String)MMCore.f().f().a(2), s));
        if(s.toLowerCase().endsWith("@chatroom"))
            break; /* Loop/switch isn't completed */
        Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("deleteWholeChatroom: room:[").append(s).append("]").toString());
_L5:
        flag = true;
        if(true) goto _L4; else goto _L3
_L3:
        ContactStorage contactstorage = MMCore.f().h();
        if(contactstorage.d(s))
            contactstorage.f(s);
        else
            Log.a("MicroMsg.ChatroomMembersLogic", (new StringBuilder()).append("deleteWholeChatroom RoomName not exist:[").append(s).append("]").toString());
        g(s);
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private static boolean g(String s)
    {
        return MMCore.f().n().d(s);
    }
}
