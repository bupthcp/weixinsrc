.class Lb/a/ai;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public a(Landroid/view/KeyEvent;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->startTracking()V

    return-void
.end method

.method public b(Landroid/view/MotionEvent;I)F
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public b(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    return v0
.end method
