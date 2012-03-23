.class Lcom/tencent/mm/ui/setting/SettingsAliasUI$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/setting/SettingsAliasUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAliasUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsAliasUI$2;->a:Lcom/tencent/mm/ui/setting/SettingsAliasUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsAliasUI;->b(Lcom/tencent/mm/ui/setting/SettingsAliasUI;)Lcom/tencent/mm/ui/login/RegAccountToast;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/login/RegAccountToast;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
