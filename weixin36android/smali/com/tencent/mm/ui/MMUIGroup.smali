.class public abstract Lcom/tencent/mm/ui/MMUIGroup;
.super Landroid/app/ActivityGroup;


# instance fields
.field private a:Ljava/util/List;

.field private b:Landroid/app/LocalActivityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, p1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    const-string v0, "MMUIGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/app/LocalActivityManager;

    const-string v1, "mActivities"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v0, Landroid/app/LocalActivityManager;

    const-string v1, "mActivityArray"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v5, "id"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMUIGroup;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    iget-object v2, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->a:Landroid/view/View;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMUIGroup;->setContentView(Landroid/view/View;)V

    :goto_3
    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->c(Landroid/content/Intent;)V

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private c(Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "MMUIGroup"

    const-string v1, "null decor view"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    new-instance v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "MMUIGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0, v1}, Lcom/tencent/mm/ui/MMUIGroup;->setContentView(Landroid/view/View;)V

    const-string v0, "MMUIGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stack size after add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "MMUIGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "component name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->b(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/mm/ui/MMUIGroup;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/mm/ui/MMUIGroup;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;

    iget-object v1, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    iget-object v2, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->c:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->startActivity(Ljava/lang/String;Landroid/content/Intent;)Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->a:Landroid/view/View;

    iget-object v0, v0, Lcom/tencent/mm/ui/MMUIGroup$ChildActivityInfo;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/MMUIGroup;->setContentView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMUIGroup;->finish()V

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMUIGroup;->a()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "MMUIGroup"

    const-string v1, "ui group onKeyDown"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMUIGroup;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/ActivityGroup;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMUIGroup;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/MMUIGroup;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LocalActivityManager;->dispatchDestroy(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ui/MMUIGroup;->b:Landroid/app/LocalActivityManager;

    const-string v0, "MMUIGroup"

    const-string v1, "on destroy"

    invoke-static {v0, v1}, Lcom/tencent/mm/platformtools/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    return-void
.end method
