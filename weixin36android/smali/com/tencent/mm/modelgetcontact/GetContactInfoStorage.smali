.class public Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;
.super Lcom/tencent/mm/storagebase/MStorage;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private b:Lcom/tencent/mm/storagebase/SqliteDB;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE IF NOT EXISTS getcontactinfo ( username text  PRIMARY KEY , inserttime long  , type int  , lastgettime int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v2, "select getcontactinfo.username,getcontactinfo.inserttime,getcontactinfo.type,getcontactinfo.lastgettime,getcontactinfo.reserved1,getcontactinfo.reserved2,getcontactinfo.reserved3,getcontactinfo.reserved4 from getcontactinfo  "

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v4, Lcom/tencent/mm/modelgetcontact/GetContactInfo;

    invoke-direct {v4}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;-><init>()V

    invoke-virtual {v4, v2}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a(Landroid/database/Cursor;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public final a(Lcom/tencent/mm/modelgetcontact/GetContactInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->b()V

    invoke-virtual {p1}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->a()Landroid/content/ContentValues;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "getcontactinfo"

    const-string v4, "username"

    invoke-virtual {v2, v3, v4, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/tencent/mm/modelgetcontact/GetContactInfo;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v3, "getcontactinfo"

    const-string v4, "username= ?"

    new-array v5, v0, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/mm/modelgetcontact/GetContactInfoStorage;->b(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
