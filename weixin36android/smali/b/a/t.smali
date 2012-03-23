.class Lb/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/l;


# static fields
.field private static final a:I = 0xf


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ListView;)V
    .locals 2

    const/16 v1, 0xf

    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    return-void
.end method
