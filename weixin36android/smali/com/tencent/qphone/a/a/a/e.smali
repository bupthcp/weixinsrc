.class public final Lcom/tencent/qphone/a/a/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Lcom/tencent/qphone/a/a/a/f;

.field private c:Lcom/tencent/qphone/a/a/a/d;

.field private d:Lcom/tencent/qphone/base/a/b;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/tencent/qphone/a/a/a/d;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->b:Lcom/tencent/qphone/a/a/a/f;

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->c:Lcom/tencent/qphone/a/a/a/d;

    new-instance v0, Lcom/tencent/qphone/a/a/a/c;

    invoke-direct {v0, p0}, Lcom/tencent/qphone/a/a/a/c;-><init>(Lcom/tencent/qphone/a/a/a/e;)V

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->d:Lcom/tencent/qphone/base/a/b;

    iput p1, p0, Lcom/tencent/qphone/a/a/a/e;->a:I

    invoke-static {p2}, Lcom/tencent/qphone/base/a/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->b:Lcom/tencent/qphone/a/a/a/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qphone/a/a/a/f;

    const-string v1, "com.tencent.qphone.sub.accountmanager.AMService"

    invoke-direct {v0, p2, v1}, Lcom/tencent/qphone/a/a/a/f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->b:Lcom/tencent/qphone/a/a/a/f;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->b:Lcom/tencent/qphone/a/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/qphone/a/a/a/f;->a()V

    iput-object p3, p0, Lcom/tencent/qphone/a/a/a/e;->c:Lcom/tencent/qphone/a/a/a/d;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/e;->b:Lcom/tencent/qphone/a/a/a/f;

    invoke-virtual {v0}, Lcom/tencent/qphone/a/a/a/f;->b()V

    return-void
.end method

.method public final a(Lcom/tencent/qphone/base/remote/FromServiceMsg;)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/FromServiceMsg;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ret"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mainUser"

    iget-object v2, p1, Lcom/tencent/qphone/base/remote/FromServiceMsg;->b:Landroid/os/Bundle;

    const-string v3, "mainUser"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pwd"

    iget-object v2, p1, Lcom/tencent/qphone/base/remote/FromServiceMsg;->b:Landroid/os/Bundle;

    const-string v3, "pwd"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :goto_0
    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/e;->c:Lcom/tencent/qphone/a/a/a/d;

    invoke-virtual {v1, v0}, Lcom/tencent/qphone/a/a/a/d;->onGetMainAccountResult(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v1, "ret"

    invoke-virtual {p1}, Lcom/tencent/qphone/base/remote/FromServiceMsg;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
