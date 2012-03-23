.class public final Lb/a/ae;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x5

.field private static final b:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/ab;

    invoke-direct {v0}, Lb/a/ab;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ab;->a(Landroid/webkit/WebView;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lb/a/ac;

    invoke-direct {v0}, Lb/a/ac;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/ac;->a(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public static b(Landroid/webkit/WebView;)V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    :cond_0
    return-void
.end method
