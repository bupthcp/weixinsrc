.class public Lcom/tencent/mm/modelvoice/VoiceMsgExtension;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IMessageExtension;


# static fields
.field private static a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static b(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    const-string v0, "MicroMsg.VoiceMessageExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseVoiceMsg srvId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/tencent/mm/storage/MsgInfo;

    invoke-direct {v2}, Lcom/tencent/mm/storage/MsgInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/tencent/mm/modelvoice/VoiceInfo;

    invoke-direct {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->k()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(J)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MicroMsg.VoiceMessageExtension"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chatroom voicemsg, new content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v4, "msg"

    invoke-static {v0, v4}, Lcom/tencent/mm/platformtools/Util;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_1

    :try_start_0
    const-string v0, ".msg.voicemsg.$length"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e(I)V

    const-string v0, ".msg.voicemsg.$clientmsgid"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->d(Ljava/lang/String;)V

    const-string v0, ".msg.voicemsg.$endflag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v0, ".msg.voicemsg.$cancelflag"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v0, ".msg.voicemsg.$voicelength"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->c(I)V

    const-string v0, ".msg.voicemsg.$fromusername"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    if-ne v6, v1, :cond_6

    const-string v0, "MicroMsg.VoiceMessageExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelFlag = 1 srvId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->o()Lcom/tencent/mm/modelvoice/VoiceStorage;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvoice/VoiceStorage;->a(I)Lcom/tencent/mm/modelvoice/VoiceInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/modelvoice/VoiceLogic;->f(Ljava/lang/String;)Z

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v0, "MicroMsg.VoiceMessageExtension"

    const-string v1, "parsing voice msg xml failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    if-ne v5, v1, :cond_7

    const-string v0, "MicroMsg.VoiceMessageExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "endFlag = 1 srvId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->l()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->g(I)V

    :cond_7
    const/16 v0, 0x16ae

    invoke-virtual {v3, v0}, Lcom/tencent/mm/modelvoice/VoiceInfo;->a(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "MicroMsg.VoiceMessageExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Voice Buf Len:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " srvId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->j()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;->h()I

    move-result v1

    invoke-static {v3, v0, v1}, Lcom/tencent/mm/modelvoice/VoiceLogic;->a(Lcom/tencent/mm/modelvoice/VoiceInfo;[BI)I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v0

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v1

    sget-object v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/AccountStorage;->i()Lcom/tencent/mm/storage/MsgInfoStorage;

    move-result-object v4

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/tencent/mm/modelvoice/VoiceInfo;->k()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/storage/MsgInfoStorage;->a(Ljava/lang/String;I)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;->a(Lcom/tencent/mm/storage/MsgInfo;)V

    goto :goto_2

    :cond_9
    move-object v0, v1

    :goto_3
    move-object v2, v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v2

    goto :goto_3
.end method

.method public static b(Lcom/tencent/mm/modelvoice/IOnVoiceMsgReceivedNotify;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->a:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/modelvoice/VoiceMsgExtension;->b(Lcom/tencent/mm/protocal/MMSync$CmdAddMsg;)Lcom/tencent/mm/storage/MsgInfo;

    move-result-object v0

    return-object v0
.end method
