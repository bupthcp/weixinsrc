.class Lcom/tencent/mm/modelvoip/VoipService$2;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelvoip/VoipService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelvoip/VoipService;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    const-string v2, "MicroMsg.V2Protocol"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg1:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " arg2:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " msg.data len:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    array-length v1, v0

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_2

    new-instance v1, Lcom/tencent/mm/protocal/protobuf/CmdItem;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/CmdItem;-><init>()V

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->a(I)Lcom/tencent/mm/protocal/protobuf/CmdItem;

    new-instance v2, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;-><init>()V

    invoke-static {v0}, Lcom/tencent/mm/protobuf/ByteString;->a([B)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(Lcom/tencent/mm/protobuf/ByteString;)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    array-length v0, v0

    invoke-virtual {v2, v0}, Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;->a(I)Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/CmdItem;->a(Lcom/tencent/mm/protocal/protobuf/SKBuiltinBuffer_t;)Lcom/tencent/mm/protocal/protobuf/CmdItem;

    new-instance v0, Lcom/tencent/mm/protocal/protobuf/CmdList;

    invoke-direct {v0}, Lcom/tencent/mm/protocal/protobuf/CmdList;-><init>()V

    invoke-virtual {v0, v4}, Lcom/tencent/mm/protocal/protobuf/CmdList;->a(I)Lcom/tencent/mm/protocal/protobuf/CmdList;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/protocal/protobuf/CmdList;->a(Lcom/tencent/mm/protocal/protobuf/CmdItem;)Lcom/tencent/mm/protocal/protobuf/CmdList;

    iget-object v1, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelvoip/VoipService;->a(Lcom/tencent/mm/protocal/protobuf/CmdList;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->b(Lcom/tencent/mm/modelvoip/VoipService;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->c(Lcom/tencent/mm/modelvoip/VoipService;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/VoipService;->b()V

    goto :goto_1

    :cond_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->c(Lcom/tencent/mm/modelvoip/VoipService;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/VoipService;->c()V

    goto :goto_1

    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-static {}, Lcom/tencent/mm/algorithm/CodeInfo;->b()I

    invoke-static {v0}, Lcom/tencent/mm/modelvoip/VoipService;->b(Lcom/tencent/mm/modelvoip/VoipService;)V

    iget-object v0, p0, Lcom/tencent/mm/modelvoip/VoipService$2;->a:Lcom/tencent/mm/modelvoip/VoipService;

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoip/VoipService;->a()I

    goto :goto_1
.end method
