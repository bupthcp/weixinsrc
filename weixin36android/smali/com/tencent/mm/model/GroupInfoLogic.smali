.class public final Lcom/tencent/mm/model/GroupInfoLogic;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x1

    new-instance v0, Lcom/tencent/mm/storage/GroupInfo;

    const-string v1, "@black.android"

    move-object v3, p0

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/GroupInfo;

    const-string v1, "@domain.android"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tencent/mm/model/GroupInfoLogic;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public static a()Z
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleStorage;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    const-string v1, "@t.qq.com"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/RoleStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Lcom/tencent/mm/storage/GroupInfo;

    const-string v1, "@t.qq.com"

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v5

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->c()Z

    move-result v6

    move-object v3, p0

    move-object v4, v2

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    move-object v2, v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/mm/storage/GroupInfo;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/mm/storage/RoleStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/RoleInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/mm/storage/GroupInfo;

    const-string v1, "@domain.android"

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/tencent/mm/model/GroupInfoLogic;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 10

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->m()Lcom/tencent/mm/storage/RoleStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleStorage;->a()Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "MicroMsg"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain mail count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    const/4 v0, 0x0

    move v7, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    const-string v1, "MicroMsg"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain mail : name"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/mm/platformtools/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/tencent/mm/storage/GroupInfo;

    const-string v1, "@domain.android"

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v2}, Lcom/tencent/mm/storage/RoleInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/tencent/mm/model/GroupInfoLogic;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v4}, Lcom/tencent/mm/storage/RoleInfo;->e()Lcom/tencent/mm/storage/RoleInfo$Parser;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/tencent/mm/storage/RoleInfo$Parser;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/mm/storage/RoleInfo;

    invoke-virtual {v5}, Lcom/tencent/mm/storage/RoleInfo;->b()Z

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/tencent/mm/storage/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    move-object v0, v8

    goto/16 :goto_0
.end method
