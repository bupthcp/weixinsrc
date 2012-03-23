.class Lcom/tencent/mm/ui/MainUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MListAdapter$CallBack;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MainUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MainUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MainUI$3;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$3;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MainUI;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MainUI$3;->a:Lcom/tencent/mm/ui/MainUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/MainUI$3;->a:Lcom/tencent/mm/ui/MainUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/MainUI;->b(Lcom/tencent/mm/ui/MainUI;)Lcom/tencent/mm/ui/ConversationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/ui/ConversationAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/MainUI;->a(Lcom/tencent/mm/ui/MainUI;I)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
