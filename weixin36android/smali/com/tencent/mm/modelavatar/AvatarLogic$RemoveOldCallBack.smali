.class Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;


# instance fields
.field private a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public final a()Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "MicroMsg.AvatarLogic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveOldAvatar left count:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    if-le v4, v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->c()I

    move-result v0

    const/16 v3, 0x12c

    if-lt v0, v3, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/modelavatar/AvatarLogic$RemoveOldCallBack;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->d()I

    move v0, v2

    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storagebase/SqliteDB;->b()I

    move-result v5

    add-int/lit8 v0, v4, -0x1

    move v3, v0

    :goto_1
    add-int/lit8 v0, v4, -0x1e

    if-lt v3, v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->e()I

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/modelavatar/AvatarLogic;->b()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Z)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->b(I)I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->e()Lcom/tencent/mm/storagebase/SqliteDB;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(I)I

    move v0, v1

    goto :goto_0
.end method
