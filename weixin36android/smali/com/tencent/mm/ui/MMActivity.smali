.class public abstract Lcom/tencent/mm/ui/MMActivity;
.super Landroid/app/Activity;


# static fields
.field private static b:F


# instance fields
.field private a:Lcom/tencent/mm/ui/Controller;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/LinearLayout;

.field private f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

.field private g:Landroid/view/LayoutInflater;

.field private h:Landroid/view/View;

.field private i:Landroid/media/AudioManager;

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f80

    sput v0, Lcom/tencent/mm/ui/MMActivity;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    return-void
.end method

.method public static a(F)V
    .locals 0

    sput p0, Lcom/tencent/mm/ui/MMActivity;->b:F

    return-void
.end method

.method public static k()F
    .locals 1

    sget v0, Lcom/tencent/mm/ui/MMActivity;->b:F

    return v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/Controller;->a(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/Controller;->a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected final a(Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected final a(Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final a_(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/Controller;->b(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/mm/ui/MMActivity;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    const v1, 0x7f0201c2

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/mm/ui/Controller;->b(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->a(Z)V

    return-void
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getParent()Landroid/app/Activity;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public c(ILandroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/tencent/mm/ui/Controller;->a(Ljava/lang/Object;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->c(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->b()V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->d(I)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->e(I)V

    return-void
.end method

.method protected final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->c:Landroid/view/View;

    return-object v0
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->a(I)V

    return-void
.end method

.method protected final g()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->h:Landroid/view/View;

    return-object v0
.end method

.method public final g(I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/Controller;->b(I)V

    return-void
.end method

.method protected h()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected j()I
    .locals 1

    const v0, 0x7f030093

    return v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Controller;->b()V

    return-void
.end method

.method public final m()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/Controller;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final n()V
    .locals 3

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "com.tencent.mm_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    :cond_1
    :goto_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MMActivity;->j:I

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->g:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->g:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->g:Landroid/view/LayoutInflater;

    const v1, 0x7f030070

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->h:Landroid/view/View;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->e:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->h:Landroid/view/View;

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->d:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->j()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->e:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/mm/ui/MMActivity;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    :cond_3
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->a()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->g:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->e:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->h:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->setContentView(Landroid/view/View;)V

    :cond_4
    new-instance v0, Lcom/tencent/mm/ui/Controller;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/Controller;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->a:Lcom/tencent/mm/ui/Controller;

    const v0, 0x7f070219

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/tencent/mm/ui/MMActivity$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/MMActivity$1;-><init>(Lcom/tencent/mm/ui/MMActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_5
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->i()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->c()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/MMCore;->a(Landroid/content/Context;)V

    :cond_6
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->q()Lcom/tencent/mm/network/IDispatcher;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/CoreServiceHelper;->b(Landroid/content/Context;)V

    const-string v0, "MicroMsg.MMActivity"

    const-string v1, "service not binded in non-standalone mode"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->finish()V

    :cond_7
    return-void

    :cond_8
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0

    :cond_9
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/Context;Ljava/util/Locale;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/skin/MMSkinFactory;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->f:Lcom/tencent/mm/ui/skin/MMSkinFactory;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v0, 0x19

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->j:I

    div-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_0

    move v0, v1

    :cond_0
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    sub-int v0, v2, v0

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return v1

    :cond_1
    const/16 v0, 0x18

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget v0, p0, Lcom/tencent/mm/ui/MMActivity;->j:I

    div-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_2

    move v0, v1

    :cond_2
    iget-object v3, p0, Lcom/tencent/mm/ui/MMActivity;->i:Landroid/media/AudioManager;

    add-int/2addr v0, v2

    invoke-virtual {v3, v4, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Z)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Z)V

    :cond_0
    instance-of v0, p0, Lcom/tencent/mm/ui/chatting/ChattingUI;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lcom/tencent/mm/ui/MMAppMgr;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMActivity;->h()I

    move-result v0

    if-ne v0, v2, :cond_0

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v3}, Lcom/tencent/mm/ui/MMActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "settings_landscape_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/MMActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
