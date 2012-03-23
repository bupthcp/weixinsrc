.class public Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;
.super Ljava/lang/Object;


# instance fields
.field public CITY:Ljava/lang/String;

.field public COUNTRY:Ljava/lang/String;

.field public FORMATTED_ADDRESS:Ljava/lang/String;

.field public NEIGHBORHOOD:Ljava/lang/String;

.field public POBOX:Ljava/lang/String;

.field public POSTCODE:Ljava/lang/String;

.field public REGION:Ljava/lang/String;

.field public STREET:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    new-array v0, v6, [C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    const/16 v1, 0x3b

    aput-char v1, v0, v3

    const/16 v1, 0x72

    aput-char v1, v0, v4

    const/16 v1, 0x6e

    aput-char v1, v0, v5

    const/16 v1, 0x3b

    invoke-static {p1, v0, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->divideStringToList(Ljava/lang/String;[CC)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v6, :cond_5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_6

    const/4 v0, 0x5

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_7

    const/4 v0, 0x6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    :cond_7
    invoke-virtual {p0}, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getStructedAddress()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x3b

    aput-char v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0xd

    aput-char v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, 0xa

    aput-char v3, v1, v2

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_1
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_2
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_3
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_4
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_5
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/tencent/qqpim/utils/QQPimUtils;->escapeString(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POBOX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->NEIGHBORHOOD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_1
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->STREET:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_2
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->CITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_3
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->REGION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_4
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->POSTCODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_5
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->COUNTRY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/tencent/qqpim/dao/SYSContactDaoV2$Address;->FORMATTED_ADDRESS:Ljava/lang/String;

    return-object v0
.end method
