.class public final LQQPIM/TopInfo;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_ranktype:I

.field static cache_timetype:I


# instance fields
.field public ranktype:I

.field public timetype:I

.field public topn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/TopInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/TopInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/TopInfo;->topn:I

    iput v0, p0, LQQPIM/TopInfo;->ranktype:I

    iput v0, p0, LQQPIM/TopInfo;->timetype:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput v0, p0, LQQPIM/TopInfo;->topn:I

    iput v0, p0, LQQPIM/TopInfo;->ranktype:I

    iput v0, p0, LQQPIM/TopInfo;->timetype:I

    iput p1, p0, LQQPIM/TopInfo;->topn:I

    iput p2, p0, LQQPIM/TopInfo;->ranktype:I

    iput p3, p0, LQQPIM/TopInfo;->timetype:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.TopInfo"

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

    sget-boolean v1, LQQPIM/TopInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/TopInfo;->topn:I

    const-string v2, "topn"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/TopInfo;->ranktype:I

    const-string v2, "ranktype"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/TopInfo;->timetype:I

    const-string v2, "timetype"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/TopInfo;

    iget v0, p0, LQQPIM/TopInfo;->topn:I

    iget v1, p1, LQQPIM/TopInfo;->topn:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TopInfo;->ranktype:I

    iget v1, p1, LQQPIM/TopInfo;->ranktype:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/TopInfo;->timetype:I

    iget v1, p1, LQQPIM/TopInfo;->timetype:I

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

.method public final getRanktype()I
    .locals 1

    iget v0, p0, LQQPIM/TopInfo;->ranktype:I

    return v0
.end method

.method public final getTimetype()I
    .locals 1

    iget v0, p0, LQQPIM/TopInfo;->timetype:I

    return v0
.end method

.method public final getTopn()I
    .locals 1

    iget v0, p0, LQQPIM/TopInfo;->topn:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/TopInfo;->topn:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TopInfo;->topn:I

    iget v0, p0, LQQPIM/TopInfo;->ranktype:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TopInfo;->ranktype:I

    iget v0, p0, LQQPIM/TopInfo;->timetype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TopInfo;->timetype:I

    return-void
.end method

.method public final setRanktype(I)V
    .locals 0

    iput p1, p0, LQQPIM/TopInfo;->ranktype:I

    return-void
.end method

.method public final setTimetype(I)V
    .locals 0

    iput p1, p0, LQQPIM/TopInfo;->timetype:I

    return-void
.end method

.method public final setTopn(I)V
    .locals 0

    iput p1, p0, LQQPIM/TopInfo;->topn:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget v0, p0, LQQPIM/TopInfo;->topn:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/TopInfo;->ranktype:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/TopInfo;->timetype:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
