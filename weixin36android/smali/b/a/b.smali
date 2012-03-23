.class public Lb/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/widget/ListView;)V
    .locals 2

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/a/t;

    invoke-direct {v0}, Lb/a/t;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/t;->a(Landroid/widget/ListView;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lb/a/x;

    invoke-direct {v0}, Lb/a/x;-><init>()V

    invoke-virtual {v0, p0}, Lb/a/x;->a(Landroid/widget/ListView;)V

    goto :goto_0
.end method
