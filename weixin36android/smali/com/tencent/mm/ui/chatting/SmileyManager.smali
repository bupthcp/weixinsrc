.class Lcom/tencent/mm/ui/chatting/SmileyManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/ui/chatting/SmileyManager;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Lcom/tencent/mm/ui/MappingDrawable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->a:Lcom/tencent/mm/ui/chatting/SmileyManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->c:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->e:[Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->f:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->e:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->f:[Ljava/lang/String;

    const v0, 0x7f0202af

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/ui/MappingDrawable$Factory;->a(Landroid/content/Context;II)Lcom/tencent/mm/ui/MappingDrawable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/chatting/SmileyManager;->g:Lcom/tencent/mm/ui/MappingDrawable$Factory;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->g:Lcom/tencent/mm/ui/MappingDrawable$Factory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MappingDrawable$Factory;->a(I)Lcom/tencent/mm/ui/MappingDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/ui/chatting/SmileyData;
    .locals 4

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    array-length v2, v0

    new-instance v0, Lcom/tencent/mm/ui/chatting/SmileyData;

    invoke-direct {v0}, Lcom/tencent/mm/ui/chatting/SmileyData;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_5

    iput v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->a:I

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/SmileyManager;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/SmileyManager;->f:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/SmileyManager;->e:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/SmileyManager;->e:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/SmileyManager;->c:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/SmileyManager;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/mm/ui/chatting/SmileyManager;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/mm/ui/chatting/SmileyManager;->b:[Ljava/lang/String;

    aget-object v1, v2, v1

    iput-object v1, v0, Lcom/tencent/mm/ui/chatting/SmileyData;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->a:Lcom/tencent/mm/ui/chatting/SmileyManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->f:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/tencent/mm/platformtools/LocaleUtil;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->e:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;->b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->d:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/tencent/mm/ui/chatting/SmileyManager;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->a:Lcom/tencent/mm/ui/chatting/SmileyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/chatting/SmileyManager;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/chatting/SmileyManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->a:Lcom/tencent/mm/ui/chatting/SmileyManager;

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/chatting/SmileyManager;->a:Lcom/tencent/mm/ui/chatting/SmileyManager;

    return-object v0
.end method
