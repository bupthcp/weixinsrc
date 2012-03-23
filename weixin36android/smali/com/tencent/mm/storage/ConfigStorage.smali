.class public Lcom/tencent/mm/storage/ConfigStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storage/IConfigStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS userinfo ( id INTEGER PRIMARY KEY, type INT, value TEXT )"

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/storage/ConfigStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    new-instance v0, Lcom/tencent/mm/storage/ConfigDBStorage;

    invoke-direct {v0, p1}, Lcom/tencent/mm/storage/ConfigDBStorage;-><init>(Lcom/tencent/mm/storagebase/SqliteDB;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    new-instance v0, Lcom/tencent/mm/storage/ConfigFileStorage;

    invoke-direct {v0, p1}, Lcom/tencent/mm/storage/ConfigFileStorage;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    invoke-interface {v0, p1}, Lcom/tencent/mm/storage/IConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/storage/ConfigStorage;->b:Lcom/tencent/mm/storage/IConfigStorage;

    invoke-interface {v0, p1, p2}, Lcom/tencent/mm/storage/IConfigStorage;->a(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/storage/ConfigStorage;->b(Ljava/lang/String;)V

    return-void
.end method
