.class public Lcom/tencent/qqpim/utils/ToastUtil;
.super Ljava/lang/Object;


# static fields
.field private static toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAndShowToast(Landroid/widget/Toast;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static cancelToast(Landroid/widget/Toast;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public static showToast(II)V
    .locals 1

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/qqpim/utils/ToastUtil;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static showToast(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    const/16 v1, 0x51

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/qqpim/utils/QQPimUtils;->APPLICATION_CONTEXT:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    sget-object v0, Lcom/tencent/qqpim/utils/ToastUtil;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
