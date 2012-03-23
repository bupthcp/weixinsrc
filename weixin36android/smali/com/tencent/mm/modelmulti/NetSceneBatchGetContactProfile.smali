.class public Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;
.super Lcom/tencent/mm/modelbase/NetSceneBase;

# interfaces
.implements Lcom/tencent/mm/network/IOnGYNetEnd;


# instance fields
.field private a:Ljava/util/Set;

.field private c:Lcom/tencent/mm/modelbase/IOnSceneEnd;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/modelbase/NetSceneBase;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput-object p1, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I
    .locals 3

    iput-object p2, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "doScene reqSize ==0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    new-instance v2, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;

    invoke-direct {v2}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile$MMReqRespBatchGetContactProfile;-><init>()V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;->a(Ljava/util/List;)V

    invoke-interface {v2}, Lcom/tencent/mm/network/IReqResp;->f()Lcom/tencent/mm/protocal/MMBase$Req;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Req;->a(I)V

    invoke-virtual {p0, p1, v2, p0}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/network/IReqResp;Lcom/tencent/mm/network/IOnGYNetEnd;)I

    move-result v0

    goto :goto_1
.end method

.method protected final a(Lcom/tencent/mm/network/IReqResp;)Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;->b:Lcom/tencent/mm/modelbase/NetSceneBase$SecurityCheckStatus;

    return-object v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/IReqResp;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->b(I)V

    invoke-interface {p5}, Lcom/tencent/mm/network/IReqResp;->b()Lcom/tencent/mm/protocal/MMBase$Resp;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;

    if-nez v0, :cond_4

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v1, "dealResp: resp is null"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->m()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a(Lcom/tencent/mm/network/IDispatcher;Lcom/tencent/mm/modelbase/IOnSceneEnd;)I

    :cond_3
    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "left cnt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->c:Lcom/tencent/mm/modelbase/IOnSceneEnd;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/modelbase/IOnSceneEnd;->a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;->b_()I

    move-result v1

    if-ne v1, v3, :cond_5

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v1, "dealResp : endless loop, should stop"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;->b_()I

    move-result v1

    if-ne v1, v8, :cond_7

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v1, "dealResp : server err, can try again"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v2, v3

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$Resp;->a()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_8
    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: profile name is null"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_9
    iget-object v5, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: resp data not in req"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/tencent/mm/modelmulti/NetSceneBatchGetContactProfile;->a:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v6

    if-nez v6, :cond_c

    :cond_b
    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: did not find this contact"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->h()I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->i()I

    move-result v7

    and-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->d(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->c(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->k(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->m(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->n()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->g(I)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->q()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/storage/Contact;->h(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v6

    invoke-virtual {v5}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    move-result v5

    if-ne v5, v8, :cond_d

    const-string v5, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v6, "processContactProfile:update contact failed"

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/ContactStorageLogic;->r(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modelqmsg/QContact;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Lcom/tencent/mm/modelqmsg/QContact;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_f

    :cond_e
    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: did not find qcontact"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modelqmsg/QContact;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modelqmsg/QContact;->b(J)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->u()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modelqmsg/QContact;->c(J)V

    const/16 v6, 0x34

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modelqmsg/QContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->D()Lcom/tencent/mm/modelqmsg/QContactStorage;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/tencent/mm/modelqmsg/QContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modelqmsg/QContact;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v6, "processContactProfile:update qcontact failed"

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/ContactStorageLogic;->p(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/AccountStorage;->F()Lcom/tencent/mm/modeltmsg/TContactStorage;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltmsg/TContactStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/modeltmsg/TContact;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/tencent/mm/modeltmsg/TContact;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_12

    :cond_11
    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: did not find tcontact"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_3

    :cond_12
    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modeltmsg/TContact;->a(J)V

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->u()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/tencent/mm/modeltmsg/TContact;->b(J)V

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/tencent/mm/modeltmsg/TContact;->a(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->F()Lcom/tencent/mm/modeltmsg/TContactStorage;

    move-result-object v6

    invoke-virtual {v0}, Lcom/tencent/mm/protocal/MMBatchGetContactProfile$ContactProfile;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v5}, Lcom/tencent/mm/modeltmsg/TContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/modeltmsg/TContact;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "MicroMsg.NetSceneBatchGetContactProfile"

    const-string v5, "processContactProfile: update tcontact failed"

    invoke-static {v0, v5}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move v0, v3

    goto/16 :goto_3
.end method

.method public final b()I
    .locals 1

    const/16 v0, 0x2a

    return v0
.end method

.method protected final c()I
    .locals 1

    const/16 v0, 0x32

    return v0
.end method
