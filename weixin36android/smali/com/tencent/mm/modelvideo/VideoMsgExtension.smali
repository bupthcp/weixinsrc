.class public Lcom/tencent/mm/modelvideo/VideoMsgExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IMessageExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static b(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    new-instance v3, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v3}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_2
    return-object v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/tencent/mm/modelvideo/VideoInfo;

    invoke-direct {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->k()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(J)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(I)V

    const-string v0, "MicroMsg.VideoMsgExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseVideoMsgXML content:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v0

    const-string v5, "msg"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    const-string v0, ".msg.videomsg.$length"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->e(I)V

    const-string v0, ".msg.videomsg.$playlength"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->i(I)V

    const-string v0, ".msg.videomsg.$fromusername"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->c(Ljava/lang/String;)V

    const-string v0, ".msg.videomsg.$type"

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_3
    :try_start_2
    const-string v5, "MicroMsg.VideoMsgExtension"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "video msg exportType :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_6

    :goto_4
    invoke-virtual {v4, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->l(I)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v5

    invoke-static {v1, v2, v5}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Ljava/lang/String;I[B)I

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(I)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg id : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " already exist!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    :cond_4
    :goto_5
    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Lcom/tencent/mm/modelvideo/VideoLogic;->e(Ljava/lang/String;)Lcom/tencent/mm/modelvideo/VideoInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvideo/VideoInfo;->n()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(J)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    :goto_6
    move-object v3, v0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :cond_5
    move v0, v2

    goto/16 :goto_3

    :cond_6
    move v1, v2

    goto/16 :goto_4

    :catch_1
    move-exception v0

    const-string v0, "MicroMsg.VideoMsgExtension"

    const-string v1, "parsing voice msg xml failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    new-instance v5, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v5}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/MsgInfo;->b(I)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/MsgInfo;->c(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/MsgInfo;->d(I)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->k()J

    move-result-wide v6

    invoke-static {v1, v6, v7}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/storage/MsgInfo;->b(J)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/MsgInfo;->a(Ljava/lang/String;)V

    const/16 v1, 0x2b

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/MsgInfo;->c(I)V

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v6, 0x0

    invoke-static {v1, v6, v7, v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VideoContent;->a(Ljava/lang/String;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/tencent/mm/storage/MsgInfo;->b(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Lcom/tencent/mm/storage/MsgInfo;)J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v4, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->j(I)V

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/modelvideo/VideoInfo;->b(J)V

    invoke-virtual {v4, v2}, Lcom/tencent/mm/modelvideo/VideoInfo;->k(I)V

    const/16 v1, 0x6f

    invoke-virtual {v4, v1}, Lcom/tencent/mm/modelvideo/VideoInfo;->h(I)V

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert fileName["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "] size:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->g()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " svrid:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->d()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " timelen:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->m()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " user:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->p()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " human:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->a(Lcom/tencent/mm/modelvideo/VideoInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "MicroMsg.VideoLogic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert Error fileName:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/tencent/mm/modelvideo/VideoInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    goto/16 :goto_5

    :cond_8
    move-object v0, v3

    goto/16 :goto_6
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/modelvideo/VideoMsgExtension;->b(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    return-object v0
.end method
