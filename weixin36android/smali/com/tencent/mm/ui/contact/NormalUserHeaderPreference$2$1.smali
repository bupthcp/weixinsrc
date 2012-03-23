.class Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2$1;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;

    iget-object v0, v0, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference$2;->a:Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;->b(Lcom/tencent/mm/ui/contact/NormalUserHeaderPreference;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
