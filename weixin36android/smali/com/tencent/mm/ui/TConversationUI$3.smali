.class Lcom/tencent/mm/ui/TConversationUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/TConversationUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/TConversationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/TConversationUI$3;->a:Lcom/tencent/mm/ui/TConversationUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/TConversationUI$3;->a:Lcom/tencent/mm/ui/TConversationUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/TConversationUI;->a(Lcom/tencent/mm/ui/TConversationUI;)Lcom/tencent/mm/ui/MListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tencent/mm/ui/MListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    iget-object v1, p0, Lcom/tencent/mm/ui/TConversationUI$3;->a:Lcom/tencent/mm/ui/TConversationUI;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/TConversationUI;->a(Lcom/tencent/mm/ui/TConversationUI;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    return v0
.end method
