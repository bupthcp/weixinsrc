.class Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "MicroMsg.HistoryAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "voice clicked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->c(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->c(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoicePlayListener;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnVoiceClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
