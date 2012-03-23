.class public final enum Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_COOLPAD:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_HUAWEI:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_MOTO:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_SUMSUNG:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_SUMSUNG_SIM:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

.field public static final enum SIM_CONTACT_SUMSUNG_SIM2:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;


# instance fields
.field private accountName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_SUMSUNG"

    const-string v2, "vnd.sec.contact.sim"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_SUMSUNG_SIM2"

    const-string v2, "vnd.sec.contact.sim2"

    invoke-direct {v0, v1, v5, v2}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG_SIM2:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_SUMSUNG_SIM"

    const-string v2, "vnd.sec.contact.sim"

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG_SIM:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_MOTO"

    const-string v2, "g-contacts"

    invoke-direct {v0, v1, v7, v2}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_MOTO:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_COOLPAD"

    const-string v2, "c-contacts"

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_COOLPAD:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    new-instance v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const-string v1, "SIM_CONTACT_HUAWEI"

    const/4 v2, 0x5

    const-string v3, "uim"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_HUAWEI:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    sget-object v1, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG_SIM2:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_SUMSUNG_SIM:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_MOTO:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_COOLPAD:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->SIM_CONTACT_HUAWEI:Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->ENUM$VALUES:[Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->accountName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;
    .locals 1

    const-class v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->ENUM$VALUES:[Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    array-length v1, v0

    new-array v2, v1, [Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpim/issue/IssueSettings$ACCOUNT_NAME;->accountName:Ljava/lang/String;

    return-object v0
.end method
