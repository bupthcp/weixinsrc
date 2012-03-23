.class Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const-string v1, "zh_CN"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const-string v1, "zh_TW"

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const-string v1, "en"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;

    const-string v1, "language_default"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;->a(Lcom/tencent/mm/ui/setting/SettingsAboutSystemUI;Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
