.class public Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;
.super Lcom/tencent/mm/ui/MMActivity;


# static fields
.field private static a:Ljava/util/List;


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View$OnClickListener;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

.field private b:Landroid/widget/ScrollView;

.field private c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/EditText;

.field private r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

.field private s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

.field private t:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

.field private u:Landroid/app/ProgressDialog;

.field private v:I

.field private w:Ljava/lang/String;

.field private x:J

.field private y:Lcom/tencent/mm/platformtools/MTimerHandler;

.field private z:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->t:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    iput v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    new-instance v0, Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$1;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-direct {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;-><init>(Lcom/tencent/mm/platformtools/MTimerHandler$CallBack;Z)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$2;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->z:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$11;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$11;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$12;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$12;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->B:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$13;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->C:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$14;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->D:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;

    invoke-direct {v0, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$15;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->E:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;J)J
    .locals 0

    iput-wide p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->u:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    return-object v0
.end method

.method private static a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b(Ljava/util/List;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    const v2, 0x7f0a0459

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    int-to-long v5, v1

    invoke-static {v5, v6}, Lcom/tencent/mm/platformtools/Util;->b(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {p0, v3}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$16;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$16;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;ILjava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p0, v2, v3, v4, v0}, Lcom/tencent/mm/ui/MMAlert;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 0

    sput-object p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0464

    invoke-virtual {p0, v2}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic f(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->e:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic k(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    return-object v0
.end method

.method static synthetic l(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    return v0
.end method

.method static synthetic n(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Z
    .locals 4

    const/16 v3, 0xbb8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->e()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0a044f

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->e()Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x7f0a0450

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->e()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0a0451

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    if-le v1, v2, :cond_3

    const v1, 0x7f0a046d

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic o(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->x:J

    return-wide v0
.end method

.method static synthetic p(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->u:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)J
    .locals 6

    const v5, 0x7f0a0464

    const/16 v0, 0x28

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v1, "from"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "to"

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cc"

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bcc"

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v3}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "subject"

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move-object v0, v1

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content"

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "attachlist"

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-virtual {v1}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sendtype"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oldmailid"

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->b()V

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v1

    const-string v3, "/cgi-bin/composesendwithattach"

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->E:Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;

    invoke-virtual {v1, v3, v2, v0, v4}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->a(Ljava/lang/String;Ljava/util/Map;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$HttpOptions;Lcom/tencent/mm/plugin/qqmail/model/MailAppService$CallBack;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\n| "

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_1

    :goto_2
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_2

    :cond_2
    const v0, 0x7f0a0463

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    goto :goto_1
.end method

.method static synthetic r(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->t:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    return-object v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f0300ad

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-static {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/CameraUtil;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    if-eqz p3, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p3, v0}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    if-eqz p3, :cond_0

    const-string v0, "choosed_file_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "composeType"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "mailid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    :cond_0
    const v0, 0x7f0701d2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b:Landroid/widget/ScrollView;

    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d:Landroid/widget/ImageView;

    const v0, 0x7f0701d5

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->e:Landroid/widget/LinearLayout;

    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->f:Landroid/widget/LinearLayout;

    const v0, 0x7f0701d7

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f0701d8

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->h:Landroid/widget/ImageView;

    const v0, 0x7f0701d9

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0701da

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k:Landroid/widget/ImageView;

    const v0, 0x7f0701dc

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    const v0, 0x7f0701de

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f0701e1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->p:Landroid/widget/TextView;

    const v0, 0x7f0701e2

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    const v0, 0x7f0701df

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->n:Landroid/widget/TextView;

    const v0, 0x7f0701e0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a()V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->c()Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->w:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/plugin/qqmail/model/DraftBoxMgr;->a(Ljava/lang/String;I)Lcom/tencent/mm/plugin/qqmail/model/DraftMail;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->n:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->o:Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v2, v3}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    iput-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    iget v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "toList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v1, v0, v5}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    if-eq v0, v6, :cond_2

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->b()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b:Landroid/widget/ScrollView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$3;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v5}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$OnActionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->h:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v7}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$OnActionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;

    iget-object v2, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, v6}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$OnAddrControlActionListener;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl$OnActionListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$4;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$4;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$5;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$5;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$6;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$6;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0701dd

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$7;

    invoke-direct {v2, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$7;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    new-instance v2, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$8;

    invoke-direct {v2, p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$8;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$9;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$9;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->m:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    new-instance v1, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;

    invoke-direct {v1, p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI$10;-><init>(Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a0441

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->d(I)V

    const v0, 0x7f0a0015

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->C:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    const v0, 0x7f0a0011

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->D:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setBackgroundResource(I)V

    invoke-virtual {p0, v5}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->b(Z)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->n()Lcom/tencent/mm/plugin/qqmail/model/MailAppService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAppService;->b()Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->z:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->a()V

    return-void

    :cond_8
    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->e()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->f()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->g()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->h()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/model/DraftMail;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    if-eq v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "toList"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ccList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "bccList"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "subject"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->c:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v4, v0, v5}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->g:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0, v1, v5}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->j:Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;

    invoke-virtual {v0, v2, v5}, Lcom/tencent/mm/plugin/qqmail/ui/MailAddrsViewControl;->a([Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->l:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->v:I

    if-ne v0, v6, :cond_a

    const-string v0, "Re:"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "Fwd:"

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onDestroy()V

    sget-object v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->a:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->s:Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/FileUploadHelper;->c()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->r:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;

    iget-object v1, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->z:Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr;->b(Lcom/tencent/mm/plugin/qqmail/model/MailAddrMgr$CallBack;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->t:Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/qqmail/ui/ProcessVerifyErr;->a()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->C:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/mm/ui/MMActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onPause()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    invoke-virtual {v0}, Lcom/tencent/mm/platformtools/MTimerHandler;->a()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/plugin/qqmail/ui/ComposeUI;->y:Lcom/tencent/mm/platformtools/MTimerHandler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/platformtools/MTimerHandler;->a(J)V

    return-void
.end method
