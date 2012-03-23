.class Lcom/tencent/mm/network/GYNet$PollerCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/network/GYNet;


# direct methods
.method constructor <init>(Lcom/tencent/mm/network/GYNet;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/network/GYNet$PollerCallBack;->a:Lcom/tencent/mm/network/GYNet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    const/4 v1, 0x0

    const-string v0, "MicroMsg.GYNet"

    const-string v2, "poller sync"

    invoke-static {v0, v2}, Lcom/tencent/mm/platformtools/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/network/GYNet$PollerCallBack;->a:Lcom/tencent/mm/network/GYNet;

    invoke-static {v0}, Lcom/tencent/mm/network/GYNet;->b(Lcom/tencent/mm/network/GYNet;)Lcom/tencent/mm/network/IOnGYNetNotify;

    move-result-object v0

    const-string v3, ""

    const/16 v4, 0x26

    const/4 v5, 0x0

    move v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/mm/network/IOnGYNetNotify;->a(IILjava/lang/String;I[B)Z

    return v1
.end method
