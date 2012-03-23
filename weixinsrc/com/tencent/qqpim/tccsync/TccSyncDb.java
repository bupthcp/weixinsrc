// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.tccsync;

import android.content.Context;
import com.tencent.qqpim.dao.*;
import com.tencent.qqpim.interfaces.*;
import com.tencent.qqpim.utils.QQPimTestUtils;
import com.tencent.qqpim.utils.QQPimUtils;
import com.tencent.tccsync.ITccSyncDbAdapter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public class TccSyncDb
    implements ITccSyncDbAdapter
{

    private TccSyncDb(Context context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType dbadaptertype)
    {
        context = null;
        type = com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.UNKNOW;
        dao = null;
        id_list = null;
        cur_pos = 0;
        vcard = null;
        mSelection = null;
        context = context1;
        type = dbadaptertype;
    }

    private TccSyncDb(Context context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType dbadaptertype, String as[])
    {
        context = null;
        type = com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.UNKNOW;
        dao = null;
        id_list = null;
        cur_pos = 0;
        vcard = null;
        mSelection = null;
        context = context1;
        type = dbadaptertype;
        mSelection = as;
    }

    public static ITccSyncDbAdapter getITccSyncDbAdapter(Context context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType dbadaptertype)
    {
        QQPimUtils.writeToLog("TccSyncDb", "getITccSyncDbAdapter");
        return new TccSyncDb(context1, dbadaptertype);
    }

    public static ITccSyncDbAdapter getITccSyncDbAdapter(Context context1, com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType dbadaptertype, String as[])
    {
        QQPimUtils.writeToLog("TccSyncDb", "getITccSyncDbAdapter");
        return new TccSyncDb(context1, dbadaptertype, as);
    }

    public int add(ArrayList arraylist, ArrayList arraylist1, int ai[], int ai1[])
    {
        if(!QQPimUtils.userStoppedSync) goto _L2; else goto _L1
_L1:
        byte byte0;
        ai1[0] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
        byte0 = -100;
_L7:
        return byte0;
_L2:
        ArrayList arraylist2;
        ArrayList arraylist3;
        IEntity ientity;
        int i;
        int j;
        QQPimUtils.writeToLog("TccSyncDb", "add enter");
        arraylist2 = new ArrayList();
        arraylist3 = new ArrayList();
        ientity = null;
        i = arraylist.size();
        j = 0;
_L8:
        if(j < i) goto _L4; else goto _L3
_L3:
        if(dao.add(arraylist3, arraylist2, ai1)) goto _L6; else goto _L5
_L5:
        ai1[0] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
        byte0 = -100;
          goto _L7
_L4:
        IEntity ientity2 = vcard.parseVcard((byte[])arraylist.get(j));
        IEntity ientity1 = ientity2;
        ai1[j] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE.toInt();
        ientity = ientity1;
_L9:
        arraylist3.add(j, ientity);
        j++;
          goto _L8
_L10:
        ai1[j] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID.toInt();
        ientity = ientity1;
          goto _L9
_L6:
        QQPimTestUtils.writeEntityToFile(ientity, "sdcard/vcard.txt");
        int k = 0;
_L11:
        Throwable throwable1;
        if(k >= i)
        {
            byte0 = 0;
        } else
        {
            byte abyte0[];
            try
            {
                String s = (String)arraylist2.get(k);
                abyte0 = s.getBytes("UTF-8");
                IEntity ientity3 = dao.query(s);
                if(ientity3 == null)
                {
                    ai1[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
                    ai[k] = 0;
                    break MISSING_BLOCK_LABEL_366;
                }
                ai[k] = ientity3.getCheckSum();
            }
            catch(UnsupportedEncodingException unsupportedencodingexception)
            {
                ai1[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
                ai[k] = 0;
                break MISSING_BLOCK_LABEL_366;
            }
            try
            {
                arraylist1.add(k, abyte0);
            }
            catch(IndexOutOfBoundsException indexoutofboundsexception)
            {
                ai1[k] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED.toInt();
                ai[k] = 0;
            }
            break MISSING_BLOCK_LABEL_366;
        }
          goto _L7
        throwable1;
        QQPimUtils.writeToLog("TccSyncDb", "add , parseVcard failed!");
        QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_INVALID");
        ai1[0] = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR.toInt();
        byte0 = -100;
          goto _L7
        Throwable throwable;
        throwable;
        ientity1 = ientity;
          goto _L10
        Throwable throwable2;
        throwable2;
          goto _L10
        k++;
          goto _L11
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue add(byte abyte0[], AtomicReference atomicreference, AtomicInteger atomicinteger)
    {
        if(!QQPimUtils.userStoppedSync) goto _L2; else goto _L1
_L1:
        com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
_L4:
        return operationreturnvalue;
_L2:
        String s;
        QQPimUtils.writeToLog("TccSyncDb", "add enter");
        IEntity ientity;
        try
        {
            ientity = vcard.parseVcard(abyte0);
            QQPimTestUtils.writeEntityToFile(ientity, "sdcard/vcard.txt");
        }
        catch(Throwable throwable)
        {
            QQPimUtils.writeToLog("TccSyncDb", "add , parseVcard failed!");
            QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_INVALID");
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
            continue; /* Loop/switch isn't completed */
        }
        s = dao.add(ientity);
        if(s == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 1");
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
            continue; /* Loop/switch isn't completed */
        }
        IEntity ientity1;
        atomicreference.set(s.getBytes("UTF-8"));
        ientity1 = dao.query(s);
        if(ientity1 == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILE 2");
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
            continue; /* Loop/switch isn't completed */
        }
        QQPimUtils.writeToLog("TccSyncDb", (new StringBuilder("add query and entity.getCount = ")).append(ientity1.getCount()).toString());
        atomicinteger.set(ientity1.getCheckSum());
        QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR_NONE");
        operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject , UnsupportedEncodingException");
        QQPimUtils.writeToLog("TccSyncDb", "add OperationReturnValue.TCC_ERR 4");
        operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
        continue; /* Loop/switch isn't completed */
        Throwable throwable1;
        throwable1;
        QQPimUtils.writeToLog("TccSyncDb", throwable1.getMessage());
        operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue del(byte abyte0[])
    {
        com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue operationreturnvalue;
        if(QQPimUtils.userStoppedSync)
        {
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
        } else
        {
            QQPimUtils.writeToLog("TccSyncDb", "del enter");
            if(abyte0 == null)
            {
                QQPimUtils.writeToLog("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_INVALID");
                operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
            } else
            {
                String s = new String(abyte0);
                com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue = dao.delete(s);
                if(enum_idaoreturnvalue == com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND)
                {
                    QQPimUtils.writeToLog("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_NOT_FOUND");
                    operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_NOT_FOUND;
                } else
                if(enum_idaoreturnvalue == com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED)
                {
                    QQPimUtils.writeToLog("TccSyncDb", "del OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
                    operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
                } else
                {
                    QQPimUtils.writeToLog("TccSyncDb", "del OperationReturnValue.TCC_ERR_NONE");
                    operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
                }
            }
        }
        return operationreturnvalue;
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue getCurrObject(AtomicReference atomicreference, AtomicReference atomicreference1, AtomicInteger atomicinteger)
    {
        if(!QQPimUtils.userStoppedSync) goto _L2; else goto _L1
_L1:
        com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
_L4:
        return getcurrobjectreturnvalue;
_L2:
        String s;
        IEntity ientity;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject  enter");
        if(id_list == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObject  GetCurrObjectReturnValue.TCC_ERR 1");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            continue; /* Loop/switch isn't completed */
        }
        if(cur_pos >= id_list.size())
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 2");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR_EOF;
            continue; /* Loop/switch isn't completed */
        }
        s = (String)id_list.get(cur_pos);
        ientity = dao.query(s);
        if(ientity == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", (new StringBuilder("getCurrObject GetCurrObjectReturnValue.TCC_ERR 3 strContactId = ")).append(s).toString());
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            continue; /* Loop/switch isn't completed */
        }
        byte abyte0[] = vcard.composeVcard(ientity);
        if(abyte0 == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 4");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            continue; /* Loop/switch isn't completed */
        }
        atomicreference.set(abyte0);
        atomicreference1.set(s.getBytes("UTF-8"));
        atomicinteger.set(ientity.getCheckSum());
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_RRR_NONE");
        getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_RRR_NONE;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject , UnsupportedEncodingException");
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject GetCurrObjectReturnValue.TCC_ERR 5");
        getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue getCurrObjectInfo(AtomicReference atomicreference, AtomicInteger atomicinteger)
    {
        if(!QQPimUtils.userStoppedSync) goto _L2; else goto _L1
_L1:
        com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
_L4:
        return getcurrobjectreturnvalue;
_L2:
        String s;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo enter");
        if(id_list == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 1");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            continue; /* Loop/switch isn't completed */
        }
        if(cur_pos >= id_list.size())
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_EOF");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR_EOF;
            continue; /* Loop/switch isn't completed */
        }
        s = (String)id_list.get(cur_pos);
        IEntity ientity = dao.query(s);
        if(ientity == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 2");
            getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
            continue; /* Loop/switch isn't completed */
        }
        atomicinteger.set(ientity.getCheckSum());
        atomicreference.set(s.getBytes("UTF-8"));
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_RRR_NONE");
        getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_RRR_NONE;
        continue; /* Loop/switch isn't completed */
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObject , UnsupportedEncodingException");
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 3");
        getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        QQPimUtils.writeToLog("TccSyncDb", "getCurrObjectInfo GetCurrObjectReturnValue.TCC_ERR 4");
        getcurrobjectreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.GetCurrObjectReturnValue.TCC_ERR;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType getSyncDataType()
    {
        QQPimUtils.writeToLog("TccSyncDb", "getSyncDataType");
        return type;
    }

    public boolean hasEnoughStorageSpace(long l)
    {
        QQPimUtils.writeToLog("TccSyncDb", "hasEnoughStorageSpace");
        return true;
    }

    public boolean isAtEnd()
    {
        QQPimUtils.writeToLog("TccSyncDb", "isAtEnd enter");
        boolean flag;
        if(id_list != null && cur_pos >= id_list.size())
        {
            QQPimUtils.writeToLog("TccSyncDb", "isAtEnd  true");
            flag = true;
        } else
        {
            QQPimUtils.writeToLog("TccSyncDb", "isAtEnd false");
            flag = false;
        }
        return flag;
    }

    public boolean isExist(byte abyte0[])
    {
        boolean flag;
        flag = false;
        QQPimUtils.writeToLog("TccSyncDb", "isExist enter");
        if(abyte0 != null) goto _L2; else goto _L1
_L1:
        QQPimUtils.writeToLog("TccSyncDb", "isExist false");
_L4:
        return flag;
_L2:
        new String();
        String s = new String(abyte0, "UTF-8");
        QQPimUtils.writeToLog("TccSyncDb", (new StringBuilder("isExist ")).append(s).toString());
        flag = dao.isExisted(s);
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        QQPimUtils.writeToLog("TccSyncDb", "oidInputError");
        if(true) goto _L4; else goto _L3
_L3:
    }

    public com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue mdf(byte abyte0[], byte abyte1[], AtomicInteger atomicinteger)
    {
        if(!QQPimUtils.userStoppedSync) goto _L2; else goto _L1
_L1:
        com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR;
_L4:
        return operationreturnvalue;
_L2:
        QQPimUtils.writeToLog("TccSyncDb", "mdf enter");
        if(abyte1 == null || abyte0 == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_INVALID");
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
            continue; /* Loop/switch isn't completed */
        }
        Throwable throwable;
        IEntity ientity;
        String s;
        com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue enum_idaoreturnvalue;
        IEntity ientity1;
        try
        {
            QQPimUtils.writeStringToFile(new String(abyte0, "UTF-8"), "sdcard/vcard.txt");
        }
        catch(Exception exception) { }
        ientity = vcard.parseVcard(abyte0);
        if(ientity == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "mdf entity == null");
            operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
        } else
        {
            s = new String(abyte1);
            ientity.setId(s);
            enum_idaoreturnvalue = dao.update(ientity);
            if(enum_idaoreturnvalue == com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ENTITY_NOT_FOUND)
            {
                QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_NOT_FOUND");
                operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_NOT_FOUND;
            } else
            if(enum_idaoreturnvalue == com.tencent.qqpim.interfaces.IDao.ENUM_IDaoReturnValue.ACTION_FAILED)
            {
                QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
                operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
            } else
            {
                ientity1 = dao.query(s);
                if(ientity1 == null)
                {
                    QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED");
                    operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_COMMAND_FAILED;
                } else
                {
                    atomicinteger.set(ientity1.getCheckSum());
                    QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_NONE");
                    operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_NONE;
                }
            }
        }
        continue; /* Loop/switch isn't completed */
        throwable;
        QQPimUtils.writeToLog("TccSyncDb", "mdf , parseVcard failed!");
        QQPimUtils.writeToLog("TccSyncDb", "mdf OperationReturnValue.TCC_ERR_DATA_INVALID");
        operationreturnvalue = com.tencent.tccsync.ITccSyncDbAdapter.OperationReturnValue.TCC_ERR_DATA_INVALID;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean seekFirst(AtomicInteger atomicinteger)
    {
        boolean flag = false;
        QQPimUtils.writeToLog("TccSyncDb", "seekFirst  enter");
        if(id_list == null)
        {
            atomicinteger.set(flag);
            QQPimUtils.writeToLog("TccSyncDb", "seekFirst  false");
        } else
        {
            cur_pos = ((flag) ? 1 : 0);
            atomicinteger.set(id_list.size());
            QQPimUtils.writeToLog("TccSyncDb", "seekFirst  true");
            flag = true;
        }
        return flag;
    }

    public boolean seekNext()
    {
        QQPimUtils.writeToLog("TccSyncDb", "seekNext  enter");
        boolean flag;
        if(id_list != null && cur_pos < id_list.size())
        {
            QQPimUtils.writeToLog("TccSyncDb", "seekNext leave  true");
            cur_pos = 1 + cur_pos;
            flag = true;
        } else
        {
            QQPimUtils.writeToLog("TccSyncDb", "seekNext  leave false");
            flag = false;
        }
        return flag;
    }

    public int size()
    {
        int i = 0;
        QQPimUtils.writeToLog("TccSyncDb", "size  enter");
        if(id_list == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "size  false");
        } else
        {
            cur_pos = i;
            i = id_list.size();
            QQPimUtils.writeToLog("TccSyncDb", "size  true");
        }
        return i;
    }

    public boolean syncFreeze()
    {
        QQPimUtils.writeToLog("TccSyncDb", "syncFreeze  enter");
        dao = null;
        id_list = null;
        cur_pos = 0;
        vcard = null;
        mSelection = null;
        QQPimUtils.writeToLog("TccSyncDb", "syncFreeze  true");
        return true;
    }

    public boolean syncInit()
    {
        boolean flag = false;
        QQPimUtils.writeToLog("TccSyncDb", "syncInit enter");
        if(type.equals(com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.BOOKMARK))
            dao = SYSBookmarkDao.getIDao(context);
        else
        if(type.equals(com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CALLLOG))
            dao = SYSCallLogDao.getIDao(context);
        else
        if(type.equals(com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.CONTACT))
            dao = SYSContactDao.getIDao(context);
        else
        if(type.equals(com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType.SMS))
            dao = SYSSmsDao.getIDao(context);
        if(dao != null)
            id_list = dao.getAllEntityId(mSelection);
        if(id_list == null)
        {
            QQPimUtils.writeToLog("TccSyncDb", "syncInit false");
        } else
        {
            vcard = new VCard();
            cur_pos = ((flag) ? 1 : 0);
            QQPimUtils.writeToLog("TccSyncDb", "syncInit  true");
            flag = true;
        }
        return flag;
    }

    private Context context;
    private int cur_pos;
    private IDao dao;
    private List id_list;
    private String mSelection[];
    private com.tencent.tccsync.ITccSyncDbAdapter.DbAdapterType type;
    private IVcard vcard;
}
