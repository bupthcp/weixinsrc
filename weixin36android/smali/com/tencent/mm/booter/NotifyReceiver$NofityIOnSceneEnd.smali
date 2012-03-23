.class Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 12

    invoke-virtual/range {p4 .. p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->d()Lcom/tencent/mm/platformtools/MMWakerLock;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->d()Lcom/tencent/mm/platformtools/MMWakerLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MMWakerLock;->b()V

    :cond_1
    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->e()Lcom/tencent/mm/platformtools/MMWakerLock;

    return-void

    :pswitch_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/ui/MMAppMgr;->d()Z

    move-result v0

    if-nez v0, :cond_2

    sparse-switch p2, :sswitch_data_0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->p()Lcom/tencent/mm/booter/MMNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/booter/MMNotification;->a()V

    :cond_2
    :goto_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "begin post sync task"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->j()Z

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v2, 0x10100

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10102

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x48190800

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ZLjava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10102

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/modelgetvuserinfo/SceneGetVUserInfo;->a(Z)V

    invoke-static {}, Lcom/tencent/mm/model/PostTaskCollectGoupCard;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->w()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10501

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_4
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const v0, 0x10601

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v2

    const v0, 0x10602

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v3

    const v0, 0x10603

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v4

    const v0, 0x10604

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v5

    const-string v6, "medianote"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/storage/MsgInfoStorage;->g(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "medianote"

    const/4 v8, 0x3

    invoke-virtual {v5, v7, v8}, Lcom/tencent/mm/storage/MsgInfoStorage;->g(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "medianote"

    const/16 v9, 0x22

    invoke-virtual {v5, v8, v9}, Lcom/tencent/mm/storage/MsgInfoStorage;->g(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "medianote"

    const/16 v10, 0x2b

    invoke-virtual {v5, v9, v10}, Lcom/tencent/mm/storage/MsgInfoStorage;->g(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v9

    sub-int v10, v6, v2

    if-lez v10, :cond_4

    new-instance v10, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    sub-int v2, v6, v2

    const/4 v11, 0x1

    invoke-direct {v10, v2, v11}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;-><init>(II)V

    invoke-virtual {v9, v10}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const v2, 0x10601

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_4
    sub-int v2, v7, v3

    if-lez v2, :cond_5

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    sub-int v3, v7, v3

    const/4 v6, 0x3

    invoke-direct {v2, v3, v6}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;-><init>(II)V

    invoke-virtual {v9, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const v2, 0x10602

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_5
    sub-int v2, v8, v4

    if-lez v2, :cond_6

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    sub-int v3, v8, v4

    const/16 v4, 0x22

    invoke-direct {v2, v3, v4}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;-><init>(II)V

    invoke-virtual {v9, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const v2, 0x10603

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_6
    sub-int v2, v5, v0

    if-lez v2, :cond_7

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;

    sub-int v0, v5, v0

    const/16 v3, 0x2b

    invoke-direct {v2, v0, v3}, Lcom/tencent/mm/storage/OpLogStorage$OpMediaNote;-><init>(II)V

    invoke-virtual {v9, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    const v0, 0x10604

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_7
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10501

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10502

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10504

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const v1, -0x1869f

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v0

    const v1, -0x1869f

    if-eq v0, v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;

    const/16 v3, 0x9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->g()Lcom/tencent/mm/storage/OpLogStorage;

    move-result-object v0

    new-instance v2, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;

    invoke-direct {v2, v1}, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/OpLogStorage;->a(Lcom/tencent/mm/storage/OpLogStorage$Operation;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10504

    const v2, -0x1869f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_9
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10502

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    :cond_a
    invoke-static {}, Lcom/tencent/mm/model/PostTaskFMessageCardStat;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const v1, 0x10803

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_6
    if-eqz v0, :cond_b

    invoke-static {}, Lcom/tencent/mm/model/PostTaskLocationOpenStat;->a()V

    :cond_b
    invoke-static {}, Lcom/tencent/mm/model/PostTaskUpdateCtRemark;->a()V

    invoke-static {}, Lcom/tencent/mm/model/PostTaskReportEgg;->a()V

    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "end post sync task"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->p()Lcom/tencent/mm/booter/MMNotification;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a012b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/MMNotification;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "MicroMsg.NotifyReceiver"

    const-string v1, "showAuthFailNotification"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->p()Lcom/tencent/mm/booter/MMNotification;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/booter/NotifyReceiver;->c()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/booter/MMNotification;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->x()V

    goto/16 :goto_1

    :sswitch_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd$1;-><init>(Lcom/tencent/mm/booter/NotifyReceiver$NofityIOnSceneEnd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :sswitch_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Util;->d(J)J

    move-result-wide v1

    const-wide/32 v3, 0x15180

    cmp-long v1, v1, v3

    if-gez v1, :cond_c

    const-string v1, "MicroMsg.NotifyReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip update notification, last check="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->p()Lcom/tencent/mm/booter/MMNotification;

    move-result-object v1

    const/16 v0, -0x11

    if-ne p2, v0, :cond_d

    const/4 v0, 0x2

    :goto_7
    invoke-virtual {v1, v0}, Lcom/tencent/mm/booter/MMNotification;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->e()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0xf423f -> :sswitch_2
        -0x64 -> :sswitch_1
        -0x48 -> :sswitch_0
        -0x11 -> :sswitch_3
        -0x10 -> :sswitch_3
        -0x9 -> :sswitch_0
        -0x6 -> :sswitch_0
        -0x4 -> :sswitch_0
        -0x3 -> :sswitch_0
    .end sparse-switch
.end method
