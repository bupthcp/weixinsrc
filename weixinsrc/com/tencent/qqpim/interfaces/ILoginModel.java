// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package com.tencent.qqpim.interfaces;


public interface ILoginModel
{

    public abstract void addSavedAccount(String as[], String as1[], int i);

    public abstract String getDefaultAccount();

    public abstract String getDefaultPWD();

    public abstract String getLoginKey();

    public abstract int getSavedAccount(String as[], String as1[], int i);

    public abstract boolean getSavedLoginPWDFlag();

    public abstract String getVerifyImageURL();

    public abstract int inputPimMD5Password(byte abyte0[]);

    public abstract int inputPimPassword(String s);

    public abstract int inputVerifyCode(String s);

    public abstract boolean isUserStopped();

    public abstract int login(String s, String s1);

    public abstract int loginByMd5(String s, byte abyte0[]);

    public abstract void setDefaultAccount(String s);

    public abstract void setDefaultPWD(String s);

    public abstract void setSavedLoginPWDFlag(boolean flag);

    public abstract void stop();
}
