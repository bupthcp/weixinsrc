.class Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/friend/QQGroupUI;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/friend/QQGroupUI;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->a:Lcom/tencent/mm/ui/friend/QQGroupUI;

    new-instance v0, Lcom/tencent/mm/modelfriend/QQGroup;

    invoke-direct {v0}, Lcom/tencent/mm/modelfriend/QQGroup;-><init>()V

    invoke-direct {p0, p2, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/modelfriend/QQGroup;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/modelfriend/QQGroup;

    invoke-direct {p1}, Lcom/tencent/mm/modelfriend/QQGroup;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/modelfriend/QQGroup;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->b()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->s()Lcom/tencent/mm/modelfriend/QQGroupStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroupStorage;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->a(Landroid/database/Cursor;)V

    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const v8, 0x7f0a0304

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelfriend/QQGroup;

    if-nez p2, :cond_0

    new-instance v2, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;-><init>(Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;)V

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->d:Landroid/content/Context;

    const v3, 0x7f0300a8

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0701ba

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v1, 0x7f0701bb

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    iget-object v2, v1, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->d()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->c()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, v1, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v1, 0x7f0a0305

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->a:Lcom/tencent/mm/ui/friend/QQGroupUI;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v8, v3}, Lcom/tencent/mm/ui/friend/QQGroupUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter$ViewHolder;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/ui/friend/QQGroupUI$QQGroupAdapter;->a:Lcom/tencent/mm/ui/friend/QQGroupUI;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/tencent/mm/modelfriend/QQGroup;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {v2, v8, v3}, Lcom/tencent/mm/ui/friend/QQGroupUI;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
