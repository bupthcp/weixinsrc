.class Lcom/tencent/mm/ui/MMPreference$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/MMPreference$OnInternalChangeListerner;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/MMPreference$1;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/MMPreference$1;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/MMPreference$1$1;->a:Lcom/tencent/mm/ui/MMPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference$1$1;->a:Lcom/tencent/mm/ui/MMPreference$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreference;->c(Lcom/tencent/mm/ui/MMPreference;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMPreference$1$1;->a:Lcom/tencent/mm/ui/MMPreference$1;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMPreference$1;->a:Lcom/tencent/mm/ui/MMPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/MMPreference;->a(Lcom/tencent/mm/ui/MMPreference;)Lcom/tencent/mm/ui/MMPreferenceAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/MMPreferenceAdapter;->notifyDataSetChanged()V

    return-void
.end method
