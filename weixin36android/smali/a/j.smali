.class public final La/j;
.super Ljava/lang/Object;

# interfaces
.implements La/n;


# instance fields
.field private a:Ljava/util/Map;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La/j;->b:Ljava/util/List;

    return-void
.end method

.method private b(La/k;)La/h;
    .locals 3

    iget-object v0, p0, La/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, La/g;->a()La/g;

    move-result-object v0

    throw v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    :try_start_0
    iget-object v2, p0, La/j;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v2}, La/n;->a(La/k;Ljava/util/Map;)La/h;
    :try_end_0
    .catch La/i; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(La/k;)La/h;
    .locals 1

    iget-object v0, p0, La/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/j;->a(Ljava/util/Map;)V

    :cond_0
    invoke-direct {p0, p1}, La/j;->b(La/k;)La/h;

    move-result-object v0

    return-object v0
.end method

.method public final a(La/k;Ljava/util/Map;)La/h;
    .locals 1

    invoke-virtual {p0, p2}, La/j;->a(Ljava/util/Map;)V

    invoke-direct {p0, p1}, La/j;->b(La/k;)La/h;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, La/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/n;

    invoke-interface {v0}, La/n;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2

    iput-object p1, p0, La/j;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    sget-object v0, La/l;->c:La/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :cond_0
    if-nez p1, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, La/j;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_1

    sget-object v1, La/a;->a:La/a;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, La/j;->b:Ljava/util/List;

    new-instance v1, La/a/a;

    invoke-direct {v1}, La/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, La/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/j;->b:Ljava/util/List;

    new-instance v1, La/a/a;

    invoke-direct {v1}, La/a/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void

    :cond_3
    sget-object v0, La/l;->b:La/l;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_0
.end method
