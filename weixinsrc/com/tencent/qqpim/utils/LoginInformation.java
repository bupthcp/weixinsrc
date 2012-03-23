// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.utils;


public class LoginInformation
{

    private LoginInformation()
    {
        logined = false;
        loginedNeedResponse = false;
        registerOkAndReadyForLogin = false;
    }

    public static LoginInformation getInf()
    {
        return inf;
    }

    public static LoginInformation getSingleInstance()
    {
        if(inf == null)
            inf = new LoginInformation();
        return inf;
    }

    public static void setInf(LoginInformation logininformation)
    {
        inf = logininformation;
    }

    public void clearLoginInformation()
    {
        loginKey = null;
        loginedAccount = null;
        logined = false;
    }

    public String getLoginKey()
    {
        return loginKey;
    }

    public String getLoginedAccount()
    {
        return loginedAccount;
    }

    public boolean isLogined()
    {
        return logined;
    }

    public boolean isLoginedNeedResponse()
    {
        return loginedNeedResponse;
    }

    public boolean isRegisterOkAndReadyForLogin()
    {
        return registerOkAndReadyForLogin;
    }

    public void setLoginKey(String s)
    {
        loginKey = s;
    }

    public void setLogined(boolean flag)
    {
        logined = flag;
    }

    public void setLoginedAccount(String s)
    {
        loginedAccount = s;
    }

    public void setLoginedNeedResponse(boolean flag)
    {
        loginedNeedResponse = flag;
    }

    public void setRegisterOkAndReadyForLogin(boolean flag)
    {
        registerOkAndReadyForLogin = flag;
    }

    private static LoginInformation inf = null;
    private String loginKey;
    private boolean logined;
    private String loginedAccount;
    private boolean loginedNeedResponse;
    private boolean registerOkAndReadyForLogin;

}
