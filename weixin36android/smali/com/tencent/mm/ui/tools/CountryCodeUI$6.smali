.class Lcom/tencent/mm/ui/tools/CountryCodeUI$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/ui/AlphabetScrollBar$OnScollBarTouchListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/tools/CountryCodeUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CountryCodeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;->a:Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;->a:Lcom/tencent/mm/ui/tools/CountryCodeUI;

    const v3, 0x7f0a0043

    invoke-virtual {v2, v3}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;->a:Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->e(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;->a:Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-static {v2}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->d(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Lcom/tencent/mm/ui/tools/CountryCodeAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/ui/tools/CountryCodeAdapter;->a()[I

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/CountryCodeUI$6;->a:Lcom/tencent/mm/ui/tools/CountryCodeUI;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/CountryCodeUI;->e(Lcom/tencent/mm/ui/tools/CountryCodeUI;)Landroid/widget/ListView;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
