.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper$OnUploadCompletedListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->p(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    const v2, 0x7f0a045b

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14$2;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    iget-object v1, v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;J)J

    return-void
.end method
