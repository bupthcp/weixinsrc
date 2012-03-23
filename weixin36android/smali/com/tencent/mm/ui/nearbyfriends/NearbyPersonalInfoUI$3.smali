.class Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    check-cast p2, Ljava/lang/String;

    const-string v0, "male"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;I)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "female"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI$3;->a:Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;->a(Lcom/tencent/mm/ui/nearbyfriends/NearbyPersonalInfoUI;I)I

    goto :goto_0
.end method
