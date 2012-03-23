.class public Lcom/tencent/qqpim/object/GroupValue;
.super Ljava/lang/Object;


# instance fields
.field private accountName:Ljava/lang/String;

.field private accountType:Ljava/lang/String;

.field private groupName:Ljava/lang/String;

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/GroupValue;->accountName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/GroupValue;->accountType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/object/GroupValue;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/tencent/qqpim/object/GroupValue;->id:I

    return v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/object/GroupValue;->accountName:Ljava/lang/String;

    return-void
.end method

.method public setAccountType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/object/GroupValue;->accountType:Ljava/lang/String;

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpim/object/GroupValue;->groupName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qqpim/object/GroupValue;->id:I

    return-void
.end method
