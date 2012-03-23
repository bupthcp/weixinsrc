.class public Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;
.super Lcom/tencent/mm/ui/MMActivity;


# instance fields
.field private a:I

.field private b:Landroid/widget/ListView;

.field private c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/tencent/mm/modelemoji/EmojiInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a:I

    return v0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    const v0, 0x7f030015

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "art_smiley_select_group_md5"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->l()Lcom/tencent/mm/modelemoji/EmojiInfoStorage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelemoji/EmojiInfoStorage;->d(Ljava/lang/String;)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->e:Lcom/tencent/mm/modelemoji/EmojiInfo;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->e:Lcom/tencent/mm/modelemoji/EmojiInfo;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->e:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a:I

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->e:Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-static {p0, v0}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;Lcom/tencent/mm/modelemoji/EmojiInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$1;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$2;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$3;-><init>(Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :catch_0
    move-exception v0

    sget v0, Lcom/tencent/mm/modelemoji/EmojiInfo;->c:I

    iput v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->a:I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/mm/ui/MMActivity;->onResume()V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->e:Lcom/tencent/mm/modelemoji/EmojiInfo;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI;->c:Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/ArtSmileySelectUI$SmileyListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
