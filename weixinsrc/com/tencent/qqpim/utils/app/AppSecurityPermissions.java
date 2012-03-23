// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils.app;

import android.content.Context;
import android.content.pm.*;
import java.util.*;

// Referenced classes of package com.tencent.qqpim.utils.app:
//            ReflectUtil

public class AppSecurityPermissions
{

    public AppSecurityPermissions(Context context, Object obj)
    {
        HashSet hashset;
        localLOGV = false;
        mDefaultGrpName = "DefaultGrp";
        mContext = context;
        mPm = mContext.getPackageManager();
        mPermsList = new ArrayList();
        hashset = new HashSet();
        if(obj != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String s;
        Iterator iterator;
        try
        {
            s = (String)ReflectUtil.getProperty(obj, "mSharedUserId");
        }
        catch(Exception exception)
        {
            s = null;
        }
        if(s != null)
        {
            Integer integer;
            try
            {
                PackageManager packagemanager = mPm;
                Object aobj[] = new Object[1];
                aobj[0] = s;
                integer = (Integer)ReflectUtil.invokeMethod(packagemanager, "getUidForSharedUser", aobj);
            }
            catch(Exception exception2)
            {
                integer = null;
            }
            getAllUsedPermissions(integer.intValue(), hashset);
        } else
        {
            ArrayList arraylist;
            try
            {
                arraylist = (ArrayList)ReflectUtil.getProperty(obj, "requestedPermissions");
            }
            catch(Exception exception1)
            {
                arraylist = null;
            }
            if(arraylist != null)
            {
                int i = arraylist.size();
                if(i > 0)
                    extractPerms((String[])arraylist.toArray(new String[i]), hashset);
            }
        }
        iterator = hashset.iterator();
        do
        {
label0:
            {
                if(iterator.hasNext())
                    break label0;
                mPermFormat = new String("%1$s, %2$s");
            }
            if(true)
                continue;
            PermissionInfo permissioninfo = (PermissionInfo)iterator.next();
            mPermsList.add(permissioninfo);
        } while(true);
        if(true) goto _L1; else goto _L3
_L3:
    }

    public AppSecurityPermissions(Context context, String s)
    {
        HashSet hashset;
        localLOGV = false;
        mDefaultGrpName = "DefaultGrp";
        mContext = context;
        mPm = mContext.getPackageManager();
        mPermsList = new ArrayList();
        hashset = new HashSet();
        PackageInfo packageinfo = mPm.getPackageInfo(s, 4096);
        Iterator iterator;
        if(packageinfo.applicationInfo != null && packageinfo.applicationInfo.uid != -1)
            getAllUsedPermissions(packageinfo.applicationInfo.uid, hashset);
        iterator = hashset.iterator();
_L5:
        if(iterator.hasNext()) goto _L2; else goto _L1
_L1:
        mPermFormat = new String("%1$s, %2$s");
_L3:
        return;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        (new StringBuilder("Could'nt retrieve permissions for package:")).append(s).toString();
        if(true) goto _L3; else goto _L2
_L2:
        PermissionInfo permissioninfo = (PermissionInfo)iterator.next();
        mPermsList.add(permissioninfo);
        if(true) goto _L5; else goto _L4
_L4:
    }

    public AppSecurityPermissions(Context context, List list)
    {
        localLOGV = false;
        mDefaultGrpName = "DefaultGrp";
        mContext = context;
        mPm = mContext.getPackageManager();
        mPermsList = list;
        mPermFormat = new String("%1$s, %2$s");
    }

    private void aggregateGroupDescs(Map map, Map map1)
    {
_L2:
        return;
        if(map == null || map1 == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = map.keySet().iterator();
_L5:
        if(!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        String s;
        String s1;
        List list;
        s = null;
        s1 = (String)iterator.next();
        list = (List)map.get(s1);
        if(list == null) goto _L5; else goto _L4
_L4:
        Iterator iterator1;
label0:
        {
            for(iterator1 = list.iterator(); iterator1.hasNext();)
                break label0;

            if(s != null)
            {
                if(localLOGV)
                    (new StringBuilder("Group:")).append(s1).append(" description:").append(s.toString()).toString();
                map1.put(s1, s.toString());
            }
        }
          goto _L5
          goto _L2
        s = formatPermissions(s, ((PermissionInfo)iterator1.next()).loadLabel(mPm));
          goto _L4
    }

    private String canonicalizeGroupDesc(String s)
    {
        if(s != null && s.length() != 0) goto _L2; else goto _L1
_L1:
        s = null;
_L4:
        return s;
_L2:
        int i = s.length();
        if(s.charAt(i + -1) == '.')
            s = s.substring(0, i + -1);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void extractPerms(String as[], Set set)
    {
        int i = 0;
        if(as != null && as.length != 0)
        {
            int j = as.length;
            while(i < j) 
            {
                String s = as[i];
                try
                {
                    PermissionInfo permissioninfo = mPm.getPermissionInfo(s, 0);
                    if(permissioninfo != null)
                        set.add(permissioninfo);
                }
                catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
                {
                    (new StringBuilder("Ignoring unknown permission:")).append(s).toString();
                }
                i++;
            }
        }
    }

    private String formatPermissions(String s, CharSequence charsequence)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        String s1;
        if(charsequence == null)
            s1 = null;
        else
            s1 = charsequence.toString();
_L4:
        return s1;
_L2:
        s1 = canonicalizeGroupDesc(s);
        if(charsequence != null)
        {
            String s2 = mPermFormat;
            Object aobj[] = new Object[2];
            aobj[0] = s1;
            aobj[1] = charsequence.toString();
            s1 = String.format(s2, aobj);
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private void getAllUsedPermissions(int i, Set set)
    {
        String as[] = mPm.getPackagesForUid(i);
        if(as != null && as.length != 0)
        {
            int j = as.length;
            int k = 0;
            while(k < j) 
            {
                getPermissionsForPackage(as[k], set);
                k++;
            }
        }
    }

    private void getPermissionsForPackage(String s, Set set)
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = mPm.getPackageInfo(s, 4096);
        }
        catch(android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            (new StringBuilder("Could'nt retrieve permissions for package:")).append(s).toString();
            continue; /* Loop/switch isn't completed */
        }
        if(packageinfo != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        String as[] = packageinfo.requestedPermissions;
        if(as != null)
            extractPerms(as, set);
        if(true) goto _L1; else goto _L3
_L3:
    }

    private boolean isDisplayablePermission(PermissionInfo permissioninfo)
    {
        boolean flag = true;
        if(permissioninfo.protectionLevel != flag && permissioninfo.protectionLevel != 0)
            flag = false;
        return flag;
    }

    public String getGroupLabel(String s)
    {
        if(s != null) goto _L2; else goto _L1
_L1:
        String s1 = mDefaultGrpLabel;
_L4:
        return s1;
_L2:
        CharSequence charsequence = (CharSequence)mGroupLabelCache.get(s);
        if(charsequence != null)
        {
            s1 = charsequence.toString();
            continue; /* Loop/switch isn't completed */
        }
        PermissionGroupInfo permissiongroupinfo = mPm.getPermissionGroupInfo(s, 0);
        String s2 = permissiongroupinfo.loadLabel(mPm).toString();
        mGroupLabelCache.put(s, s2);
        s1 = s2.toString();
        continue; /* Loop/switch isn't completed */
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        (new StringBuilder("Invalid group name:")).append(s).toString();
        s1 = null;
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int getPermissionCount()
    {
        return mPermsList.size();
    }

    public Map getPermissions(boolean flag)
    {
        HashMap hashmap;
        HashMap hashmap1;
        PermissionInfoComparator permissioninfocomparator;
        mGroupLabelCache = new HashMap();
        mGroupLabelCache.put(mDefaultGrpName, mDefaultGrpLabel);
        mDangerousMap = new HashMap();
        mNormalMap = new HashMap();
        hashmap = new HashMap();
        hashmap1 = new HashMap();
        permissioninfocomparator = new PermissionInfoComparator(mPm);
        if(mPermsList == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = mPermsList.iterator();
_L6:
        if(iterator.hasNext()) goto _L4; else goto _L3
_L3:
        aggregateGroupDescs(hashmap, mDangerousMap);
        aggregateGroupDescs(hashmap1, mNormalMap);
_L2:
        mCurrentState = State.NO_PERMS;
        Map map;
        if(mDangerousMap.size() > 0)
        {
            State state;
            PermissionInfo permissioninfo;
            HashMap hashmap2;
            String s;
            List list;
            ArrayList arraylist;
            int i;
            if(mNormalMap.size() > 0)
                state = State.BOTH;
            else
                state = State.DANGEROUS_ONLY;
            mCurrentState = state;
        } else
        if(mNormalMap.size() > 0)
            mCurrentState = State.NORMAL_ONLY;
        if(localLOGV)
            (new StringBuilder("mCurrentState=")).append(mCurrentState).toString();
        if(flag)
            map = mDangerousMap;
        else
            map = mNormalMap;
        return map;
_L4:
        permissioninfo = (PermissionInfo)iterator.next();
        if(localLOGV)
            (new StringBuilder("Processing permission:")).append(permissioninfo.name).toString();
        if(!isDisplayablePermission(permissioninfo))
        {
            if(localLOGV)
                (new StringBuilder("Permission:")).append(permissioninfo.name).append(" is not displayable").toString();
        } else
        {
            if(permissioninfo.protectionLevel == 1)
                hashmap2 = hashmap;
            else
                hashmap2 = hashmap1;
            if(permissioninfo.group == null)
                s = mDefaultGrpName;
            else
                s = permissioninfo.group;
            if(localLOGV)
                (new StringBuilder("Permission:")).append(permissioninfo.name).append(" belongs to group:").append(s).toString();
            list = (List)hashmap2.get(s);
            if(list == null)
            {
                arraylist = new ArrayList();
                hashmap2.put(s, arraylist);
                arraylist.add(permissioninfo);
            } else
            {
                i = Collections.binarySearch(list, permissioninfo, permissioninfocomparator);
                if(localLOGV)
                    (new StringBuilder("idx=")).append(i).append(", list.size=").append(list.size()).toString();
                if(i < 0)
                    list.add(-1 + -i, permissioninfo);
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    private static final String TAG = "AppSecurityPermissions";
    private boolean localLOGV;
    private Context mContext;
    private State mCurrentState;
    private Map mDangerousMap;
    private String mDefaultGrpLabel;
    private String mDefaultGrpName;
    private HashMap mGroupLabelCache;
    private Map mNormalMap;
    private String mPermFormat;
    private List mPermsList;
    private PackageManager mPm;

    private class PermissionInfoComparator
        implements Comparator
    {

        public final int compare(PermissionInfo permissioninfo, PermissionInfo permissioninfo1)
        {
            CharSequence charsequence = permissioninfo.loadLabel(mPm);
            CharSequence charsequence1 = permissioninfo1.loadLabel(mPm);
            return sCollator.compare(charsequence, charsequence1);
        }

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((PermissionInfo)obj, (PermissionInfo)obj1);
        }

        private PackageManager mPm;
        private final Collator sCollator = Collator.getInstance();

        PermissionInfoComparator(PackageManager packagemanager)
        {
            mPm = packagemanager;
        }
    }


    private class State extends Enum
    {

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/tencent/qqpim/utils/app/AppSecurityPermissions$State, s);
        }

        public static State[] values()
        {
            State astate[] = ENUM$VALUES;
            int i = astate.length;
            State astate1[] = new State[i];
            System.arraycopy(astate, 0, astate1, 0, i);
            return astate1;
        }

        public static final State BOTH;
        public static final State DANGEROUS_ONLY;
        private static final State ENUM$VALUES[];
        public static final State NORMAL_ONLY;
        public static final State NO_PERMS;

        static 
        {
            NO_PERMS = new State("NO_PERMS", 0);
            DANGEROUS_ONLY = new State("DANGEROUS_ONLY", 1);
            NORMAL_ONLY = new State("NORMAL_ONLY", 2);
            BOTH = new State("BOTH", 3);
            State astate[] = new State[4];
            astate[0] = NO_PERMS;
            astate[1] = DANGEROUS_ONLY;
            astate[2] = NORMAL_ONLY;
            astate[3] = BOTH;
            ENUM$VALUES = astate;
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }

}
