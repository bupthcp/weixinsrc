.class public Lcom/tencent/mm/ui/RoomInfoContPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:Lcom/tencent/mm/ui/MMGridView;

.field private b:Lcom/tencent/mm/ui/RoomInfoAdapter;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private h:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->c:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;ZI)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->e:I

    :goto_0
    iput p3, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->f:I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->e:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->d(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(I)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->c(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/RoomInfoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/Contact;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/Contact;->s()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public notifyChanged()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/RoomInfoAdapter;->b()V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 5

    const-string v0, "MicroMsg.RoomInfoContPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MicroMsg.RoomInfoContPreference BindView  roomId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " roomType :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f070229

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMGridView;

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->a:Lcom/tencent/mm/ui/MMGridView;

    new-instance v0, Lcom/tencent/mm/ui/RoomInfoAdapter;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->d:Ljava/lang/String;

    iget v3, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->e:I

    iget v4, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->f:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tencent/mm/ui/RoomInfoAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->a:Lcom/tencent/mm/ui/MMGridView;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->b:Lcom/tencent/mm/ui/RoomInfoAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->a:Lcom/tencent/mm/ui/MMGridView;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->g:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->a:Lcom/tencent/mm/ui/MMGridView;

    iget-object v1, p0, Lcom/tencent/mm/ui/RoomInfoContPreference;->h:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method
