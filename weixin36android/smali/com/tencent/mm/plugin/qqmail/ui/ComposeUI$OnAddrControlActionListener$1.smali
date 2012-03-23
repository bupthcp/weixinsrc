.class Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->h(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->i(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener$1;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v0, v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;->a:Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
