.class Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->b(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->c(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)I

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v1}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->d(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v1}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->f(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->e(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->g(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->a(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver$1;->a:Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;->h(Lcom/tencent/mm/ui/friend/SmsBindMobileObserver;)V

    goto :goto_0
.end method
