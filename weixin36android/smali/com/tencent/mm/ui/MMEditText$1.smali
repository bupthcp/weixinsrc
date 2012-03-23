.class Lcom/tencent/mm/ui/MMEditText$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMEditText;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMEditText;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->a(Lcom/tencent/mm/ui/MMEditText;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->b(Lcom/tencent/mm/ui/MMEditText;I)I

    iget-object v0, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMEditText$1;->a:Lcom/tencent/mm/ui/MMEditText;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MMEditText;->a(Lcom/tencent/mm/ui/MMEditText;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
