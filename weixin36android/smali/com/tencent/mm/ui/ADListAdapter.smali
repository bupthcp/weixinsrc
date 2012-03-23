.class Lcom/tencent/mm/ui/ADListAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Lcom/tencent/mm/modelpmsg/PushMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/tencent/mm/ui/ADListAdapter;->b:Lcom/tencent/mm/modelpmsg/PushMessage;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ADListAdapter;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/tencent/mm/ui/Message;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/Message;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ADListAdapter;->b()V

    return-void
.end method

.method public final a(Lcom/tencent/mm/modelpmsg/PushMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/ADListAdapter;->b:Lcom/tencent/mm/modelpmsg/PushMessage;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->b:Lcom/tencent/mm/modelpmsg/PushMessage;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/mm/ui/Message;

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListAdapter;->b:Lcom/tencent/mm/modelpmsg/PushMessage;

    invoke-direct {v0, v1}, Lcom/tencent/mm/ui/Message;-><init>(Lcom/tencent/mm/modelpmsg/PushMessage;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ADListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/ADListAdapter;->a(I)Lcom/tencent/mm/ui/Message;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/ADListAdapter;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/Message;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/ui/ADListAdapter;->d:Landroid/content/Context;

    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/tencent/mm/ui/ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/ViewHolder;-><init>()V

    iput-object p2, v2, Lcom/tencent/mm/ui/ViewHolder;->a:Landroid/view/View;

    const v1, 0x7f07000f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v2, Lcom/tencent/mm/ui/ViewHolder;->b:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/Message;->a(Lcom/tencent/mm/ui/ViewHolder;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ViewHolder;

    goto :goto_0
.end method
