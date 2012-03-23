.class Lcom/tencent/mm/ui/SendContactCardUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SendContactCardUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/SendContactCardUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SendContactCardUI$3;->a:Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI$3;->a:Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendContactCardUI;->b(Lcom/tencent/mm/ui/SendContactCardUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI$3;->a:Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendContactCardUI;->c(Lcom/tencent/mm/ui/SendContactCardUI;)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI$3;->a:Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/SendContactCardUI;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SendContactCardUI$3;->a:Lcom/tencent/mm/ui/SendContactCardUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendContactCardUI;->d(Lcom/tencent/mm/ui/SendContactCardUI;)V

    goto :goto_0
.end method
