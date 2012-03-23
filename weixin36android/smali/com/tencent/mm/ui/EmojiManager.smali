.class public final Lcom/tencent/mm/ui/EmojiManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/mm/ui/EmojiManager;


# instance fields
.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;

.field private f:[I

.field private g:Lcom/tencent/mm/ui/MappingDrawable$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/EmojiManager;->a:Lcom/tencent/mm/ui/EmojiManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->b:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->c:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->e:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->d:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->f:[I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/tencent/mm/ui/EmojiManager;->f:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f02010d

    const/16 v1, 0x20

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/ui/MappingDrawable$Factory;->a(Landroid/content/Context;II)Lcom/tencent/mm/ui/MappingDrawable$Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/EmojiManager;->g:Lcom/tencent/mm/ui/MappingDrawable$Factory;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/ui/EmojiManager;->c(Landroid/content/Context;)Lcom/tencent/mm/ui/EmojiManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager;->g:Lcom/tencent/mm/ui/MappingDrawable$Factory;

    invoke-virtual {v0, p1}, Lcom/tencent/mm/ui/MappingDrawable$Factory;->a(I)Lcom/tencent/mm/ui/MappingDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/tencent/mm/modelemoji/EmojiInfo;->p()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;

    invoke-direct {v0}, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;-><init>()V

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    aget-object v6, v5, v2

    const/4 v7, 0x1

    aget-object v5, v5, v7

    const-string v7, "zh_CN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v5, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->a:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v7, "zh_TW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v5, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v7, "en"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iput-object v5, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->c:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v7, "icon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-object v5, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/mm/modelemoji/EmojiInfo;)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Lcom/tencent/mm/ui/EmojiManager;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "com.tencent.mm_preferences"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/LocaleUtil;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "zh_TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh_HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge v2, v0, :cond_4

    const-string v0, ""

    goto :goto_0

    :cond_4
    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/mm/ui/EmojiManager;->a:Lcom/tencent/mm/ui/EmojiManager;

    return-void
.end method

.method public static a(Landroid/content/Context;)[I
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/ui/EmojiManager;->c(Landroid/content/Context;)Lcom/tencent/mm/ui/EmojiManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager;->f:[I

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/tencent/mm/modelemoji/EmojiInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/tencent/mm/ui/EmojiManager;->a(Lcom/tencent/mm/modelemoji/EmojiInfo;)Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "icon:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v1, Lcom/tencent/mm/ui/EmojiManager$ArtEmojiProfile;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/tencent/mm/platformtools/SmileyUtil;->a(C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-static {p0, v1}, Lcom/tencent/mm/ui/EmojiManager;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "art_emoji_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/mm/modelemoji/EmojiInfo;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/tencent/mm/ui/EmojiManager;->c(Landroid/content/Context;)Lcom/tencent/mm/ui/EmojiManager;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ui/EmojiManager;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Lcom/tencent/mm/ui/EmojiManager;
    .locals 1

    sget-object v0, Lcom/tencent/mm/ui/EmojiManager;->a:Lcom/tencent/mm/ui/EmojiManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/mm/ui/EmojiManager;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/EmojiManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/mm/ui/EmojiManager;->a:Lcom/tencent/mm/ui/EmojiManager;

    :cond_0
    sget-object v0, Lcom/tencent/mm/ui/EmojiManager;->a:Lcom/tencent/mm/ui/EmojiManager;

    return-object v0
.end method
