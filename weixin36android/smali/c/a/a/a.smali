.class public final Lc/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    invoke-static {p1}, Lc/a/a/a/b/a;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public static a(IILjava/util/LinkedList;)I
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The data type was not found, the id used was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protobuf/ByteString;

    invoke-static {p0, v0}, Lc/a/a/a;->a(ILcom/tencent/mm/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :pswitch_1
    move v1, v0

    move v2, v0

    :goto_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :pswitch_2
    move v1, v0

    move v2, v0

    :goto_3
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_3

    :pswitch_3
    move v1, v0

    move v2, v0

    :goto_4
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lc/a/a/a;->a(II)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    :pswitch_4
    move v1, v0

    move v2, v0

    :goto_5
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v3, v4}, Lc/a/a/a/b/a;->b(IJ)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_5

    :pswitch_5
    move v1, v0

    move v2, v0

    :goto_6
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_6

    :pswitch_6
    move v1, v0

    move v2, v0

    :goto_7
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_7

    :pswitch_7
    move v1, v0

    move v2, v0

    :goto_8
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/a/a/b;

    invoke-interface {v0}, Lc/a/a/b;->a()I

    move-result v0

    invoke-static {p0, v0}, Lc/a/a/a;->b(II)I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_8

    :cond_2
    move v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static a(IJ)I
    .locals 1

    invoke-static {p0, p1, p2}, Lc/a/a/a/b/a;->b(IJ)I

    move-result v0

    return v0
.end method

.method public static a(ILcom/tencent/mm/protobuf/ByteString;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/mm/protobuf/ByteString;->a()I

    move-result v1

    invoke-static {v1}, Lc/a/a/a/b/a;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/tencent/mm/protobuf/ByteString;->a()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a(ILjava/lang/String;)I
    .locals 1

    invoke-static {p0, p1}, Lc/a/a/a/b/a;->b(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(II)I
    .locals 2

    invoke-static {p0}, Lc/a/a/a/b/a;->a(I)I

    move-result v0

    invoke-static {p1}, Lc/a/a/a/b/a;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    return v0
.end method
