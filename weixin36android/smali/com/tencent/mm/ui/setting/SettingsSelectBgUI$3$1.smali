.class Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

.field private synthetic b:I

.field private synthetic c:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;Lcom/tencent/mm/modelpackage/PackageInfoStorage;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;->c:Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3;

    iput-object p2, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;->a:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    iput p3, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;->b:I

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;->a:Lcom/tencent/mm/modelpackage/PackageInfoStorage;

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsSelectBgUI$3$1;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/modelpackage/PackageInfoStorage;->f(II)V

    return-void
.end method
