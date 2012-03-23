.class Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;
.super Lcom/tencent/mm/ui/MListAdapter;


# static fields
.field private static a:S

.field private static b:S

.field private static f:S

.field private static g:S


# instance fields
.field private h:[S

.field private i:Ljava/util/List;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Lcom/tencent/mm/ui/MMActivity;

.field private n:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;

.field private final o:Lcom/tencent/mm/ui/chatting/SpanUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a:S

    const/4 v0, 0x2

    sput-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b:S

    const/4 v0, 0x3

    sput-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->f:S

    const/4 v0, 0x4

    sput-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->g:S

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-direct {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/tencent/mm/ui/MListAdapter;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->j:Ljava/lang/String;

    move-object v0, p1

    check-cast v0, Lcom/tencent/mm/ui/MMActivity;

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->i:Ljava/util/List;

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->l:I

    new-instance v0, Lcom/tencent/mm/ui/chatting/SpanUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/mm/ui/chatting/SpanUtil;-><init>(Landroid/content/Context;Lcom/tencent/mm/ui/chatting/SpanUtil$OnClickListener;)V

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->o:Lcom/tencent/mm/ui/chatting/SpanUtil;

    return-void
.end method

.method private static a(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    const/16 v0, 0x64

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    if-ge p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x2

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-ge p0, v0, :cond_2

    div-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x64

    goto :goto_0

    :cond_2
    const/16 v0, 0xcc

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->n:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    if-nez p1, :cond_0

    new-instance p1, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-direct {p1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;-><init>()V

    :cond_0
    invoke-virtual {p1, p2}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->a(Landroid/database/Cursor;)V

    return-object p1
.end method

.method protected final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b()V

    return-void
.end method

.method public final a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->n:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->b()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->l:I

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(I)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->h:[S

    :cond_0
    invoke-super {p0}, Lcom/tencent/mm/ui/MListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    iget v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->l:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->k:I

    iget v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->l:I

    if-gt v0, v1, :cond_1

    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->l:I

    rem-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    if-eqz p1, :cond_6

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e()J

    move-result-wide v2

    invoke-virtual {p0, p1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e()J

    move-result-wide v4

    sub-long v6, v4, v2

    const-wide/32 v8, 0xea60

    cmp-long v1, v6, v8

    if-gez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    sub-long v2, v4, v2

    const-wide/32 v4, 0x2bf20

    div-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->h:[S

    const/4 v2, 0x2

    aput-short v2, v1, p1

    move-object v7, v0

    :goto_2
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->h:[S

    aget-short v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->e()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->j()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0a042d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->i()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->i:Ljava/util/List;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0201b1

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iget-object v4, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_2
    const-string v1, ""

    :goto_8
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const/high16 v4, 0x437f

    invoke-static {v3, v4}, Lb/a/e;->a(Landroid/content/Context;F)I

    move-result v3

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    int-to-float v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    if-le v1, v3, :cond_18

    const/4 v1, 0x1

    :goto_9
    if-eqz v1, :cond_19

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->i:Landroid/view/View;

    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->h:[S

    const/4 v2, 0x1

    aput-short v2, v1, p1

    move-object v7, v0

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->h:[S

    const/4 v2, 0x1

    aput-short v2, v1, p1

    move-object v7, v0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    :sswitch_0
    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;-><init>()V

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-short v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    sget-short v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a:S

    if-eq v0, v3, :cond_1

    :cond_8
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03006a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f07015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f070163

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f070160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f070162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f07015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const v0, 0x7f07015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->i:Landroid/view/View;

    sget-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a:S

    iput-short v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_1
    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;-><init>()V

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-short v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    sget-short v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->g:S

    if-eq v0, v3, :cond_1

    :cond_9
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03006c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f07015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f070166

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f070167

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    const v0, 0x7f070168

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/AnimImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    const v0, 0x7f070160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f070162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f07015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const v0, 0x7f07015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->i:Landroid/view/View;

    sget-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->g:S

    iput-short v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_2
    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;-><init>()V

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-short v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    sget-short v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b:S

    if-eq v0, v3, :cond_1

    :cond_a
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030069

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f07015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f070161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f070160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f070162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f07015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const v0, 0x7f07015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->i:Landroid/view/View;

    sget-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b:S

    iput-short v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :sswitch_3
    new-instance v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-direct {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;-><init>()V

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-short v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    sget-short v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->f:S

    if-eq v0, v3, :cond_1

    :cond_b
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03006b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f07015e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->a:Landroid/widget/TextView;

    const v0, 0x7f07015f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const v0, 0x7f070161

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    const v0, 0x7f070164

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const v0, 0x7f070160

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const v0, 0x7f070162

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->g:Landroid/widget/TextView;

    const v0, 0x7f07015c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const v0, 0x7f07015d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->i:Landroid/view/View;

    sget-short v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->f:S

    iput-short v0, v2, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->k:S

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    :sswitch_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->o:Lcom/tencent/mm/ui/chatting/SpanUtil;

    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/ui/chatting/SpanUtil;->a(Landroid/widget/TextView;)V

    goto/16 :goto_6

    :sswitch_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/AnimImageView;->a()V

    :goto_b
    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v4, 0x7f0a009b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/tencent/mm/ui/MMActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    invoke-static {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Lcom/tencent/mm/ui/AnimImageView;->setWidth(I)V

    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/AnimImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->h:Lcom/tencent/mm/ui/AnimImageView;

    invoke-virtual {v2}, Lcom/tencent/mm/ui/AnimImageView;->b()V

    goto :goto_b

    :sswitch_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v3

    invoke-static {v2, v3}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Ljava/lang/String;F)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_c
    iget-object v0, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnImageClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnImageClickListener;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    :cond_f
    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0201f3

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :sswitch_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->p()Lcom/tencent/mm/modelvideo/VideoInfoStorage;

    move-result-object v0

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelvideo/VideoInfoStorage;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->k()Lcom/tencent/mm/modelimage/ImgInfoStorage;

    move-result-object v1

    invoke-static {}, Lcom/tencent/mm/ui/MMActivity;->k()F

    move-result v2

    iget-object v3, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/mm/modelimage/ImgInfoStorage;->a(Ljava/lang/String;FLandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->c()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f0202e6

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_d
    iget-object v8, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    new-instance v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q()I

    move-result v3

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->m()I

    move-result v4

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVideoClickListener;-><init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;III)V

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    iget-object v0, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_10
    iget-object v0, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v2, 0x7f020104

    invoke-virtual {v1, v2}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    :cond_11
    iget-object v1, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_d

    :cond_12
    iget-object v0, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, v6, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->d:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->k()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/Util;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_13
    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->b:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->m:Lcom/tencent/mm/ui/MMActivity;

    const v3, 0x7f0201b0

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/MMActivity;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    :cond_14
    invoke-virtual {v7}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    array-length v3, v2

    if-lez v3, :cond_1a

    invoke-static {v2}, Lcom/tencent/mm/platformtools/Util;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v3, v1

    :goto_e
    if-nez v3, :cond_15

    const-string v1, ""

    goto/16 :goto_8

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_17

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/mm/model/ContactStorageLogic;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v2, v6, :cond_16

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_10
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_9

    :cond_19
    iget-object v1, v0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$ViewHolder;->f:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_1a
    move-object v3, v1

    goto :goto_e

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x22 -> :sswitch_1
        0x2b -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x3 -> :sswitch_6
        0x22 -> :sswitch_5
        0x2b -> :sswitch_7
    .end sparse-switch
.end method
