.class Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/bottle/BottleChattingUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/BottleChattingUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    const-class v2, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "Contact_User"

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleChattingUI$2;->a:Lcom/tencent/mm/ui/bottle/BottleChattingUI;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/bottle/BottleChattingUI;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
