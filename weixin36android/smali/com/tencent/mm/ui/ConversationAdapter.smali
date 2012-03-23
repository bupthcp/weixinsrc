.class public Lcom/tencent/mm/ui/ConversationAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field protected a:Lcom/tencent/mm/ui/MMActivity;

.field private b:Ljava/util/List;

.field private f:[Landroid/content/res/ColorStateList;

.field private g:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/mm/ui/MListAdapter$CallBack;)V
    .locals 4

    new-instance v0, Lcom/tencent/mm/storage/Conversation;

    invoke-direct {v0}, Lcom/tencent/mm/storage/Conversation;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->b:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->f:[Landroid/content/res/ColorStateList;

    invoke-super {p0, p2}, Lcom/tencent/mm/ui/MListAdapter;->a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V

    check-cast p1, Lcom/tencent/mm/ui/MMActivity;

    iput-object p1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const-string v0, "MicroMsg.ConversationAdapter"

    const-string v1, "set color"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->f:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f08001f

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->f:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    return-void
.end method

.method protected static a(I)I
    .locals 2

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0x7f0201e5

    goto :goto_0

    :pswitch_2
    sget-boolean v1, Lcom/tencent/mm/test/Test;->b:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0201e3

    goto :goto_0

    :pswitch_3
    sget-boolean v1, Lcom/tencent/mm/test/Test;->b:Z

    if-eqz v1, :cond_0

    const v0, 0x7f0201e4

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0201e2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected static b(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/AvatarDrawable;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v1

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/tencent/mm/storage/Conversation;)Ljava/lang/CharSequence;
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->c()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f0a012d

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->f()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/Conversation;->f()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v4}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/storage/Conversation;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/storage/Conversation;

    invoke-direct {p1}, Lcom/tencent/mm/storage/Conversation;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/storage/Conversation;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/ConversationAdapter;->b()V

    return-void
.end method

.method protected final a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v1, 0x7f020143

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->b:Ljava/util/List;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ConversationAdapter;->a_(Ljava/lang/String;)V

    return-void
.end method

.method public final a_(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MicroMsg.ConversationAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MListAdapter;->a_(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)I
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

.method public b()V
    .locals 3

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->j()Lcom/tencent/mm/storage/ConversationStorage;

    move-result-object v0

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/mm/ui/ConversationAdapter;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storage/ConversationStorage;->a(Ljava/lang/String;Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ConversationAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/ConversationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Conversation;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/ConversationAdapter;->b(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x0

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/mm/model/MsgInfoStorageLogic$VoiceContent;->d()Z

    move-result v2

    if-nez v2, :cond_e

    const/4 v1, 0x1

    move v4, v1

    :goto_0
    if-nez p2, :cond_2

    new-instance v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f030044

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

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

    const v1, 0x7f07010a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v1, 0x7f070109

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->d:Landroid/widget/ImageView;

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

    :goto_1
    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;

    if-nez v1, :cond_1

    new-instance v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;

    invoke-direct {v3, p0}, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;-><init>(Lcom/tencent/mm/ui/ConversationAdapter;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v1, v5, v6}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/ConversationAdapter;->a(Lcom/tencent/mm/storage/Conversation;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->c:Ljava/lang/CharSequence;

    iget-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v5, v1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v8, 0x11

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Integer;)I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_3

    const/4 v1, 0x1

    :goto_2
    const-string v8, "qqmail"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0a019f

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/mm/model/ChatroomMembersLogic;->e(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->b:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->c()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/ui/ConversationAdapter;->a(I)I

    move-result v1

    iput v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->e:I

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    const/16 v5, 0x64

    if-le v1, v5, :cond_a

    const-string v1, "..."

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->f:Ljava/lang/CharSequence;

    :cond_0
    :goto_5
    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    :cond_1
    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tencent/mm/ui/ConversationAdapter;->f:[Landroid/content/res/ColorStateList;

    aget-object v4, v5, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/tencent/mm/ui/ConversationAdapter;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->a:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->e:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->c:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->b:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->f:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->d:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v1, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->e:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_b

    iget-object v3, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v4, v1}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_6
    iget-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/tencent/mm/ui/ConversationAdapter;->b(Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    const/16 v3, 0x64

    if-le v1, v3, :cond_c

    iget-object v0, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;

    move-object v2, v1

    goto/16 :goto_1

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    const-string v8, "@t.qq.com"

    invoke-virtual {v1, v8}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_8
    const-string v8, "tmessage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0a019f

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_8

    :cond_6
    and-int/lit8 v1, v6, 0x40

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_9
    const-string v6, "qmessage"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    const v5, 0x7f0a019f

    invoke-virtual {v1, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_7
    const/4 v1, 0x0

    goto :goto_9

    :cond_8
    iget-object v1, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->d()I

    move-result v6

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/tencent/mm/ui/ConversationAdapter;->b(Ljava/lang/String;)I

    move-result v9

    iget-object v10, p0, Lcom/tencent/mm/ui/ConversationAdapter;->a:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v6, v7, v8, v9, v10}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a(ILjava/lang/String;Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v5}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->b:Ljava/lang/CharSequence;

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/tencent/mm/ui/ConversationAdapter$ConversationItem;->f:Ljava/lang/CharSequence;

    goto/16 :goto_5

    :cond_b
    iget-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->g:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v1

    if-lez v1, :cond_d

    iget-object v1, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Conversation;->b()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_d
    iget-object v0, v2, Lcom/tencent/mm/ui/ConversationAdapter$ViewHolder;->h:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_e
    move v4, v1

    goto/16 :goto_0
.end method
