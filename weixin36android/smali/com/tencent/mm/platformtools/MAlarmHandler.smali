.class public Lcom/tencent/mm/platformtools/MAlarmHandler;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static f:Ljava/util/Map;

.field private static h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

.field private static i:Z


# instance fields
.field private final b:I

.field private final c:Z

.field private d:J

.field private e:J

.field private final g:Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->i:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;Z)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->d:J

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    const-string v0, "bumper not initialized"

    sget-boolean v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->i:Z

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->g:Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;

    iput-boolean p2, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->c:Z

    sget v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->a:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->a:I

    :cond_0
    sget v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->a:I

    iput v0, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->b:I

    return-void
.end method

.method public static a()J
    .locals 14

    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-wide v2, v4

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/platformtools/MAlarmHandler;

    if-eqz v1, :cond_7

    iget-wide v6, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->d:J

    invoke-static {v6, v7}, Lcom/tencent/mm/platformtools/Util;->f(J)J

    move-result-wide v6

    cmp-long v12, v6, v8

    if-gez v12, :cond_0

    move-wide v6, v8

    :cond_0
    iget-wide v12, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    cmp-long v12, v6, v12

    if-lez v12, :cond_3

    iget-object v6, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->g:Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;

    invoke-interface {v6}, Lcom/tencent/mm/platformtools/MAlarmHandler$CallBack;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->c:Z

    if-nez v6, :cond_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->d:J

    goto :goto_0

    :cond_2
    iget-wide v2, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    goto :goto_1

    :cond_3
    iget-wide v12, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    sub-long/2addr v12, v6

    cmp-long v0, v12, v2

    if-gez v0, :cond_7

    iget-wide v0, v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    sub-long v2, v0, v6

    move-wide v0, v2

    :goto_2
    move-wide v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v1, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    invoke-interface {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;->b()V

    const-string v0, "MicroMsg.MAlarmHandler"

    const-string v1, "cancel bumper for no more handler"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-wide v2

    :cond_7
    move-wide v0, v2

    goto :goto_2
.end method

.method public static a(Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->i:Z

    sput-object p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iput-wide p1, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->e:J

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->d:J

    invoke-virtual {p0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->b()V

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    if-eqz v0, :cond_0

    const-string v0, "MicroMsg.MAlarmHandler"

    const-string v1, "prepare bumper"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->h:Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;

    invoke-interface {v0}, Lcom/tencent/mm/platformtools/MAlarmHandler$IBumper;->a()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()Z
    .locals 2

    sget-object v0, Lcom/tencent/mm/platformtools/MAlarmHandler;->f:Ljava/util/Map;

    iget v1, p0, Lcom/tencent/mm/platformtools/MAlarmHandler;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/mm/platformtools/MAlarmHandler;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
