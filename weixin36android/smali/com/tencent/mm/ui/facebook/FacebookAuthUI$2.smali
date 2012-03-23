.class Lcom/tencent/mm/ui/facebook/FacebookAuthUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/facebook/FacebookAuthUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/FacebookAuthUI$2;->a:Lcom/tencent/mm/ui/facebook/FacebookAuthUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/facebook/FacebookAuthUI;->finish()V

    return-void
.end method
