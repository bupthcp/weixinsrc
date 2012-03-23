.class final Lcom/tencent/qphone/a/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/tencent/qphone/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/tencent/qphone/a/a/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qphone/a/a/a/a;->a:Lcom/tencent/qphone/a/a/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qphone/a/a/a/f;->a(I)V

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/a;->a:Lcom/tencent/qphone/a/a/a/f;

    invoke-static {p2}, Lcom/tencent/qphone/base/remote/a;->a(Landroid/os/IBinder;)Lcom/tencent/qphone/base/remote/f;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/qphone/a/a/a/f;->a(Lcom/tencent/qphone/a/a/a/f;Lcom/tencent/qphone/base/remote/f;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/qphone/a/a/a/f;->a(I)V

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/a;->a:Lcom/tencent/qphone/a/a/a/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/qphone/a/a/a/f;->a(Lcom/tencent/qphone/a/a/a/f;Lcom/tencent/qphone/base/remote/f;)V

    return-void
.end method
