.class Lcom/tencent/mm/ui/setting/SettingsNetStatUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->G()Lcom/tencent/mm/modelstat/NetStatStorage;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/Util;->f()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/NetStatStorage;->b(I)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsNetStatUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->a(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    return-void
.end method
