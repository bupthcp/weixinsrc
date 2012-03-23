.class Lcom/tencent/mm/modelvoip/VoipService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoip/AudioPlayDevCallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoip/VoipService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/VoipService$3;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService$3;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/modelvoip/v2protocal;->playcallback()I

    move-result v1

    if-gez v1, :cond_0

    const-string v0, "MicroMsg.V2Protocol"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "protocal.playcallback ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService$3;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v1}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/modelvoip/v2protocal;->l:[B

    const/16 v2, 0x140

    invoke-static {v1, v0, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
