.class public interface abstract Lcom/tencent/qqpim/interfaces/ILoginModel;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addSavedAccount([Ljava/lang/String;[Ljava/lang/String;I)V
.end method

.method public abstract getDefaultAccount()Ljava/lang/String;
.end method

.method public abstract getDefaultPWD()Ljava/lang/String;
.end method

.method public abstract getLoginKey()Ljava/lang/String;
.end method

.method public abstract getSavedAccount([Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method public abstract getSavedLoginPWDFlag()Z
.end method

.method public abstract getVerifyImageURL()Ljava/lang/String;
.end method

.method public abstract inputPimMD5Password([B)I
.end method

.method public abstract inputPimPassword(Ljava/lang/String;)I
.end method

.method public abstract inputVerifyCode(Ljava/lang/String;)I
.end method

.method public abstract isUserStopped()Z
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract loginByMd5(Ljava/lang/String;[B)I
.end method

.method public abstract setDefaultAccount(Ljava/lang/String;)V
.end method

.method public abstract setDefaultPWD(Ljava/lang/String;)V
.end method

.method public abstract setSavedLoginPWDFlag(Z)V
.end method

.method public abstract stop()V
.end method
