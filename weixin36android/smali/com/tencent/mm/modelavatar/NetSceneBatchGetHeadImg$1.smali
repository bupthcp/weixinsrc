.class final Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d()Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/tencent/mm/modelavatar/NetSceneBatchGetHeadImg;->h()Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->b:[B

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->b:[B

    array-length v2, v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    new-instance v2, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v3

    iget-object v4, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->a:Ljava/lang/String;

    iget-object v5, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->b:[B

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;[B)Z

    const-string v3, "MicroMsg.NetSceneBatchGetHeadImg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avatar save bufimg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->b:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->a:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
