.class Lcom/tencent/mm/model/AccountStorage$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/mm/model/AccountStorage;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/AccountStorage;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/model/AccountStorage$2;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    sget-object v1, Lcom/tencent/mm/model/ContactStorageLogic;->d:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget-object v4, p0, Lcom/tencent/mm/model/AccountStorage$2;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v4}, Lcom/tencent/mm/model/AccountStorage;->d(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/mm/storage/ContactStorage;->c(Ljava/lang/String;)Lcom/tencent/mm/storage/Contact;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/tencent/mm/storage/Contact;->o()I

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/tencent/mm/storage/Contact;->a(J)V

    iget-object v5, p0, Lcom/tencent/mm/model/AccountStorage$2;->a:Lcom/tencent/mm/model/AccountStorage;

    invoke-static {v5}, Lcom/tencent/mm/model/AccountStorage;->d(Lcom/tencent/mm/model/AccountStorage;)Lcom/tencent/mm/storage/ContactStorage;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/tencent/mm/storage/ContactStorage;->a(Ljava/lang/String;Lcom/tencent/mm/storage/Contact;)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
