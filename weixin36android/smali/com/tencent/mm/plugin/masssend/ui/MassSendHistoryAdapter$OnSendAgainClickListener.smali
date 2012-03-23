.class Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->u()Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfoStorage;->a(Ljava/lang/String;)Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v2

    const-class v3, Lcom/tencent/mm/plugin/masssend/ui/MassSendMsgUI;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "mass_send_contact_list"

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/model/MasSendInfo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "mass_send_again"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnSendAgainClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->b(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/ui/MMActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
