.class public Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

.field private e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

.field private f:Ljava/util/List;

.field private g:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->a:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->a:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300aa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0a0471

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->f:Ljava/util/List;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b()Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    const v0, 0x7f0701c2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c:Landroid/widget/ListView;

    const v0, 0x7f070130

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    const v0, 0x7f0300ce

    invoke-static {p0, v0, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07022c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f07022d

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f02026b

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$2;

    invoke-direct {v3, p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Landroid/widget/Button;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v3, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;

    invoke-direct {v3, p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$4;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-virtual {v0, v5}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->notifyDataSetChanged()V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$5;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$5;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$6;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$6;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->a(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0472

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$7;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$7;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0457

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$8;

    invoke-direct {v4, p0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$8;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->d:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->g:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI;->e:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrListUI$AddrListAdapter;->notifyDataSetChanged()V

    return-void
.end method
