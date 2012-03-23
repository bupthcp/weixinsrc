.class final Lcom/tencent/mm/ui/MMToast$3;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Landroid/widget/PopupWindow;


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMToast$3;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
