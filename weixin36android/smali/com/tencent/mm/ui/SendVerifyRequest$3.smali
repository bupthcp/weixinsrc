.class Lcom/tencent/mm/ui/SendVerifyRequest$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SendVerifyRequest;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/SendVerifyRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SendVerifyRequest$3;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$3;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->d(Lcom/tencent/mm/ui/SendVerifyRequest;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$3;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->e(Lcom/tencent/mm/ui/SendVerifyRequest;)Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/SendVerifyRequest$IOnSendVerifyRequest;->a()V

    return-void
.end method
