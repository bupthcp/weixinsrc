.class Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/bottle/LightHouseImageView;I)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    iput p2, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    iget v1, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->a:I

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;I)V

    iget-object v1, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-static {v1, v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->a(Lcom/tencent/mm/ui/bottle/LightHouseImageView;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/bottle/LightHouseImageView$1;->b:Lcom/tencent/mm/ui/bottle/LightHouseImageView;

    invoke-static {v0}, Lcom/tencent/mm/ui/bottle/LightHouseImageView;->b(Lcom/tencent/mm/ui/bottle/LightHouseImageView;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
