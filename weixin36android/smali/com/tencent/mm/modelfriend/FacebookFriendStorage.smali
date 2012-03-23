.class public Lcom/tencent/mm/modelfriend/FacebookFriendStorage;
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

    const-string v2, "CREATE TABLE IF NOT EXISTS facebookfriend ( fbid long  PRIMARY KEY , fbname text  , fbimgkey int  , status int  , username text  , nickname text  , nicknamepyinitial text  , nicknamequanpin text  , sex int  , personalcard int  , province text  , city text  , signature text  , alias text  , type int  , email text  ) "

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/storagebase/SqliteDB;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/mm/storagebase/MStorage;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    return-void
.end method


# virtual methods
.method public final a()Landroid/database/Cursor;
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "select facebookfriend.fbid,facebookfriend.fbname,facebookfriend.fbimgkey,facebookfriend.status,facebookfriend.username,facebookfriend.nickname,facebookfriend.nicknamepyinitial,facebookfriend.nicknamequanpin,facebookfriend.sex,facebookfriend.personalcard,facebookfriend.province,facebookfriend.city,facebookfriend.signature,facebookfriend.alias,facebookfriend.type,facebookfriend.email from facebookfriend   order by status , nicknamepyinitial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/modelfriend/FacebookFriend;)Z
    .locals 10

    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "Func Set always conv_flag == flag_all"

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->c()I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d()J

    move-result-wide v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select facebookfriend.fbid,facebookfriend.fbname,facebookfriend.fbimgkey,facebookfriend.status,facebookfriend.username,facebookfriend.nickname,facebookfriend.nicknamepyinitial,facebookfriend.nicknamequanpin,facebookfriend.sex,facebookfriend.personalcard,facebookfriend.province,facebookfriend.city,facebookfriend.signature,facebookfriend.alias,facebookfriend.type,facebookfriend.email from facebookfriend   where facebookfriend.fbid = \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->b()V

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "facebookfriend"

    const-string v5, "fbid"

    invoke-virtual {v3, v4, v5, v0}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    long-to-int v0, v3

    if-eq v0, v7, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->a()Landroid/content/ContentValues;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v4, "facebookfriend"

    const-string v5, "fbid=?"

    new-array v6, v1, [Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tencent/mm/modelfriend/FacebookFriend;->d()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/tencent/mm/storagebase/SqliteDB;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p0}, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->c()V

    :cond_5
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_2
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/modelfriend/FacebookFriendStorage;->b:Lcom/tencent/mm/storagebase/SqliteDB;

    const-string v1, "delete from facebookfriend"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storagebase/SqliteDB;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
