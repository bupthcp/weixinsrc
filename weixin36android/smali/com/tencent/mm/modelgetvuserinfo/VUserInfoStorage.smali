.class public Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS vuserpicinfo ( id int  PRIMARY KEY , desc text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    iput-object p2, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(IZ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vuserpic_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    const-string v0, "_HD"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from vuserpicinfo"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->b()V

    invoke-virtual {p1}, Lcom/tencent/mm/modelgetvuserinfo/VUserInfo;->a()Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tencent/mm/modelgetvuserinfo/VUserInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "vuserpicinfo"

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int v1, v3

    if-eq v2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
