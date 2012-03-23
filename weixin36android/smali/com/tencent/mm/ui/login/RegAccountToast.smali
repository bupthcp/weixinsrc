.class public Lcom/tencent/mm/ui/login/RegAccountToast;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMToast;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->c:Landroid/content/Context;

    new-instance v0, Lcom/tencent/mm/ui/MMToast;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/MMToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    iput-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->c:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMToast;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMToast;->a(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MMToast;->setText(Ljava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMToast;->c()V

    goto :goto_0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->c:Landroid/content/Context;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v1}, Lcom/tencent/mm/ui/MMToast;->a()V

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMToast;->a(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/MMToast;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMToast;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->a:Lcom/tencent/mm/ui/MMToast;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMToast;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/mm/ui/login/RegAccountToast;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->b(C)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a00b3

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(I)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_5

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b(C)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->c(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->isSpace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0a00b5

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(I)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(C)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0a00b4

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/login/RegAccountToast;->c:Landroid/content/Context;

    const v2, 0x7f0a00b6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/tencent/mm/ui/login/RegAccountToast;->b()V

    goto :goto_0
.end method
