.class Lcom/tencent/mm/ui/friend/QQFriendUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/widget/ListView;

.field private synthetic b:Lcom/tencent/mm/ui/friend/QQFriendUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/QQFriendUI;Landroid/widget/ListView;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/QQFriendUI$6;->b:Lcom/tencent/mm/ui/friend/QQFriendUI;

    iput-object p2, p0, Lcom/tencent/mm/ui/friend/QQFriendUI$6;->a:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/friend/QQFriendUI$6;->a:Landroid/widget/ListView;

    invoke-static {v0}, Lb/a/b;->a(Landroid/widget/ListView;)V

    return-void
.end method
