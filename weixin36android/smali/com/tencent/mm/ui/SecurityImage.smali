.class public Lcom/tencent/mm/ui/SecurityImage;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/app/AlertDialog;

.field private g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->b:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->d:Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SecurityImage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    iput-object p2, p0, Lcom/tencent/mm/ui/SecurityImage;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MicroMsg.SecurityImage"

    const-string v1, "setSecImg failed, decode failed"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/ui/SecurityImage;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/SecurityImage;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v2, p0, Lcom/tencent/mm/ui/SecurityImage;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->b:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x28

    goto :goto_0

    :cond_2
    const v0, -0x555556

    goto :goto_1
.end method

.method static synthetic b(Lcom/tencent/mm/ui/SecurityImage;)Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/SecurityImage;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;->a(Lcom/tencent/mm/ui/SecurityImage;)V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    invoke-virtual {v0, p0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;->a(Lcom/tencent/mm/ui/SecurityImage;)V

    return-void
.end method

.method protected final a(ZLandroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->a(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/SecurityImage;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final a([BLjava/lang/String;)V
    .locals 2

    const v0, 0x7f070230

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f07022f

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->c:Landroid/widget/ImageView;

    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->d:Landroid/widget/Button;

    const v0, 0x7f070232

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->d:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/mm/ui/SecurityImage$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/SecurityImage$1;-><init>(Lcom/tencent/mm/ui/SecurityImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->g:Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/SecurityImage$ISecurityModel;->b()V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/mm/ui/SecurityImage;->b([BLjava/lang/String;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b([BLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/SecurityImage;->a(Z)V

    iput-object p2, p0, Lcom/tencent/mm/ui/SecurityImage;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/mm/ui/SecurityImage;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/SecurityImage;->f:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method
