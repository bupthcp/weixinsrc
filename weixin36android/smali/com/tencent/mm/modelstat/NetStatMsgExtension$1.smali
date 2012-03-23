.class Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:I

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Z

.field private synthetic g:Lcom/tencent/mm/modelstat/NetStatMsgExtension;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelstat/NetStatMsgExtension;IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->g:Lcom/tencent/mm/modelstat/NetStatMsgExtension;

    iput p2, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->a:I

    iput p3, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->b:I

    iput-object p4, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->c:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->d:I

    iput-object p6, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->a:I

    iget v1, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->b:I

    iget-object v2, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->c:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->d:I

    iget-object v4, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/tencent/mm/modelstat/NetStatMsgExtension$1;->f:Z

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/mm/model/AccountStorage;->b()Z

    move-result v6

    if-eqz v6, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v0, "MicroMsg.NetStatMsgExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send bytes flow:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_1

    invoke-static {v7, v3, v1}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(III)V

    goto :goto_0

    :cond_1
    invoke-static {v7, v3, v1}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->b(III)V

    goto :goto_0

    :pswitch_2
    const-string v0, "MicroMsg.NetStatMsgExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recv bytes flow:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_2

    invoke-static {v3, v7, v1}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->a(III)V

    goto :goto_0

    :cond_2
    invoke-static {v3, v7, v1}, Lcom/tencent/mm/modelstat/NetStatStorageLogic;->b(III)V

    goto :goto_0

    :pswitch_3
    const-string v0, "dns_failed_report"

    invoke-static {v0}, Lcom/tencent/mm/platformtools/MMEntryLock;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->W()Lcom/tencent/mm/model/ErrLog;

    move-result-object v0

    const-string v1, "dnsreport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/model/ErrLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
