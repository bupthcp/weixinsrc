.class Lcom/tencent/mm/ui/QConversationAdapter;
.super Lcom/tencent/mm/ui/ConversationAdapter;


# instance fields
.field private final b:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/ConversationAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConversationStorage;->f(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QConversationAdapter;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/ui/MListAdapter$CallBack;->a()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/ConversationAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0201a3

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/QConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    if-nez p2, :cond_0

    new-instance v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0300f6

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f070106

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v1, 0x7f070108

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f07010b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v1, 0x7f07010d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    const v1, 0x7f07010c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const v1, 0x7f070107

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/QConversationAdapter;->a(Lcom/tencent/mm/storage/Conversation;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/QConversationAdapter;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/tencent/mm/ui/QConversationAdapter;->b(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->c()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/QConversationAdapter;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v6

    const/16 v7, 0x64

    if-le v6, v7, :cond_2

    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const-string v6, "..."

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    invoke-virtual {p2, v5, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_1
    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v6

    if-lez v6, :cond_3

    iget-object v6, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/QConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
