.class final Lcom/tencent/mm/ui/chatting/SyncKeyParser;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    array-length v6, v4

    move v2, v1

    move v3, v0

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v0, v4, v2

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    new-instance v7, Lcom/tencent/mm/protocal/protobuf/KeyVal;

    invoke-direct {v7}, Lcom/tencent/mm/protocal/protobuf/KeyVal;-><init>()V

    invoke-virtual {v7, v3}, Lcom/tencent/mm/protocal/protobuf/KeyVal;->a(I)Lcom/tencent/mm/protocal/protobuf/KeyVal;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/tencent/mm/protocal/protobuf/KeyVal;->b(I)Lcom/tencent/mm/protocal/protobuf/KeyVal;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_0
    new-array v0, v1, [B

    :try_start_1
    new-instance v1, Lcom/tencent/mm/protocal/protobuf/SyncKey;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/protobuf/SyncKey;-><init>()V

    invoke-virtual {v1, v5}, Lcom/tencent/mm/protocal/protobuf/SyncKey;->a(Ljava/util/LinkedList;)Lcom/tencent/mm/protocal/protobuf/SyncKey;

    move-result-object v1

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/protocal/protobuf/SyncKey;->a(I)Lcom/tencent/mm/protocal/protobuf/SyncKey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/protocal/protobuf/SyncKey;->b()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    const-string v1, "MicroMsg.SyncKetParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse new synckey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    goto :goto_2
.end method
