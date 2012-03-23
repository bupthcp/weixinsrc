.class public Lcom/tencent/qqpim/utils/app/AppEntity;
.super Ljava/lang/Object;


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field private appPath:Ljava/lang/String;

.field private cacheSize:J

.field private certMD5:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private isApk:Z

.field private isSysApp:Z

.field private permissions:Ljava/util/Map;

.field private permissionsName:[Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private ramSize:J

.field private size:J

.field private version:Ljava/lang/String;

.field private versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->cacheSize:J

    return-wide v0
.end method

.method public getCertMD5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->certMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->permissions:Ljava/util/Map;

    return-object v0
.end method

.method public getPermissionsName()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->permissionsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getRamSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->ramSize:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->size:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->versionCode:I

    return v0
.end method

.method public isApk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->isApk:Z

    return v0
.end method

.method public isSysApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->isSysApp:Z

    return v0
.end method

.method public setApk(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->isApk:Z

    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->appPath:Ljava/lang/String;

    return-void
.end method

.method public setCacheSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->cacheSize:J

    return-void
.end method

.method public setCertMD5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->certMD5:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->company:Ljava/lang/String;

    return-void
.end method

.method public setPermissions(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->permissions:Ljava/util/Map;

    return-void
.end method

.method public setPermissionsName([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->permissionsName:[Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public setRamSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->ramSize:J

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->size:J

    return-void
.end method

.method public setSysApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->isSysApp:Z

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->version:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/utils/app/AppEntity;->versionCode:I

    return-void
.end method
