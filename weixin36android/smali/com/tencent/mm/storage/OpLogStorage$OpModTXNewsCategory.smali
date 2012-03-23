.class public Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/storage/OpLogStorage$Operation;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;->a:I

    iput p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;->a:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpModTXNewsCategory;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tencent/mm/storage/OpLogStorage$Concat;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
