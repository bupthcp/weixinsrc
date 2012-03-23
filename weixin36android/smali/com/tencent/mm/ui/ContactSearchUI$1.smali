.class Lcom/tencent/mm/ui/ContactSearchUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/ContactSearchUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/ContactSearchUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ContactSearchUI$1;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/mm/ui/ContactSearchUI$1;->a:Lcom/tencent/mm/ui/ContactSearchUI;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/ContactSearchUI;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
