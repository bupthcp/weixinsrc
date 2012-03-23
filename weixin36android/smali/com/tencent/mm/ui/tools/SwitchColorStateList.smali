.class public final Lcom/tencent/mm/ui/tools/SwitchColorStateList;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;


# instance fields
.field private a:[Landroid/content/res/ColorStateList;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a:[Landroid/content/res/ColorStateList;

    iput-boolean v2, p0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->c:Z

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a:[Landroid/content/res/ColorStateList;

    const v1, 0x7f080021

    invoke-virtual {p1, v1}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const v2, 0x7f080022

    invoke-virtual {p1, v2}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 2

    invoke-static {p0}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->c(Landroid/content/Context;)Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 2

    invoke-static {p0}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->c(Landroid/content/Context;)Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->a:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/tencent/mm/ui/tools/SwitchColorStateList;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    sget-object v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    iget-boolean v0, v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->c:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/tools/SwitchColorStateList;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    :cond_1
    sget-object v0, Lcom/tencent/mm/ui/tools/SwitchColorStateList;->b:Lcom/tencent/mm/ui/tools/SwitchColorStateList;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
