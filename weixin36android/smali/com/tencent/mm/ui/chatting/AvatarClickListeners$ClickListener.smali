.class Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/AvatarClickListeners;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->b:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->b:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Lcom/tencent/mm/ui/chatting/AvatarClickListeners;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Contact_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/AvatarClickListeners$ClickListener;->b:Lcom/tencent/mm/ui/chatting/AvatarClickListeners;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/AvatarClickListeners;->a(Lcom/tencent/mm/ui/chatting/AvatarClickListeners;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
