.class public abstract Lcom/tencent/mm/ui/MListAdapter;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Lcom/tencent/mm/storagebase/MStorage$IOnStorageChange;


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Ljava/util/Map;

.field protected c:Ljava/lang/Object;

.field protected d:Landroid/content/Context;

.field protected e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    iput-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    iput-object p2, p0, Lcom/tencent/mm/ui/MListAdapter;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/tencent/mm/ui/MListAdapter;->d:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;
.end method

.method protected abstract a()V
.end method

.method protected final a(Landroid/database/Cursor;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    return-void
.end method

.method public final a(Lcom/tencent/mm/ui/MListAdapter$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    return-void
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/ui/MListAdapter$CallBack;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->n()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->b()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    invoke-interface {v0}, Lcom/tencent/mm/ui/MListAdapter$CallBack;->a()V

    :cond_1
    return-void
.end method

.method public abstract b()V
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    :cond_0
    iget v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->k()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/mm/ui/MListAdapter;->a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->k()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/tencent/mm/ui/MListAdapter;->a(Ljava/lang/Object;Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected final k()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MListAdapter;->a()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    return-object v0
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->e:Lcom/tencent/mm/ui/MListAdapter$CallBack;

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MListAdapter;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/MListAdapter;->f:I

    return-void
.end method
