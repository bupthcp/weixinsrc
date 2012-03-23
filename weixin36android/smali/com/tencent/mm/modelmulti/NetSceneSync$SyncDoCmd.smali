.class public Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->c:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a:Z

    iput-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->b:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->c:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;)V
    .locals 4

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->d()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;I)I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Lcom/tencent/mm/protocal/MMSync$CmdModContact;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/model/ContactStorageLogic;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "MicroMsg.NetSceneSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupCard "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->j()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->v()I

    move-result v3

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->w()I

    move-result v4

    and-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/Contact;->d(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->t()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->c(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->m(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->l(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->h()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->g(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->n(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->d()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->h(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->l()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->f(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->n()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->A()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->j(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->o(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->y()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->l(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->D()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->m(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->r(Ljava/lang/String;)V

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userName  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weibo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weiboNickName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->D()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->q(Ljava/lang/String;)V

    :cond_1
    new-instance v3, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v3}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->z()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x()I

    move-result v0

    if-eq v0, v7, :cond_2

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_a

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->i(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@chatroom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->q()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isContact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " flag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->D()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->D()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "MicroMsg.NetSceneSync"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remarkName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storage/Contact;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->i()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/model/ChatroomMembersLogic;->a(Ljava/lang/String;Ljava/util/List;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->q()Ljava/lang/String;

    move-result-object v0

    const-string v2, "server.chatroom.hardcode_nicks"

    invoke-static {v2}, Lcom/tencent/mm/platformtools/SystemProperty;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_3
    if-ge v1, v3, :cond_7

    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ChatroomMembersLogic;->a(Ljava/lang/String;)Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->q()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdModContact;->x()I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/Contact;->i(I)V

    invoke-virtual {v3, v6}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    goto/16 :goto_2

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private a(Lcom/tencent/mm/storage/MsgInfo;Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "no notifiers, ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/MsgInfo;->e()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "not new msg, ignore"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/storage/RoleInfo$Parser;

    invoke-virtual {p2}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/storage/RoleInfo$Parser;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->c()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "account no notification"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->b:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->b:Z

    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/IOnNewMsgNotify;

    invoke-interface {v0, p1}, Lcom/tencent/mm/model/IOnNewMsgNotify;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/model/IOnNewMsgNotify;

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/tencent/mm/model/IOnNewMsgNotify;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdItem;)Z
    .locals 14

    const/4 v4, 0x3

    const/4 v8, -0x1

    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "account storage disabled, discard all commands"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCmd: no processing method, cmd id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdItem;->a()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    :pswitch_1
    move v3, v2

    goto :goto_0

    :pswitch_2
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModContact;

    invoke-static {p1}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/protocal/MMSync$CmdModContact;)V

    goto :goto_1

    :pswitch_3
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdDelContact;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdDelContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->f(Ljava/lang/String;)I

    goto :goto_1

    :pswitch_4
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->w()Lcom/tencent/mm/modelgetcontact/GetContactService;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelgetcontact/GetContactService;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "readerapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "blogapp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const v0, 0xbd357f

    invoke-virtual {p1, v0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c(I)V

    :cond_4
    invoke-static {}, Lcom/tencent/mm/modelmulti/NetSceneSync;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelbase/IMessageExtension;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/tencent/mm/modelbase/IMessageExtension;->a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extension declared but skipped msg, type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", svrid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/storage/MsgInfo;Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_8

    :cond_7
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "neither from-user nor to-user can be empty"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v6

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->e()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v8

    invoke-virtual {v5, v1, v8}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_9

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->k()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v8

    const/16 v9, 0x28

    if-ne v8, v9, :cond_10

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_e

    :cond_b
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "possible friend msg : content is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move v1, v3

    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->i()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_f

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->i()J

    move-result-wide v9

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->f()I

    move-result v11

    invoke-static {v9, v10, v11}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(JI)Z

    :cond_f
    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_10

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->f()I

    move-result v8

    invoke-static {v9, v8}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    :cond_10
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_13

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_12

    :cond_11
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "possible friend msg : content is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_12
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$FriendContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_13

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$FriendContent;->f()I

    move-result v8

    invoke-static {v9, v8}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    :cond_13
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v8

    const/16 v9, 0x25

    if-ne v8, v9, :cond_16

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_14

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-gtz v8, :cond_15

    :cond_14
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "verify msg : content is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_15
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/MsgInfo$VerifyContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_16

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/tencent/mm/storage/MsgInfo$VerifyContent;->g()I

    move-result v8

    invoke-static {v9, v8}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    :cond_16
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->i()I

    move-result v8

    if-ne v8, v13, :cond_17

    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_17

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v8

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->i()I

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v9

    invoke-virtual {v6, v8, v9}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a([BI)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_17

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "THUMBNAIL://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/tencent/mm/storage/RoleStorage;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    move v0, v2

    :goto_4
    if-eqz v0, :cond_1b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    move-object v3, v1

    :goto_5
    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v0

    const/16 v3, 0x2710

    if-ne v0, v3, :cond_19

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    :cond_19
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-nez v0, :cond_1d

    invoke-static {v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->a(J)V

    :goto_6
    invoke-virtual {v1}, Lcom/tencent/mm/storage/MsgInfo;->f()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/storage/MsgInfo;Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)V

    goto/16 :goto_1

    :cond_1a
    move v0, v3

    goto :goto_4

    :cond_1b
    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    if-le v0, v4, :cond_1c

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    move-object v3, v1

    goto :goto_5

    :cond_1c
    move v0, v4

    move-object v3, v1

    goto :goto_5

    :cond_1d
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v0

    invoke-virtual {v5, v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_6

    :pswitch_5
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;

    new-instance v1, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v1}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/MsgInfo;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->f()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->e()I

    move-result v0

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    goto/16 :goto_1

    :cond_1e
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMsgStatus;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_1f
    const-string v0, "MicroMsg.NetSceneSync"

    const-string v5, "doCmd : CmdModMsgStatus not found this msg"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "invalid mod msg cmd, unknown talker"

    invoke-static {v0, v3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    goto :goto_7

    :pswitch_6
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->l()I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v5

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mod user info, bitflag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userinfo state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    :cond_20
    new-instance v1, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    :cond_21
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->C()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    const-wide/16 v6, -0x2

    invoke-virtual {v1, v6, v7}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storage/Contact;)Z

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCmd : bindEmail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->p()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doCmd : bindMobile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->q()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->q()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processModUserImg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bitFlag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->s()[B

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doCmd : status "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/mm/protocal/MMProfile;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->h()I

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Lcom/tencent/mm/model/SelfPersonCard;

    invoke-direct {v0}, Lcom/tencent/mm/model/SelfPersonCard;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->c()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->a(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/SelfPersonCard;->d(Ljava/lang/String;)V

    const-string v1, "MicroMsg.NetSceneSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getPersonalCard weibo url : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/model/SelfPersonCard;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nickName :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->E()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/model/SelfPersonCard;->a(Lcom/tencent/mm/model/SelfPersonCard;)Lcom/tencent/mm/storage/OpLogStorage$OpModUserInfo;

    :cond_22
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userinfo Plugstate: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w()I

    move-result v5

    invoke-static {v5}, Lcom/tencent/mm/protocal/MMProfile;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x22

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->w()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/model/AccountStorage;->b(I)V

    const/16 v0, 0x2008

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->t()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/16 v0, 0x2009

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x16

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/16 v0, 0x2010

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->v()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x8

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const v0, 0x10201

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->x()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const v0, 0x10202

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/16 v0, 0x28

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/16 v0, 0x29

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->D()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const/16 v0, 0x2b

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCmd PluginSwitch:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->A()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " WeiboFlag:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->D()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x33c48be9

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doCmd USERINFO_TXNEWSCATEGORY:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2a

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " username:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x10121

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->f()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;)V

    const v0, 0x10122

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_7
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdDelChatContact;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdDelChatContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_8
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdDelContactMsg;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdDelContactMsg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdDelContactMsg;->d()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;I)I

    goto/16 :goto_1

    :pswitch_9
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;

    new-instance v0, Lcom/tencent/mm/modelfriend/InviteFriendOpen;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdInviteFriendOpen;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->a(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelfriend/InviteFriendOpen;->b(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->P()Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelfriend/InviteFriendOpenStorage;->a(Lcom/tencent/mm/modelfriend/InviteFriendOpen;)Z

    goto/16 :goto_1

    :pswitch_a
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;

    invoke-static {p1}, Lcom/tencent/mm/modelmulti/NetSceneSync$SyncDoCmd;->a(Lcom/tencent/mm/protocal/MMSync$CmdDelMsg;)V

    goto/16 :goto_1

    :pswitch_b
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;->d()I

    move-result v0

    if-ne v2, v0, :cond_25

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;->f()I

    move-result v0

    if-ne v0, v2, :cond_24

    move v0, v2

    :goto_8
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;->e()I

    move-result v5

    if-ne v5, v2, :cond_23

    move v3, v2

    :cond_23
    invoke-virtual {v1, v4, v0, v3}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_24
    move v0, v3

    goto :goto_8

    :cond_25
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown micro blog type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModMicroBlog;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModUserDomainEmail;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserDomainEmail;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserDomainEmail;->d()I

    move-result v1

    if-ne v1, v13, :cond_26

    move v3, v2

    :cond_26
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_28

    :cond_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MicroMsg.DomainEmailLogic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mailAddr is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_28
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/RoleStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v4

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    :cond_29
    invoke-virtual {v1, v0, v3, v2}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;ZI)V

    goto/16 :goto_1

    :cond_2a
    invoke-virtual {v4, v3}, Lcom/tencent/mm/storage/RoleInfo;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/tencent/mm/storage/RoleStorage;->a(Lcom/tencent/mm/storage/RoleInfo;)V

    goto/16 :goto_1

    :pswitch_d
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdDelUserDomainEmail;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/DomainEmailLogic;->a(Ljava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_e
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;

    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processModChatRoomMember username:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " nickname:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->m(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->l(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->g(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m()I

    move-result v1

    if-eq v1, v4, :cond_2b

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2d

    :cond_2b
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(I)V

    :cond_2c
    :goto_9
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->b(Lcom/tencent/mm/storage/Contact;)Z

    goto/16 :goto_1

    :cond_2d
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModChatRoomMember;->m()I

    move-result v1

    if-ne v1, v13, :cond_2c

    invoke-virtual {v0, v13}, Lcom/tencent/mm/storage/Contact;->i(I)V

    goto :goto_9

    :pswitch_f
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_10
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown function switch id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->d()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdFunctionSwitch;->c()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;

    if-eqz p1, :cond_2f

    move v0, v2

    :goto_a
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2e

    move v3, v2

    :cond_2e
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModTContact: tcontact should ends with @t.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2f
    move v0, v3

    goto :goto_a

    :cond_30
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_35

    :cond_31
    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/Contact;->g(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->j()V

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    move-result v1

    if-ne v1, v8, :cond_32

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModTContact: insert contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_32
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->f(Ljava/lang/String;)Z

    :cond_33
    :goto_b
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->F()Lcom/tencent/mm/modeltmsg/TContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltmsg/TContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modeltmsg/TContact;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/tencent/mm/modeltmsg/TContact;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_36

    :cond_34
    new-instance v0, Lcom/tencent/mm/modeltmsg/TContact;

    invoke-direct {v0}, Lcom/tencent/mm/modeltmsg/TContact;-><init>()V

    invoke-virtual {v0, v8}, Lcom/tencent/mm/modeltmsg/TContact;->a(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modeltmsg/TContact;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltmsg/TContact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modeltmsg/TContact;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modeltmsg/TContact;->b(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->F()Lcom/tencent/mm/modeltmsg/TContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modeltmsg/TContactStorage;->a(Lcom/tencent/mm/modeltmsg/TContact;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModTContact: insert tcontact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_35
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    move-result v0

    if-ne v0, v8, :cond_33

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModTContact: update contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_36
    invoke-virtual {v0}, Lcom/tencent/mm/modeltmsg/TContact;->c()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_37

    invoke-virtual {v0}, Lcom/tencent/mm/modeltmsg/TContact;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    :cond_37
    invoke-virtual {v0, v2}, Lcom/tencent/mm/modeltmsg/TContact;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltmsg/TContact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modeltmsg/TContact;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModTContact;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modeltmsg/TContact;->b(J)V

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modeltmsg/TContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->F()Lcom/tencent/mm/modeltmsg/TContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modeltmsg/TContact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/modeltmsg/TContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modeltmsg/TContact;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModTContact: update tcontact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;

    if-eqz p1, :cond_39

    move v0, v2

    :goto_c
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_38

    move v3, v2

    :cond_38
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModQContact: qcontact should ends with @t.qq.com"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_39
    move v0, v3

    goto :goto_c

    :cond_3a
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v1

    if-nez v1, :cond_3f

    :cond_3b
    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->j()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->g(I)V

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    move-result v1

    if-ne v1, v8, :cond_3c

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModQContact: insert contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3c
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->e(Ljava/lang/String;)Z

    :cond_3d
    :goto_d
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_40

    :cond_3e
    new-instance v0, Lcom/tencent/mm/modelqmsg/QContact;

    invoke-direct {v0}, Lcom/tencent/mm/modelqmsg/QContact;-><init>()V

    invoke-virtual {v0, v8}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelqmsg/QContact;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->b(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->c(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModQContact: insert qcontact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3f
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    const-wide/16 v3, 0x20

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    move-result v0

    if-ne v0, v8, :cond_3d

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModQContact: update contact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_40
    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->e()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->e()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_41

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->f()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->f()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    :cond_41
    invoke-virtual {v0, v2}, Lcom/tencent/mm/modelqmsg/QContact;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->b(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModQContact;->f()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->c(J)V

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetSceneSync"

    const-string v1, "processModQContact: update qcontact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_14
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;

    if-eqz p1, :cond_44

    move v0, v2

    :goto_e
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    move v0, v2

    :goto_f
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Contact;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->d(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->c(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->h(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/modelavatar/ImgFlag;

    invoke-direct {v1}, Lcom/tencent/mm/modelavatar/ImgFlag;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Ljava/lang/String;)V

    const-string v5, "MicroMsg.NetSceneSync"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bottlecontact imgflag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hd:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->e()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->e()I

    move-result v5

    if-eqz v5, :cond_42

    move v3, v2

    :cond_42
    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelavatar/ImgFlag;->a(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v3

    if-eq v3, v4, :cond_43

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_46

    :cond_43
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/Contact;->i(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    :goto_10
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->B()Lcom/tencent/mm/modelavatar/ImgFlagStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelavatar/ImgFlagStorage;->b(Lcom/tencent/mm/modelavatar/ImgFlag;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->a(Lcom/tencent/mm/storage/Contact;)Z

    goto/16 :goto_1

    :cond_44
    move v0, v3

    goto/16 :goto_e

    :cond_45
    move v0, v3

    goto/16 :goto_f

    :cond_46
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModBottleContact;->f()I

    move-result v3

    if-ne v3, v13, :cond_47

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/Contact;->i(I)V

    invoke-virtual {v1, v13}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    goto :goto_10

    :cond_47
    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/Contact;->i(I)V

    invoke-virtual {v1, v4}, Lcom/tencent/mm/modelavatar/ImgFlag;->b(I)V

    goto :goto_10

    :pswitch_15
    check-cast p1, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;

    if-eqz p1, :cond_4a

    move v0, v2

    :goto_11
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->c()I

    move-result v4

    if-ne v4, v13, :cond_4b

    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_12
    const-string v0, "MicroMsg.NetSceneSync"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processModUserImg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " md5:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->e()[B

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/modelavatar/AvatarStorage;->a(Ljava/lang/String;[B)Z

    invoke-static {v1, v3}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {v1, v2}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;Z)Z

    :cond_48
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v3, 0x3009

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_49

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdModUserImg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_49
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->y()Lcom/tencent/mm/modelavatar/AvatarStorage;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelavatar/AvatarStorage;->b(Ljava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_4a
    move v0, v3

    goto/16 :goto_11

    :cond_4b
    move-object v1, v0

    goto :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_f
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_1
    .end packed-switch
.end method
