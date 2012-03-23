.class Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3fa66666

    iput v0, p0, Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;->a:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v3, 0x3f80

    sub-float v0, p1, v3

    mul-float v1, v0, v0

    iget v2, p0, Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;->a:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/tencent/mm/ui/MMFlipper$WorkspaceOvershootInterpolator;->a:F

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method
