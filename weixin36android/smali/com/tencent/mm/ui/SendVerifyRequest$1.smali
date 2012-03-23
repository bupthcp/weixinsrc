.class Lcom/tencent/mm/ui/SendVerifyRequest$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/SendVerifyRequest;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/SendVerifyRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->b(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->c(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    iget-object v0, p0, Lcom/tencent/mm/ui/SendVerifyRequest$1;->a:Lcom/tencent/mm/ui/SendVerifyRequest;

    invoke-static {v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->c(Lcom/tencent/mm/ui/SendVerifyRequest;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f070241

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/SendVerifyRequest;->a(Lcom/tencent/mm/ui/SendVerifyRequest;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
