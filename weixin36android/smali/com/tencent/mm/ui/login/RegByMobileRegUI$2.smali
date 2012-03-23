.class Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-virtual {v0, p2}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->b(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegByMobileRegUI$2;->a:Lcom/tencent/mm/ui/login/RegByMobileRegUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/login/RegByMobileRegUI;->a(Lcom/tencent/mm/ui/login/RegByMobileRegUI;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
