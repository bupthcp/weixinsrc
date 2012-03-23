.class public Lcom/tencent/qqpim/dao/SyncLogHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final ADD:Ljava/lang/String; = "add_num"

.field public static final BACKUP_OR_RESTORE:Ljava/lang/String; = "backup_or_restore"

.field public static final CLIENT_ADD:Ljava/lang/String; = "client_add_num"

.field public static final CLIENT_DELETE:Ljava/lang/String; = "client_delete_num"

.field public static final CLIENT_MODIFY:Ljava/lang/String; = "client_modify_num"

.field public static final DELETE:Ljava/lang/String; = "delete_num"

.field public static final DOWNLOAD:Ljava/lang/String; = "download"

.field public static final END:Ljava/lang/String; = "end"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LOCAL_BACKUP_ID:Ljava/lang/String; = "local_backup_id"

.field public static final MODIFY:Ljava/lang/String; = "modify_num"

.field public static final QQ_ACCOUNT:Ljava/lang/String; = "qq_account"

.field public static final SERVER_ADD:Ljava/lang/String; = "server_add_num"

.field public static final SERVER_DELETE:Ljava/lang/String; = "server_delete_num"

.field public static final SERVER_MODIFY:Ljava/lang/String; = "server_modify_num"

.field public static final START:Ljava/lang/String; = "start"

.field public static final SUCCEED:Ljava/lang/String; = "succeed"

.field public static final SYNC_METHOD:Ljava/lang/String; = "sync_method"

.field public static final TB_NAME:Ljava/lang/String; = "sync_log"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UPLOAD:Ljava/lang/String; = "upload"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS sync_log (_id INTEGER PRIMARY KEY,qq_account VARCHAR,type INTEGER,start INT64,end INT64,add_num INTEGER,modify_num INTEGER,delete_num INTEGER,backup_or_restore INTEGER,upload INT64,download INT64, succeed INTEGER,client_add_num INTEGER,client_modify_num INTEGER,client_delete_num INTEGER,server_add_num INTEGER,server_modify_num INTEGER,server_delete_num INTEGER,sync_method INTEGER,local_backup_id INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    const-string v0, "ALTER TABLE sync_log ADD client_add_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD client_modify_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD client_delete_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD server_add_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD server_modify_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD server_delete_num INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD sync_method INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE sync_log ADD local_backup_id INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqpim/dao/SyncLogHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
