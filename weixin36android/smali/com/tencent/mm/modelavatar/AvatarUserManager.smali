.class final Lcom/tencent/mm/modelavatar/AvatarUserManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/algorithm/LRUMap;

.field private static b:Ljava/util/Stack;

.field private static c:Ljava/util/Map;

.field private static d:Ljava/util/Stack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tencent/mm/algorithm/LRUMap;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;-><init>(I)V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Stack;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    return-object v0
.end method

.method public static a(Ljava/lang/String;[B)V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->a(Ljava/lang/String;I)Z

    return-void
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v0}, Lcom/tencent/mm/algorithm/LRUMap;->a()V

    return-void
.end method

.method public static d()Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;
    .locals 3

    const-string v0, "MicroMsg.AvatarUserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRes size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;

    invoke-direct {v2}, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;-><init>()V

    iput-object v0, v2, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->a:Ljava/lang/String;

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v2, Lcom/tencent/mm/modelavatar/AvatarUserManager$AvatarRes;->b:[B

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Ljava/util/List;
    .locals 16

    const-wide/16 v14, 0x258

    const/4 v13, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v4, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;

    invoke-direct {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_9

    sget-object v0, Lcom/tencent/mm/modelavatar/AvatarUserManager;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarUserManager;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/tencent/mm/model/ContactStorageLogic;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "@bottle"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->c()J

    move-result-wide v7

    sget-object v1, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/algorithm/LRUMap;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;

    if-eqz v1, :cond_4

    iget v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    if-lt v9, v13, :cond_4

    iget-wide v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sub-long v9, v7, v9

    cmp-long v9, v9, v14

    if-gez v9, :cond_4

    const-string v1, "MicroMsg.AvatarUserManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkUser block by recentdown :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-static {v0}, Lcom/tencent/mm/modelavatar/AvatarLogic;->m(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v1, "MicroMsg.AvatarUserManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkUser block local no need :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/tencent/mm/platformtools/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;-><init>()V

    iput v13, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    iput-wide v7, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sget-object v7, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v2

    goto/16 :goto_1

    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;

    invoke-direct {v1}, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;-><init>()V

    iput v3, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    iput-wide v7, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sget-object v7, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    goto/16 :goto_1

    :cond_6
    const-string v9, "MicroMsg.AvatarUserManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkUser retry now :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " tryCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sub-long v11, v7, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    if-ge v9, v13, :cond_7

    iget v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    iput-wide v7, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sget-object v7, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    goto/16 :goto_1

    :cond_7
    iget-wide v9, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sub-long v9, v7, v9

    cmp-long v9, v9, v14

    if-lez v9, :cond_8

    iput v3, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->b:I

    iput-wide v7, v1, Lcom/tencent/mm/modelavatar/AvatarUserManager$RecentDownInfo;->a:J

    sget-object v7, Lcom/tencent/mm/modelavatar/AvatarUserManager;->a:Lcom/tencent/mm/algorithm/LRUMap;

    invoke-virtual {v7, v0, v1}, Lcom/tencent/mm/algorithm/LRUMap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    move v1, v3

    goto/16 :goto_1

    :cond_8
    const-string v1, "MicroMsg.AvatarUserManager"

    const-string v7, "Never should go here BUG!"

    invoke-static {v1, v7}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_1

    :cond_9
    const-string v0, "MicroMsg.AvatarUserManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReqUser time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lcom/tencent/mm/algorithm/CodeInfo$TestTime;->b()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
