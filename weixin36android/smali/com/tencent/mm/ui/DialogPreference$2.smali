.class Lcom/tencent/mm/ui/DialogPreference$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/DialogPreference;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/DialogPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/DialogPreference$2;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$2;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->a(Lcom/tencent/mm/ui/DialogPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/DialogPreference$2;->a:Lcom/tencent/mm/ui/DialogPreference;

    invoke-static {v0}, Lcom/tencent/mm/ui/DialogPreference;->a(Lcom/tencent/mm/ui/DialogPreference;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
