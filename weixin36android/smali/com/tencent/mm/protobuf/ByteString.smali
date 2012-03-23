.class public final Lcom/tencent/mm/protobuf/ByteString;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tencent/mm/protobuf/ByteString;


# instance fields
.field private a:[B

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/protobuf/ByteString;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/tencent/mm/protobuf/ByteString;-><init>([B)V

    sput-object v0, Lcom/tencent/mm/protobuf/ByteString;->b:Lcom/tencent/mm/protobuf/ByteString;

    return-void
.end method

.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/protobuf/ByteString;->c:I

    iput-object p1, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    return-void
.end method

.method public static a([B)Lcom/tencent/mm/protobuf/ByteString;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/protobuf/ByteString;->a([BII)Lcom/tencent/mm/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/tencent/mm/protobuf/ByteString;
    .locals 2

    new-array v0, p2, [B

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lcom/tencent/mm/protobuf/ByteString;

    invoke-direct {v1, v0}, Lcom/tencent/mm/protobuf/ByteString;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final a(I)Lcom/tencent/mm/protobuf/ByteString;
    .locals 4

    const/4 v3, 0x0

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v1, v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    add-int/lit8 v2, p1, -0x1

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    :goto_0
    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    iget-object v2, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    goto :goto_0
.end method

.method public final b()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v0, v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/tencent/mm/protobuf/ByteString;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/tencent/mm/protobuf/ByteString;

    iget-object v2, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v3, v2

    iget-object v2, p1, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v2, v2

    if-eq v3, v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    iget-object v5, p1, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v6, v4, v2

    aget-byte v7, v5, v2

    if-eq v6, v7, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 5

    iget v0, p0, Lcom/tencent/mm/protobuf/ByteString;->c:I

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    iget-object v0, p0, Lcom/tencent/mm/protobuf/ByteString;->a:[B

    array-length v2, v0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_0
    if-lt v1, v2, :cond_2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/tencent/mm/protobuf/ByteString;->c:I

    :cond_1
    return v0

    :cond_2
    mul-int/lit8 v0, v0, 0x1f

    aget-byte v3, v4, v1

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method
