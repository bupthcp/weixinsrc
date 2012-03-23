.class Lcom/tencent/mm/ui/friend/QQGroupUI$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/friend/QQGroupUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/QQGroupUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$4;->a:Lcom/tencent/mm/ui/friend/QQGroupUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$4;->a:Lcom/tencent/mm/ui/friend/QQGroupUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/QQGroupUI;->b(Lcom/tencent/mm/ui/friend/QQGroupUI;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lb/a/b;->a(Landroid/widget/ListView;)V

    return-void
.end method
