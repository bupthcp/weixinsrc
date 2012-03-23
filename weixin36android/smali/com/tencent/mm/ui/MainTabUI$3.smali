.class Lcom/tencent/mm/ui/MainTabUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainTabUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainTabUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->c(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->b(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->a(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->d(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->e(Lcom/tencent/mm/ui/MainTabUI;)I

    move-result v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/FindFriendUIGroup;->a:Lcom/tencent/mm/ui/FindFriendUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/FindFriendUIGroup;->d()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0, v3}, Lcom/tencent/mm/ui/MainTabUI;->a(Lcom/tencent/mm/ui/MainTabUI;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/MainTabUI;->f(Lcom/tencent/mm/ui/MainTabUI;)Landroid/widget/TabHost;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MainTabUI$3;->a:Lcom/tencent/mm/ui/MainTabUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/MainTabUI;->e(Lcom/tencent/mm/ui/MainTabUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    return-void
.end method
