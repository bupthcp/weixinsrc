.class Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend$1;->a:Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;

    invoke-static {v2}, Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;->a(Lcom/tencent/mm/ui/contact/ContactWidgetQQFriend;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/ui/bindqq/BindQQUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMWizardActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
