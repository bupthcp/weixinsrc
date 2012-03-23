.class public final LQQPIM/RankInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public modelrank:I

.field public modeltotal:I

.field public rank:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/RankInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/RankInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/RankInfo;->rank:I

    iput v0, p0, LQQPIM/RankInfo;->modelrank:I

    iput v0, p0, LQQPIM/RankInfo;->total:I

    iput v0, p0, LQQPIM/RankInfo;->modeltotal:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/RankInfo;->rank:I

    iput v0, p0, LQQPIM/RankInfo;->modelrank:I

    iput v0, p0, LQQPIM/RankInfo;->total:I

    iput v0, p0, LQQPIM/RankInfo;->modeltotal:I

    iput p1, p0, LQQPIM/RankInfo;->rank:I

    iput p2, p0, LQQPIM/RankInfo;->modelrank:I

    iput p3, p0, LQQPIM/RankInfo;->total:I

    iput p4, p0, LQQPIM/RankInfo;->modeltotal:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.RankInfo"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/RankInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/RankInfo;->rank:I

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/RankInfo;->modelrank:I

    const-string v2, "modelrank"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/RankInfo;->total:I

    const-string v2, "total"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/RankInfo;->modeltotal:I

    const-string v2, "modeltotal"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/RankInfo;

    iget v0, p0, LQQPIM/RankInfo;->rank:I

    iget v1, p1, LQQPIM/RankInfo;->rank:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/RankInfo;->modelrank:I

    iget v1, p1, LQQPIM/RankInfo;->modelrank:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/RankInfo;->total:I

    iget v1, p1, LQQPIM/RankInfo;->total:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/RankInfo;->modeltotal:I

    iget v1, p1, LQQPIM/RankInfo;->modeltotal:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getModelrank()I
    .locals 1

    iget v0, p0, LQQPIM/RankInfo;->modelrank:I

    return v0
.end method

.method public final getModeltotal()I
    .locals 1

    iget v0, p0, LQQPIM/RankInfo;->modeltotal:I

    return v0
.end method

.method public final getRank()I
    .locals 1

    iget v0, p0, LQQPIM/RankInfo;->rank:I

    return v0
.end method

.method public final getTotal()I
    .locals 1

    iget v0, p0, LQQPIM/RankInfo;->total:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/RankInfo;->rank:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/RankInfo;->rank:I

    iget v0, p0, LQQPIM/RankInfo;->modelrank:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/RankInfo;->modelrank:I

    iget v0, p0, LQQPIM/RankInfo;->total:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/RankInfo;->total:I

    iget v0, p0, LQQPIM/RankInfo;->modeltotal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/RankInfo;->modeltotal:I

    return-void
.end method

.method public final setModelrank(I)V
    .locals 0

    iput p1, p0, LQQPIM/RankInfo;->modelrank:I

    return-void
.end method

.method public final setModeltotal(I)V
    .locals 0

    iput p1, p0, LQQPIM/RankInfo;->modeltotal:I

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    iput p1, p0, LQQPIM/RankInfo;->rank:I

    return-void
.end method

.method public final setTotal(I)V
    .locals 0

    iput p1, p0, LQQPIM/RankInfo;->total:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget v0, p0, LQQPIM/RankInfo;->rank:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/RankInfo;->modelrank:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/RankInfo;->total:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/RankInfo;->modeltotal:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
