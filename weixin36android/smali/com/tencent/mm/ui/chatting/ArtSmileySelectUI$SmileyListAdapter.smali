.class Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    return-object v0
.end method

.method public final a()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->a(I)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->a:Landroid/content/Context;

    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v2, v0, v3}, Lcom/tencent/mm/ui/chatting/SpanUtil;->b(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v0

    iget-object v1, v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
