.class public Lcom/tencent/mm/modelqmsg/QMsgExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IMessageExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/Contact;

    invoke-direct {v0, p0}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->j()V

    invoke-virtual {v0, p1}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/Contact;->g(I)V

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/Contact;->a(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->e(Ljava/lang/String;)Z

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Lcom/tencent/mm/modelqmsg/QContact;

    invoke-direct {v0}, Lcom/tencent/mm/modelqmsg/QContact;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelqmsg/QContact;->b(I)V

    invoke-virtual {v0, p0}, Lcom/tencent/mm/modelqmsg/QContact;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->b(J)V

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelqmsg/QContact;->c(J)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MicroMsg.QMsgExtension"

    const-string v1, "processModQContact: insert qcontact failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 10

    if-eqz p1, :cond_b

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v0

    const/16 v1, 0x27

    if-ne v0, v1, :cond_c

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.QMsgExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseQMsg content:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->e()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v2

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->k()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    :cond_2
    new-instance v3, Lcom/tencent/mm/modelqmsg/QContact;

    invoke-direct {v3}, Lcom/tencent/mm/modelqmsg/QContact;-><init>()V

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelqmsg/QContact;->b(I)V

    const/16 v1, 0x9

    invoke-virtual {v3, v1}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "MicroMsg.QMsgExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseQMsg : insert QContact failed : username = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-wide/16 v3, -0x1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->i()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->i()I

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a([BI)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "THUMBNAIL://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->f()I

    move-result v1

    const/16 v5, 0x24

    if-ne v1, v5, :cond_8

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_10

    const/4 v1, 0x1

    :goto_5
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v1, 0x1

    :goto_6
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    const/4 v1, 0x1

    :goto_7
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    const/4 v5, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_6

    :cond_5
    const/4 v5, 0x1

    new-instance v1, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->h()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/tencent/mm/storage/Contact;-><init>(Ljava/lang/String;)V

    :cond_6
    new-instance v7, Lcom/tencent/mm/modelqmsg/QMsgExtension$QMsgContent;

    invoke-direct {v7}, Lcom/tencent/mm/modelqmsg/QMsgExtension$QMsgContent;-><init>()V

    invoke-virtual {v7, v6}, Lcom/tencent/mm/modelqmsg/QMsgExtension$QMsgContent;->a(Ljava/lang/String;)V

    if-nez v5, :cond_7

    const-wide/32 v8, 0x8000

    invoke-virtual {v1, v8, v9}, Lcom/tencent/mm/storage/Contact;->a(J)V

    :cond_7
    invoke-virtual {v7}, Lcom/tencent/mm/modelqmsg/QMsgExtension$QMsgContent;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/tencent/mm/modelqmsg/QMsgExtension$QMsgContent;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/ContactStorage;->c(Lcom/tencent/mm/storage/Contact;)I

    :cond_8
    :goto_8
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/tencent/mm/storage/RoleStorage;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_9
    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_15

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    move-object v1, v2

    :goto_a
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-nez v0, :cond_17

    invoke-static {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(J)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->i()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(J)Lcom/tencent/mm/modelimage/ImgInfo;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/mm/storage/MsgInfo;->b()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelimage/ImgInfo;->d(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v0}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(JLcom/tencent/mm/modelimage/ImgInfo;)I

    :cond_a
    :goto_b
    return-object v2

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_f
    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_5

    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_13
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    goto/16 :goto_8

    :cond_14
    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/storage/MsgInfo;->e(I)V

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_16

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v0

    move-object v1, v2

    goto :goto_a

    :cond_16
    const/4 v0, 0x3

    move-object v1, v2

    goto :goto_a

    :cond_17
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(ILcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_b
.end method
