.class Lcom/tencent/mm/modelvoip/VoipService$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelvoip/AudioRecDevCallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoip/VoipService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/VoipService$4;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B)I
    .locals 4

    const/16 v3, 0x140

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$4;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v0

    new-array v1, v3, [B

    iput-object v1, v0, Lcom/tencent/mm/modelvoip/v2protocal;->k:[B

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$4;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelvoip/v2protocal;->k:[B

    invoke-static {p1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$4;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/modelvoip/VoipService;)Lcom/tencent/mm/modelvoip/v2protocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/v2protocal;->recordcallback()I

    return v2
.end method
