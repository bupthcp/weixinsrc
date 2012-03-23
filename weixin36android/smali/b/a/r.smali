.class public Lb/a/r;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/aj;

    invoke-direct {v0}, Lb/a/aj;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/aj;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lb/a/aa;

    invoke-direct {v0}, Lb/a/aa;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/a/aa;->a(Landroid/view/View;Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
