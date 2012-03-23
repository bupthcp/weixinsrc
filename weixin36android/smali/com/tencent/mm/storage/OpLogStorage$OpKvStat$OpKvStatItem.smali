.class public Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a:I

    iput-object p2, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a:I

    return v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a:I

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/tencent/mm/storage/OpLogStorage$OpKvStat$OpKvStatItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
