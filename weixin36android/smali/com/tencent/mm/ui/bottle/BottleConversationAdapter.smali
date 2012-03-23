.class Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;
.super Lcom/tencent/mm/ui/ConversationAdapter;


# instance fields
.field private final b:Lcom/tencent/mm/ui/MMActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/mm/ui/ConversationAdapter;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    return-void
.end method


# virtual methods
.method final a(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0a03e6

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Contact;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ConversationStorage;->d()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

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

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    if-nez p2, :cond_1

    new-instance v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

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
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a(Lcom/tencent/mm/storage/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->c()I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f0a012d

    invoke-virtual {v2, v4}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/model/ContactStorageLogic;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    iget-object v4, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v3, v2, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->d()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->c()I

    move-result v2

    invoke-static {v2}, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v3, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
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

    if-le v6, v7, :cond_4

    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const-string v6, "..."

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p2, v5, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->f()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v6}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_1

    :cond_3
    iget-object v2, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v6

    if-lez v6, :cond_5

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

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0, v10}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/BottleConversationAdapter;->b:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f02019b

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
