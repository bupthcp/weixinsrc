.class Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$1;->a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->n()V

    sget-object v0, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->a:Lcom/tencent/mm/ui/setting/SettingsUIGroup;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/setting/SettingsUIGroup;->b()V

    return-void
.end method
