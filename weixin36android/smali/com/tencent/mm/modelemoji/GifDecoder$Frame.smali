.class public Lcom/tencent/mm/modelemoji/GifDecoder$Frame;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:I

.field private synthetic c:Lcom/tencent/mm/modelemoji/GifDecoder;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/modelemoji/GifDecoder;Landroid/graphics/Bitmap;I)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->c:Lcom/tencent/mm/modelemoji/GifDecoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->b:I

    iput-object p2, p0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/tencent/mm/modelemoji/GifDecoder$Frame;->b:I

    return-void
.end method
