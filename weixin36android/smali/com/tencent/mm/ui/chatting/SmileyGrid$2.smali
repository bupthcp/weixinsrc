.class Lcom/tencent/mm/ui/chatting/SmileyGrid$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/chatting/SmileyGrid;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/SmileyGrid;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->a(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, p3

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;->a(IILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->d(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;->a(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v1}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->f(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v0}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->h(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v2}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->b(Lcom/tencent/mm/ui/chatting/SmileyGrid;)Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v4}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->c(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/mm/ui/chatting/SmileyGrid$2;->a:Lcom/tencent/mm/ui/chatting/SmileyGrid;

    invoke-static {v5}, Lcom/tencent/mm/ui/chatting/SmileyGrid;->e(Lcom/tencent/mm/ui/chatting/SmileyGrid;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v4, p3

    invoke-virtual {v3, v4}, Lcom/tencent/mm/ui/chatting/SmileyGrid$SmileyAdapter;->a(I)Lcom/tencent/mm/modelemoji/EmojiInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/ui/chatting/SmileyGrid$OnSmileySelectedListener;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
