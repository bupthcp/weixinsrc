.class Lcom/tencent/mm/network/GYNet$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/GYNet;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/GYNet;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/GYNet$1;->a:Lcom/tencent/mm/network/GYNet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$1;->a:Lcom/tencent/mm/network/GYNet;

    invoke-static {v0}, Lcom/tencent/mm/network/GYNet;->a(Lcom/tencent/mm/network/GYNet;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$1;->a:Lcom/tencent/mm/network/GYNet;

    iget-boolean v0, v0, Lcom/tencent/mm/network/GYNet;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/network/MMPushCore;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/network/NetService;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.GYNet"

    const-string v2, "looping syncheck"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$1;->a:Lcom/tencent/mm/network/GYNet;

    invoke-static {v0}, Lcom/tencent/mm/network/GYNet;->b(Lcom/tencent/mm/network/GYNet;)Lcom/tencent/mm/network/IOnGYNetNotify;

    move-result-object v0

    const-string v3, ""

    const/16 v4, 0x27

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MicroMsg.GYNet"

    const-string v2, "looping sync"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$1;->a:Lcom/tencent/mm/network/GYNet;

    invoke-static {v0}, Lcom/tencent/mm/network/GYNet;->b(Lcom/tencent/mm/network/GYNet;)Lcom/tencent/mm/network/IOnGYNetNotify;

    move-result-object v0

    const-string v3, ""

    const/16 v4, 0x26

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    move-result v0

    goto :goto_0
.end method
