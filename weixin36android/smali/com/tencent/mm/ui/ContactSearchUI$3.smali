.class Lcom/tencent/mm/ui/ContactSearchUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/ContactSearchUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ContactSearchUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ContactSearchUI$3;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI$3;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ContactSearchUI;->n()V

    iget-object v0, p0, Lcom/tencent/mm/ui/ContactSearchUI$3;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/ContactSearchUI;->finish()V

    return-void
.end method
