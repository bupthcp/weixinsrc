.class Lcom/tencent/mm/ui/SecurityImage$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SecurityImage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/SecurityImage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage$1;->a:Lcom/tencent/mm/ui/SecurityImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$1;->a:Lcom/tencent/mm/ui/SecurityImage;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage;->a(Lcom/tencent/mm/ui/SecurityImage;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$1;->a:Lcom/tencent/mm/ui/SecurityImage;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage;->b(Lcom/tencent/mm/ui/SecurityImage;)Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage$1;->a:Lcom/tencent/mm/ui/SecurityImage;

    invoke-static {v0}, Lcom/tencent/mm/ui/SecurityImage;->b(Lcom/tencent/mm/ui/SecurityImage;)Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;->a()V

    :cond_0
    return-void
.end method
