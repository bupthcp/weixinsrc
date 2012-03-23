.class Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/EditText;

.field private synthetic b:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;->b:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
