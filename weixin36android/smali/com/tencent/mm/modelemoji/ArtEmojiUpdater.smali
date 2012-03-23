.class public Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/modelbase/IOnSceneEnd;


# static fields
.field private static b:J


# instance fields
.field private a:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->a:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v0

    const/16 v1, 0x1014

    invoke-virtual {v0, v1}, Lcom/tencent/mm/storage/ConfigStorage;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcom/tencent/mm/platformtools/Util;->a(Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    sget-wide v2, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->a(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    new-instance v0, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/tencent/mm/modelpackage/NetSceneGetPackageList;-><init>(I)V

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(Lcom/tencent/mm/modelbase/NetSceneBase;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;Lcom/tencent/mm/modelbase/NetSceneBase;)V
    .locals 6

    const/16 v5, 0x40

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p4}, Lcom/tencent/mm/modelbase/NetSceneBase;->b()I

    move-result v0

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->f()Lcom/tencent/mm/model/AccountStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/AccountStorage;->f()Lcom/tencent/mm/storage/ConfigStorage;

    move-result-object v1

    const/16 v2, 0x1014

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/mm/storage/ConfigStorage;->a(ILjava/lang/Object;)V

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->a:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->a:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;

    invoke-interface {v0}, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelemoji/ArtEmojiUpdater;->a:Lcom/tencent/mm/modelemoji/ArtEmojiUpdater$OnArtEmojiUpdatedListener;

    invoke-static {}, Lcom/tencent/mm/model/MMCore;->g()Lcom/tencent/mm/modelbase/NetSceneQueue;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/tencent/mm/modelbase/NetSceneQueue;->b(ILcom/tencent/mm/modelbase/IOnSceneEnd;)V

    return-void
.end method
