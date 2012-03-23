.class public final Lcom/tencent/mm/model/MsgInfoStorageLogic;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/storage/MsgInfo;)F
    .locals 5

    const/high16 v4, 0x4120

    const/high16 v1, 0x3f80

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v2

    long-to-float v0, v2

    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(J)I
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    cmp-long v1, v1, p0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->b(J)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x3a

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->c()I

    move-result v1

    if-eq v1, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 6

    const-wide/16 v4, 0x3e8

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    mul-long v2, p1, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :goto_0
    return-wide v0

    :cond_1
    mul-long v0, p1, v4

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v3, "context is null"

    if-eqz p4, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, "username is null"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    const-string v3, ""

    sparse-switch p3, :sswitch_data_0

    :cond_0
    move-object v0, v3

    :goto_2
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->o(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v4, 0x10101

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    if-nez v3, :cond_11

    const v0, 0x7f0a019f

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_3
    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_4
    return-object v4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :sswitch_0
    const v0, 0x7f0a0022

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_1
    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->a(Ljava/lang/String;)Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$EmojiContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0025

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    const v0, 0x7f0a0022

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p0, p1, p2, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto :goto_2

    :sswitch_3
    invoke-static {p4, p0, p1, p2, v4}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto :goto_2

    :sswitch_4
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const v0, 0x7f0a0023

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p0, p1, p2, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-direct {v0, p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_7
    :goto_5
    const v0, 0x7f0a0023

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    const-string p2, ""

    goto :goto_5

    :sswitch_5
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    const v0, 0x7f0a0024

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, p0, p1, p2, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :cond_a
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;

    invoke-direct {v0, p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_b
    :goto_6
    const v0, 0x7f0a0024

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    const-string p2, ""

    goto :goto_6

    :sswitch_6
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$VerifyContent;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->h()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const v5, 0x7f0a009f

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_d
    move-object v0, v3

    goto/16 :goto_2

    :pswitch_1
    const v5, 0x7f0a00a0

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :pswitch_2
    const v5, 0x7f0a00a1

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :pswitch_3
    const v5, 0x7f0a00a2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :sswitch_7
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    const v5, 0x7f0a00a3

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_e
    move-object v0, v3

    goto/16 :goto_2

    :sswitch_8
    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/mm/storage/MsgInfoStorage;->l(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$MailContent;

    move-result-object v0

    const v5, 0x7f0a0098

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->c()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo$MailContent;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :sswitch_9
    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1f

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/tencent/mm/storage/MsgInfoStorage;->n(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    if-ne p0, v1, :cond_f

    const v6, 0x7f0a00a8

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :cond_f
    const v6, 0x7f0a00a7

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {p4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :sswitch_a
    invoke-static {p2}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1d

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    :goto_a
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->A()Ljava/lang/String;

    move-result-object v0

    if-ne p0, v1, :cond_10

    const v0, 0x7f0a0184

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :cond_10
    const v5, 0x7f0a0185

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-virtual {p4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    move-object v0, v3

    goto/16 :goto_2

    :cond_11
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_12

    const v0, 0x7f0a009a

    invoke-virtual {p4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_12
    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x48190800

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    const v0, 0x7f0a0099

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_13
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-ne v1, p0, :cond_15

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    move-object v4, v0

    goto/16 :goto_4

    :cond_14
    const-string v0, "@bottle:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v1, :cond_2

    aget-object v4, v0, v1

    goto/16 :goto_4

    :cond_15
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    aget-object v2, v3, v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v2

    :goto_b
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_16
    const-string v0, "@bottle:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    if-le v3, v1, :cond_17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_17
    move-object v4, v2

    goto/16 :goto_4

    :cond_18
    invoke-static {p1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-static {p2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_19

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_19
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    if-ne p0, v1, :cond_1a

    move-object p2, v0

    goto/16 :goto_3

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_3

    :cond_1b
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move-object p2, v0

    goto/16 :goto_3

    :cond_1c
    move-object v2, v4

    goto/16 :goto_b

    :cond_1d
    move-object v0, p1

    goto/16 :goto_9

    :cond_1e
    move-object v0, p1

    goto/16 :goto_a

    :cond_1f
    move-object v0, p1

    goto/16 :goto_7

    :cond_20
    move-object v0, p1

    goto/16 :goto_8

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_3
        0xd -> :sswitch_2
        0x17 -> :sswitch_0
        0x21 -> :sswitch_0
        0x22 -> :sswitch_4
        0x23 -> :sswitch_8
        0x24 -> :sswitch_3
        0x25 -> :sswitch_6
        0x27 -> :sswitch_2
        0x28 -> :sswitch_7
        0x2a -> :sswitch_9
        0x2b -> :sswitch_5
        0x2f -> :sswitch_1
        0x30 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const v2, 0x7f0a019f

    const v1, 0x7f0a00a4

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->g()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_2
    const-string v0, ""

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    if-eqz p3, :cond_5

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p3, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    :cond_5
    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    if-eqz p4, :cond_0

    move-object p3, p4

    goto :goto_0

    :cond_6
    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    invoke-static {p2}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    if-ne p1, v5, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_8

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :cond_8
    move-object p3, p4

    goto :goto_1

    :cond_9
    if-eqz p4, :cond_0

    move-object p3, p4

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ne p1, v5, :cond_b

    :goto_2
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p4, :cond_c

    :goto_3
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_0

    :cond_b
    const v1, 0x7f0a00a5

    goto :goto_2

    :cond_c
    move-object p3, p4

    goto :goto_3
.end method

.method public static a()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ConversationStorage;->a()Z

    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->c()V

    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->d()V

    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1, p0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u3001"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "\u3001"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0a035f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    return-void
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 9

    const/4 v1, 0x4

    const/4 v0, 0x3

    const/4 v8, 0x1

    const/4 v7, -0x2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    const-string v3, "qqsync"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    :cond_0
    const-string v3, "qqsync"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v2, p1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    const-string v0, "MicroMsg.MsgInfoStorageLogic"

    const-string v1, "qqsync reminder new"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "qqsync"

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v2, v8}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    if-eqz p1, :cond_4

    invoke-virtual {v2, p1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->d()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    const-string v0, "MicroMsg.MsgInfoStorageLogic"

    const-string v1, "qqsync reminder updated"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/tencent/mm/storage/MsgInfo;)J
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static b()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "bottlemessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "bottlemessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)J
    .locals 7

    const-wide/16 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v3

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-lez v3, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v0

    add-long/2addr v0, v5

    :cond_0
    return-wide v0
.end method

.method public static c()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "qmessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "qmessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/tencent/mm/storage/MsgInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;)Z

    move-result v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->i(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Landroid/database/Cursor;)V

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "tmessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/MsgInfo;

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->f(Lcom/tencent/mm/storage/MsgInfo;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    const-string v1, "tmessage"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Lcom/tencent/mm/storage/MsgInfo;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v2

    if-ne v2, v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v2, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->c()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public static e(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    new-instance v1, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->e()V

    invoke-virtual {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(JLcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_0
.end method

.method private static f(Lcom/tencent/mm/storage/MsgInfo;)V
    .locals 5

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MicroMsg.VideoLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERR: Delete file Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " msg:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/storage/MsgInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
