.class final Lcom/tencent/qphone/a/a/a/c;
.super Lcom/tencent/qphone/base/a/b;


# instance fields
.field private synthetic a:Lcom/tencent/qphone/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/tencent/qphone/a/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qphone/a/a/a/c;->a:Lcom/tencent/qphone/a/a/a/e;

    invoke-direct {p0}, Lcom/tencent/qphone/base/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final b(Lcom/tencent/qphone/base/remote/FromServiceMsg;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qphone/a/a/a/c;->a:Lcom/tencent/qphone/a/a/a/e;

    const-string v1, "getMainUser"

    iget-object v2, p1, Lcom/tencent/qphone/base/remote/FromServiceMsg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/tencent/qphone/a/a/a/e;->a(Lcom/tencent/qphone/base/remote/FromServiceMsg;)V

    :cond_0
    return-void
.end method
