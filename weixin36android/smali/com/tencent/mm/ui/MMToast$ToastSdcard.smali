.class public Lcom/tencent/mm/ui/MMToast$ToastSdcard;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/widget/Toast;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 4

    const/4 v1, 0x0

    const v3, 0x7f07022b

    const/4 v2, 0x1

    sget v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->b:I

    if-eq v0, p1, :cond_0

    sput-object v1, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    sput p1, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->b:I

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    :cond_1
    const v0, 0x7f0300cd

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-ne p1, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a004a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    sget-object v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v0, Lcom/tencent/mm/ui/MMToast$ToastSdcard;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0a004b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
