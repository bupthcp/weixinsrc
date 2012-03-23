.class Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->g(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/ThrowBottleUI$2;->a:Lcom/tencent/mm/ui/bottle/ThrowBottleUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/ThrowBottleUI;->i(Lcom/tencent/mm/ui/bottle/ThrowBottleUI;)V

    :cond_0
    return-void
.end method
