.class Lcom/tencent/mm/ui/skin/SkinSelectUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/skin/SkinSelectUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/skin/SkinSelectUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/ui/MainTabUI;->a()Lcom/tencent/mm/ui/MainTabUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainTabUI;->finish()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    const-class v2, Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/skin/SkinSelectUI$3;->a:Lcom/tencent/mm/ui/skin/SkinSelectUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/SkinSelectUI;->finish()V

    return-void
.end method
