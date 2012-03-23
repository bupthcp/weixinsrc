.class public Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->b:I

    iput-object p2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->a:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x2710

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->b:I

    return v0
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpCommonProtobuf;->a:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
