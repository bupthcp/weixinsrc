.class Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private final a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/shake/ShakeReportUI;)V
    .locals 1

    new-instance v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-direct {v0}, Lcom/tencent/mm/modelshake/ShakeItem;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->b:Z

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelshake/ShakeItem;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->b()V

    return-void
.end method

.method protected final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->b:Z

    invoke-virtual {p0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a(Landroid/database/Cursor;)V

    :goto_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->I()Lcom/tencent/mm/modelshake/ShakeItemStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItemStorage;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    if-nez p2, :cond_3

    new-instance v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;-><init>()V

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v2, 0x7f03009d

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0701a1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    const v0, 0x7f0701a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f0701a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f0701a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    const v0, 0x7f0701a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    const v0, 0x7f0701a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelshake/ShakeItem;

    invoke-virtual {p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->q()I

    move-result v6

    if-ne v6, v11, :cond_4

    iget-object v6, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v7, 0x7f0201a3

    invoke-virtual {v6, v7}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p2, v5, v3, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->r()I

    move-result v1

    if-ne v1, v10, :cond_5

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v5, 0x7f0a03f5

    invoke-virtual {v4, v5}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_4
    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/AvatarDrawable;

    if-nez v1, :cond_2

    new-instance v1, Lcom/tencent/mm/ui/AvatarDrawable;

    iget-object v3, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v4

    invoke-static {}, Lcom/tencent/mm/ui/AvatarDrawable;->a()I

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/tencent/mm/ui/AvatarDrawable;-><init>(Landroid/widget/ImageView;II)V

    iget-object v3, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->a:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/ui/AvatarDrawable;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->h()Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->l()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_5
    return-object p2

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;

    move-object v2, v0

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v7, 0x7f02019b

    invoke-virtual {v6, v7}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v1, v3, v4}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v1

    iget-object v3, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v1

    if-ne v1, v10, :cond_8

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v4, 0x7f02013a

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/mm/modelshake/ShakeItem;->i()I

    move-result v1

    if-ne v1, v11, :cond_1

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->d:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter;->a:Lcom/tencent/mm/ui/shake/ShakeReportUI;

    const v4, 0x7f020139

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/shake/ShakeReportUI;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_9
    iget-object v0, v2, Lcom/tencent/mm/ui/shake/ShakeFriendAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method
