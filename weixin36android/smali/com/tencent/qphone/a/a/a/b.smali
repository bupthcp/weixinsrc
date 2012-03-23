.class final Lcom/tencent/qphone/a/a/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/tencent/qphone/a/a/a/f;

.field private final synthetic b:Lcom/tencent/qphone/base/remote/ToServiceMsg;


# direct methods
.method constructor <init>(Lcom/tencent/qphone/a/a/a/f;Lcom/tencent/qphone/base/remote/ToServiceMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qphone/a/a/a/b;->a:Lcom/tencent/qphone/a/a/a/f;

    iput-object p2, p0, Lcom/tencent/qphone/a/a/a/b;->b:Lcom/tencent/qphone/base/remote/ToServiceMsg;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/tencent/qphone/a/a/a/f;->c()I

    move-result v0

    invoke-static {}, Lcom/tencent/qphone/a/a/a/f;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/b;->a:Lcom/tencent/qphone/a/a/a/f;

    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/b;->b:Lcom/tencent/qphone/base/remote/ToServiceMsg;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qphone/a/a/a/f;->a(Lcom/tencent/qphone/base/remote/ToServiceMsg;Z)V

    invoke-static {}, Lcom/tencent/qphone/a/a/a/f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/tencent/qphone/a/a/a/f;->a(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/b;->a:Lcom/tencent/qphone/a/a/a/f;

    iget-object v1, p0, Lcom/tencent/qphone/a/a/a/b;->b:Lcom/tencent/qphone/base/remote/ToServiceMsg;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qphone/a/a/a/f;->a(Lcom/tencent/qphone/base/remote/ToServiceMsg;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
