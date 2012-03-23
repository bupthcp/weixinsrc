// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.object;


public class GroupValue
{

    public GroupValue()
    {
    }

    public String getAccountName()
    {
        return accountName;
    }

    public String getAccountType()
    {
        return accountType;
    }

    public String getGroupName()
    {
        return groupName;
    }

    public int getId()
    {
        return id;
    }

    public void setAccountName(String s)
    {
        accountName = s;
    }

    public void setAccountType(String s)
    {
        accountType = s;
    }

    public void setGroupName(String s)
    {
        groupName = s;
    }

    public void setId(int i)
    {
        id = i;
    }

    private String accountName;
    private String accountType;
    private String groupName;
    private int id;
}
