.class public final LQQPIM/TimeCtrl;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public bEngross:Z

.field public time:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/TimeCtrl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/TimeCtrl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/TimeCtrl;->time:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/TimeCtrl;->time:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    iput p1, p0, LQQPIM/TimeCtrl;->time:I

    iput-boolean p2, p0, LQQPIM/TimeCtrl;->bEngross:Z

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.TimeCtrl"

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

    sget-boolean v1, LQQPIM/TimeCtrl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/TimeCtrl;->time:I

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-boolean v1, p0, LQQPIM/TimeCtrl;->bEngross:Z

    const-string v2, "bEngross"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ZLjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/TimeCtrl;

    iget v0, p0, LQQPIM/TimeCtrl;->time:I

    iget v1, p1, LQQPIM/TimeCtrl;->time:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    iget-boolean v1, p1, LQQPIM/TimeCtrl;->bEngross:Z

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getBEngross()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    return v0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, LQQPIM/TimeCtrl;->time:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LQQPIM/TimeCtrl;->time:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/TimeCtrl;->time:I

    invoke-virtual {p1, v2, v2}, Lcom/a/a/a/a;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    return-void
.end method

.method public final setBEngross(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/TimeCtrl;->bEngross:Z

    return-void
.end method

.method public final setTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/TimeCtrl;->time:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget v0, p0, LQQPIM/TimeCtrl;->time:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-boolean v0, p0, LQQPIM/TimeCtrl;->bEngross:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(ZI)V

    return-void
.end method
