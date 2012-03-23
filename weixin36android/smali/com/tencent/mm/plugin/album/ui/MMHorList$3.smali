.class Lcom/tencent/mm/plugin/album/ui/MMHorList$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/plugin/album/ui/MMHorList;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/album/ui/MMHorList;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a()Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0, p3, p4}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    float-to-int v1, p3

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->a(Lcom/tencent/mm/plugin/album/ui/MMHorList;I)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGesture onScroll netX : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v1}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->c(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " distanceX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->requestLayout()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 7

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildCount()I

    move-result v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-virtual {v0, v6}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v0, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->d(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v4}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v5}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v0}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->g(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    iget-object v3, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v3}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v6

    iget-object v4, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v4}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->f(Lcom/tencent/mm/plugin/album/ui/MMHorList;)Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/mm/plugin/album/ui/MMHorList$3;->a:Lcom/tencent/mm/plugin/album/ui/MMHorList;

    invoke-static {v5}, Lcom/tencent/mm/plugin/album/ui/MMHorList;->e(Lcom/tencent/mm/plugin/album/ui/MMHorList;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_0
.end method
