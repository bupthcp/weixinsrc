.class public final Lcom/tencent/mm/ui/setting/HeadImgPreference;
.super Landroid/preference/Preference;


# instance fields
.field private a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/mm/ui/setting/HeadImgPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->a:I

    const v0, 0x7f030076

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/HeadImgPreference;->setLayoutResource(I)V

    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/HeadImgPreference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->c:Landroid/graphics/Bitmap;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->c:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    const v0, 0x7f07017a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->c:Landroid/graphics/Bitmap;

    :cond_1
    const v0, 0x7f070179

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    :cond_2
    return-void
.end method

.method protected final onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f070117

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/HeadImgPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f03007f

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f07017a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/HeadImgPreference;->b:Landroid/widget/ImageView;

    return-object v1
.end method
