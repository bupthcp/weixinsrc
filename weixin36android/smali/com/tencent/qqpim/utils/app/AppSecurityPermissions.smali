.class public Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppSecurityPermissions"


# instance fields
.field private localLOGV:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

.field private mDangerousMap:Ljava/util/Map;

.field private mDefaultGrpLabel:Ljava/lang/String;

.field private mDefaultGrpName:Ljava/lang/String;

.field private mGroupLabelCache:Ljava/util/HashMap;

.field private mNormalMap:Ljava/util/Map;

.field private mPermFormat:Ljava/lang/String;

.field private mPermsList:Ljava/util/List;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v0, "mSharedUserId"

    invoke-static {p2, v0}, Lcom/tencent/qqpim/utils/app/ReflectUtil;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const-string v4, "getUidForSharedUser"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v3, v4, v5}, Lcom/tencent/qqpim/utils/app/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    :cond_1
    :goto_3
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/String;

    const-string v1, "%1$s, %2$s"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_2
    :try_start_2
    const-string v0, "requestedPermissions"

    invoke-static {p2, v0}, Lcom/tencent/qqpim/utils/app/ReflectUtil;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v0}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->getAllUsedPermissions(ILjava/util/Set;)V

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v1, "%1$s, %2$s"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could\'nt retrieve permissions for package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    const-string v0, "DefaultGrp"

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    new-instance v0, Ljava/lang/String;

    const-string v1, "%1$s, %2$s"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    return-void
.end method

.method private aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v2, :cond_2

    iget-boolean v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Group:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " description:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    iget-object v5, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v5}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    goto :goto_1
.end method

.method private canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private extractPerms([Ljava/lang/String;Ljava/util/Set;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    :try_start_0
    iget-object v3, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring unknown permission:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1
.end method

.method private formatPermissions(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->canonicalizeGroupDesc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermFormat:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getAllUsedPermissions(ILjava/util/Set;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-direct {p0, v3, p2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPermissionsForPackage(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could\'nt retrieve permissions for package:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->extractPerms([Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0
.end method

.method private isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eq v1, v0, :cond_0

    iget v1, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getGroupLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid group name:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionCount()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPermissions(Z)Ljava/util/Map;
    .locals 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mGroupLabelCache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpLabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v0}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;-><init>(Landroid/content/pm/PackageManager;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mPermsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-direct {p0, v3, v0}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-direct {p0, v4, v0}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->aggregateGroupDescs(Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    sget-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NO_PERMS:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mCurrentState:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_c

    sget-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->BOTH:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    :goto_1
    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mCurrentState:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mCurrentState:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDangerousMap:Ljava/util/Map;

    :goto_3
    return-object v0

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PermissionInfo;

    iget-boolean v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing permission:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    invoke-direct {p0, v0}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->isDisplayablePermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not displayable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    move-object v2, v3

    :goto_4
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mDefaultGrpName:Ljava/lang/String;

    move-object v5, v1

    :goto_5
    iget-boolean v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Permission:"

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " belongs to group:"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_7
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    move-object v2, v4

    goto :goto_4

    :cond_9
    iget-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    move-object v5, v1

    goto :goto_5

    :cond_a
    invoke-static {v1, v0, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    iget-boolean v5, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->localLOGV:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "idx="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", list.size="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_b
    if-gez v2, :cond_0

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    sget-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->DANGEROUS_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;->NORMAL_ONLY:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mCurrentState:Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$State;

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions;->mNormalMap:Ljava/util/Map;

    goto/16 :goto_3
.end method
