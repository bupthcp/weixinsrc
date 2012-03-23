.class Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI$3;->a:Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsModifyDomainMailUI;->n()V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->b()V

    return-void
.end method
