.class Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    const/16 v1, 0x2000

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;II)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;

    const/16 v1, 0x40

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutPrivacyUI;II)Z

    return-void
.end method
