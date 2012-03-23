.class Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    const-class v3, Lcom/tencent/mm/ui/contact/ContactInfoUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "Contact_User"

    iget-object v3, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->a(Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;)I

    move-result v3

    invoke-static {v3}, Lcom/tencent/mm/plugin/readerapp/model/ReaderAppInfo;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI$3;->a:Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/readerapp/ui/ReaderAppIntroUI;->finish()V

    return-void
.end method
