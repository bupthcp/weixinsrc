.class Lcom/tencent/mm/ui/setting/SettingsUI$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMAlert$OnAlertSelectId;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsUI$7;->a:Lcom/tencent/mm/ui/setting/SettingsUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/tencent/mm/model/MsgInfoStorageLogic;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
