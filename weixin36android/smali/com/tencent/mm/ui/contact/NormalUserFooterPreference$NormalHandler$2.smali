.class Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/AddContact$IOnAddContact;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler$2;->a:Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;

    invoke-static {v0}, Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;->b(Lcom/tencent/mm/ui/contact/NormalUserFooterPreference$NormalHandler;)V

    :cond_0
    return-void
.end method
