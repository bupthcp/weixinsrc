.class public Lcom/tencent/mm/modelgetcontact/GetContactService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# instance fields
.field private a:Z

.field private b:Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

.field private c:Lcom/tencent/mm/algorithm/LRUMap;

.field private d:I

.field private e:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private f:I

.field private g:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private h:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->b:Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->c:Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v0, 0x32

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->d:I

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelgetcontact/GetContactService$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelgetcontact/GetContactService$1;-><init>(Lcom/tencent/mm/modelgetcontact/GetContactService;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->f:I

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/modelgetcontact/GetContactService$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/modelgetcontact/GetContactService$2;-><init>(Lcom/tencent/mm/modelgetcontact/GetContactService;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->h:J

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    iput-boolean v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/modelgetcontact/GetContactService;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    if-eqz v1, :cond_0

    iget-wide v4, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->h:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x258

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    iput-boolean v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    :cond_0
    iget-boolean v1, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v7, "MicroMsg.GetContactService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "username:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mapCnt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    iget-object v7, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->c:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v6, v0}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v0, "MicroMsg.GetContactService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LRUMap Max now :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartNetscene req lst:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " running:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    if-nez v0, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iput-wide v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->h:J

    iput-boolean v10, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    new-instance v0, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    invoke-direct {v0, v5}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->b:Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->b:Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/modelgetcontact/GetContactService;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    return v0
.end method


# virtual methods
.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->b:Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGYNetEnd errType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " will retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->g:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0

    :cond_2
    check-cast p4, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;

    invoke-virtual {p4}, Lcom/tencent/mm/modelgetcontact/NetSceneGetContact;->d()Lcom/tencent/mm/protocal/MMGetContact$Resp;

    move-result-object v3

    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGYNetEnd succ:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " failed:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " errName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->e()Ljava/util/List;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const-string v5, "MicroMsg.GetContactService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSceneEnd mod contact: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;

    invoke-static {v0}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/protocal/MMSync$CmdModContact;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v5

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMSync$CmdModContact;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    const-string v4, "MicroMsg.GetContactService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSceneEnd getFailed ErrName:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/protocal/MMGetContact$Resp;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a(Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_4
    iput-boolean v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->a:Z

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.GetContactService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add Contact :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/modelgetcontact/GetContactInfo;

    invoke-direct {v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->z()Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a(Lcom/tencent/mm/modelgetcontact/GetContactInfo;)Z

    iget-object v0, p0, Lcom/tencent/mm/modelgetcontact/GetContactService;->e:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x42

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
