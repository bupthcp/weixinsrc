.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;
.super Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$OnActionListener;


# instance fields
.field final synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

.field private b:Landroid/widget/ImageView;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/widget/ImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-direct {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$OnActionListener;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->c:I

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 4

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->h(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method
