.class Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    iput-object p1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->sCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/PermissionInfo;

    check-cast p2, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qqpim/utils/app/AppSecurityPermissions$PermissionInfoComparator;->compare(Landroid/content/pm/PermissionInfo;Landroid/content/pm/PermissionInfo;)I

    move-result v0

    return v0
.end method
