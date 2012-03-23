.class public final Lcom/tencent/mm/modelbottle/BottleLogic;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/tencent/mm/modelbottle/BottleLogic;->a:I

    sput v0, Lcom/tencent/mm/modelbottle/BottleLogic;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/tencent/mm/modelbottle/BottleLogic;->a:I

    return v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "@bottle:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lcom/tencent/mm/modelbottle/BottleLogic;->a:I

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/tencent/mm/modelbottle/BottleLogic;->b:I

    return v0
.end method

.method public static b(I)V
    .locals 0

    sput p0, Lcom/tencent/mm/modelbottle/BottleLogic;->b:I

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelmulti/NetSceneSync;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelmulti/NetSceneSync;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->p(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/MsgInfoStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/modelbottle/BottleLogic;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->H()Lcom/tencent/mm/modelbottle/BottleInfoStorage;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tencent/mm/modelbottle/BottleInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelbottle/BottleInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->d()I

    move-result v1

    if-ne v1, v8, :cond_0

    new-instance v3, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v3}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v3, p0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->h()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gtz v1, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->g()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->e()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/modelbottle/BottleLogic;->c(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v3, v8}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {v3}, Lcom/tencent/mm/storage/MsgInfo;->d()I

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->f()I

    move-result v1

    int-to-long v4, v1

    const/4 v1, 0x0

    invoke-static {v0, v4, v5, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Lcom/tencent/mm/storage/MsgInfo;)J

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->h()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/tencent/mm/modelbottle/BottleInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static c()I
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ConversationStorage;->e()I

    move-result v0

    return v0
.end method

.method public static c(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x22

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x2b

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v0

    const v3, 0x8000

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->h()Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
