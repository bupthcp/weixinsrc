.class public Lcom/tencent/mm/ui/shake/DraggerButton;
.super Landroid/widget/Button;


# instance fields
.field private a:Landroid/view/GestureDetector;

.field private b:Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/tencent/mm/ui/shake/DraggerButton$MyGestureListener;

    invoke-direct {v1, p0}, Lcom/tencent/mm/ui/shake/DraggerButton$MyGestureListener;-><init>(Lcom/tencent/mm/ui/shake/DraggerButton;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/shake/DraggerButton;->a:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/shake/DraggerButton;)Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/DraggerButton;->b:Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/shake/DraggerButton;->b:Lcom/tencent/mm/ui/shake/DraggerButton$OnDragListener;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/shake/DraggerButton;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
