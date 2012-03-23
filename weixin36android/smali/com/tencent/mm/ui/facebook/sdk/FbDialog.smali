.class public Lcom/tencent/mm/ui/facebook/sdk/FbDialog;
.super Landroid/app/Dialog;


# static fields
.field private static a:[F

.field private static b:[F

.field private static c:Landroid/widget/FrameLayout$LayoutParams;


# instance fields
.field private d:Ljava/lang/String;

.field private e:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

.field private f:Landroid/app/ProgressDialog;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/webkit/WebView;

.field private i:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, -0x1

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->a:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->b:[F

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->c:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->e:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->e:Lcom/tencent/mm/ui/facebook/sdk/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->f:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->i:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic e(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->f:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->f:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->f:Landroid/app/ProgressDialog;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->requestWindowFeature(I)Z

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->i:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$1;-><init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    new-instance v3, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog$FbWebViewClient;-><init>(Lcom/tencent/mm/ui/facebook/sdk/FbDialog;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    sget-object v3, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->c:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->h:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->i:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->g:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->i:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/facebook/sdk/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
