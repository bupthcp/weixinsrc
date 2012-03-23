.class public final LQQPIM/SoftFeature;
.super Lcom/a/a/a/g;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_featureKey:LQQPIM/FeatureKey;

.field static cache_vecFeatureItem:Ljava/util/ArrayList;


# instance fields
.field public featureKey:LQQPIM/FeatureKey;

.field public requestType:I

.field public softDescTimestamp:I

.field public vecFeatureItem:Ljava/util/ArrayList;

.field public virusDescTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftFeature;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput-object v1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iput v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iput v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iput-object v1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iput v0, p0, LQQPIM/SoftFeature;->requestType:I

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;IILjava/util/ArrayList;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/a/a/a/g;-><init>()V

    iput-object v1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iput v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iput v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iput-object v1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iput v0, p0, LQQPIM/SoftFeature;->requestType:I

    iput-object p1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iput p2, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iput p3, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iput-object p4, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iput p5, p0, LQQPIM/SoftFeature;->requestType:I

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftFeature"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, LQQPIM/SoftFeature;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/a/a/a/h;

    invoke-direct {v0, p1, p2}, Lcom/a/a/a/h;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    const-string v2, "featureKey"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Lcom/a/a/a/g;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    const-string v2, "softDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const-string v2, "virusDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    iget-object v1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    const-string v2, "vecFeatureItem"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(Ljava/util/Collection;Ljava/lang/String;)Lcom/a/a/a/h;

    iget v1, p0, LQQPIM/SoftFeature;->requestType:I

    const-string v2, "requestType"

    invoke-virtual {v0, v1, v2}, Lcom/a/a/a/h;->a(ILjava/lang/String;)Lcom/a/a/a/h;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/SoftFeature;

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iget-object v1, p1, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iget v1, p1, LQQPIM/SoftFeature;->softDescTimestamp:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iget v1, p1, LQQPIM/SoftFeature;->virusDescTimestamp:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iget-object v1, p1, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    iget v1, p1, LQQPIM/SoftFeature;->requestType:I

    invoke-static {v0, v1}, Lcom/a/a/a/c;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getFeatureKey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    return v0
.end method

.method public final getSoftDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    return v0
.end method

.method public final getVecFeatureItem()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVirusDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    return v0
.end method

.method public final readFrom(Lcom/a/a/a/a;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v3, v2}, Lcom/a/a/a/a;->a(Lcom/a/a/a/g;IZ)Lcom/a/a/a/g;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    sget-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/FeatureItem;

    invoke-direct {v0}, LQQPIM/FeatureItem;-><init>()V

    sget-object v1, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/a/a/a/a;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setVecFeatureItem(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/a/a/a/a;->a(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setRequestType(I)V

    return-void
.end method

.method public final setFeatureKey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final setRequestType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->requestType:I

    return-void
.end method

.method public final setSoftDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    return-void
.end method

.method public final setVecFeatureItem(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVirusDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    return-void
.end method

.method public final writeTo(Lcom/a/a/a/e;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Lcom/a/a/a/g;I)V

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(Ljava/util/Collection;I)V

    :cond_0
    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/e;->a(II)V

    return-void
.end method
