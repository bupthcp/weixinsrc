.class Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->b:Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;

    invoke-static {v0}, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;->a(Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/masssend/ui/MassSendHistoryAdapter$OnContactListClickListener;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
