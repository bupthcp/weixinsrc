.class Lcom/tencent/mm/ui/contact/MediaNoteHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/contact/HelperHeaderPreference$IHandler;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/ui/contact/MediaNoteHelper;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/contact/MediaNoteHelper;->a:Landroid/content/Context;

    const v1, 0x7f0a0290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/ui/contact/HelperHeaderPreference;)V
    .locals 1

    invoke-static {}, Lcom/tencent/mm/model/ConfigStorageLogic;->f()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/tencent/mm/ui/contact/HelperHeaderPreference;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 1

    invoke-static {p1}, Lcom/tencent/mm/ui/contact/ContactWidgetMediaNote;->a(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method
