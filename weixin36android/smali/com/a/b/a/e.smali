.class public final Lcom/a/b/a/e;
.super Lcom/a/b/a/d;


# static fields
.field private static d:Ljava/util/HashMap;


# instance fields
.field private c:Lcom/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/b/a/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/a/b/a/d;-><init>()V

    new-instance v0, Lcom/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    const/4 v1, 0x2

    iput-short v1, v0, Lcom/a/a/a;->a:S

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "put name can not startwith . "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final a([B)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    array-length v0, p1

    if-ge v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "decode package must include size head"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-array v1, v4, [B

    array-length v2, v1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v4, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v1, Lcom/a/a/a/a;

    invoke-direct {v1, v0}, Lcom/a/a/a/a;-><init>([B)V

    iget-object v0, p0, Lcom/a/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/a/a/a/a;->a(Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/a/b/a/e;->readFrom(Lcom/a/a/a/a;)V

    new-instance v0, Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iget-object v1, v1, Lcom/a/a/a;->e:[B

    invoke-direct {v0, v1}, Lcom/a/a/a/a;-><init>([B)V

    iget-object v1, p0, Lcom/a/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Ljava/lang/String;)I

    sget-object v1, Lcom/a/b/a/e;->d:Ljava/util/HashMap;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/a/b/a/e;->d:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/a/b/a/e;->d:Ljava/util/HashMap;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v1, Lcom/a/b/a/e;->d:Ljava/util/HashMap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/a/a/a/a;->a(Ljava/util/Map;IZ)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/a/e;->a:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/a/b/a/b;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a()[B
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iget-object v0, v0, Lcom/a/a/a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "servantName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iget-object v0, v0, Lcom/a/a/a;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "funcName can not is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/a/a/a/e;

    invoke-direct {v0, v2}, Lcom/a/a/a/e;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;)I

    iget-object v1, p0, Lcom/a/b/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/e;->a(Ljava/util/Map;I)V

    iget-object v1, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/e;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/c;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/a/a/a;->e:[B

    new-instance v0, Lcom/a/a/a/e;

    invoke-direct {v0, v2}, Lcom/a/a/a/e;-><init>(I)V

    iget-object v1, p0, Lcom/a/b/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/a/a/a/e;->a(Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/a/b/a/e;->writeTo(Lcom/a/a/a/e;)V

    invoke-virtual {v0}, Lcom/a/a/a/e;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/a/a/a/c;->a(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v2, v1, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    const/4 v1, 0x1

    iput v1, v0, Lcom/a/a/a;->b:I

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iput-object p1, v0, Lcom/a/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    iput-object p1, v0, Lcom/a/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/a;->display(Ljava/lang/StringBuilder;I)V

    return-void
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a;->readFrom(Lcom/a/a/a/a;)V

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 1

    iget-object v0, p0, Lcom/a/b/a/e;->c:Lcom/a/a/a;

    invoke-virtual {v0, p1}, Lcom/a/a/a;->writeTo(Lcom/a/a/a/e;)V

    return-void
.end method
