.class public final Lcom/tencent/qqpim/dao/ConfigManager;
.super Ljava/lang/Object;


# static fields
.field private static final XXTEA_KEY:Ljava/lang/String; = "DFG#$%^#%$RGHR(&*M<><"


# instance fields
.field private final BUILD:Ljava/lang/String;

.field private final CHANNEL:Ljava/lang/String;

.field private final LC:Ljava/lang/String;

.field private final PLATFORM:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mBuild:Ljava/lang/String;

.field private mChannel:Ljava/lang/String;

.field private mLC:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "channel"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->CHANNEL:Ljava/lang/String;

    const-string v0, "lc"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->LC:Ljava/lang/String;

    const-string v0, "version"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->VERSION:Ljava/lang/String;

    const-string v0, "build"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->BUILD:Ljava/lang/String;

    const-string v0, "platform"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->PLATFORM:Ljava/lang/String;

    const-string v0, "0.0"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mVersion:Ljava/lang/String;

    const-string v0, "000"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mBuild:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mLC:Ljava/lang/String;

    const-string v0, "00000"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mChannel:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mPlatform:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "config.properties"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0x400

    :try_start_1
    new-array v2, v1, [B

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    new-array v4, v3, [B

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    const-string v1, "DFG#$%^#%$RGHR(&*M<><"

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tencent/qqpim/utils/XxteaCryptor;->decrypt([B[B)[B

    move-result-object v1

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "version"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mVersion:Ljava/lang/String;

    const-string v1, "build"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mBuild:Ljava/lang/String;

    const-string v1, "lc"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mLC:Ljava/lang/String;

    const-string v1, "channel"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mChannel:Ljava/lang/String;

    const-string v1, "platform"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mPlatform:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_3
    aget-byte v5, v2, v1

    aput-byte v5, v4, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v1, "0.0"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mVersion:Ljava/lang/String;

    const-string v1, "000"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mBuild:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mLC:Ljava/lang/String;

    const-string v1, "00000"

    iput-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mChannel:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method


# virtual methods
.method public final getBuild()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mBuild:Ljava/lang/String;

    return-object v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final getLC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mLC:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "platform:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "channel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nlc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mLC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nbuild:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mBuild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nversion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/ConfigManager;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
