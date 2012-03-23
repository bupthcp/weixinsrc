.class public Lcom/tencent/mm/modelemoji/EmojiLogic;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/mm/modelemoji/EmojiLogic;->a:Ljava/util/List;

    const-string v0, "ImgProcess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/tencent/mm/modelemoji/EmojiLogic;->a:Ljava/util/List;

    return-object v0
.end method

.method public static a(Lcom/tencent/mm/modelemoji/EmojiInfo;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/tencent/mm/modelemoji/EmojiLogic;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/mm/modelemoji/EmojiLogic;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/tencent/mm/modelemoji/EmojiLogic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;

    invoke-direct {v0}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;-><init>()V

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelemoji/EmojiLogic$DecodeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tencent/mm/modelemoji/EmojiLogic;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelemoji/EmojiInfo;

    invoke-virtual {v0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static native extractForeground([III)Z
.end method
