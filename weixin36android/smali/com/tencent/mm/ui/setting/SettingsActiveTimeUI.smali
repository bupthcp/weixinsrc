.class public Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;
.super Lcom/tencent/mm/ui/MMPreference;


# instance fields
.field private a:Lcom/tencent/mm/ui/IPreferenceScreen;

.field private b:Landroid/content/SharedPreferences;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Landroid/preference/Preference;

.field private i:Landroid/preference/Preference;

.field private final j:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/mm/ui/MMPreference;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->g:Z

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI$2;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI$2;-><init>(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)V

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->j:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    return p1
.end method

.method static synthetic a(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    return v0
.end method

.method static synthetic b(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    return p1
.end method

.method static synthetic c(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    return v0
.end method

.method static synthetic d(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;I)I
    .locals 0

    iput p1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    return p1
.end method

.method static synthetic e(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    return v0
.end method

.method static synthetic f(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/ui/IPreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_active_begin_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->g:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->showDialog(I)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_active_end_time"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->g:Z

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "settings_active_time_full"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_active_time_full"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public final d_()I
    .locals 1

    const v0, 0x7f050024

    return v0
.end method

.method protected final o()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, 0x0

    const v0, 0x7f0a01db

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d(I)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->q()Lcom/tencent/mm/ui/IPreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v0, "com.tencent.mm_preferences"

    invoke-virtual {p0, v0, v5}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_active_begin_time"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v1, "settings_active_begin_time_hour"

    const/16 v3, 0x8

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v1, "settings_active_begin_time_min"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_active_end_time"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v1, "settings_active_end_time_hour"

    const/16 v3, 0x17

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v1, "settings_active_end_time_min"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    iget v1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    invoke-static {p0, v1, v3}, Lcom/tencent/mm/platformtools/Util;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    const-string v1, "settings_active_time_full"

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/IPreferenceScreen;->a(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b:Landroid/content/SharedPreferences;

    const-string v3, "settings_active_time_full"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    iget v4, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    iget v4, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->a:Lcom/tencent/mm/ui/IPreferenceScreen;

    invoke-interface {v0}, Lcom/tencent/mm/ui/IPreferenceScreen;->notifyDataSetChanged()V

    new-instance v0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI$1;

    invoke-direct {v0, p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI$1;-><init>(Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;)V

    invoke-virtual {p0, v0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->b(Landroid/view/View$OnClickListener;)Lcom/tencent/mm/ui/MMImageButton;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->i:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->h:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/mm/ui/MMPreference;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->o()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->getParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->j:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->c:I

    iget v4, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->d:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->getParent()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->j:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v3, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->e:I

    iget v4, p0, Lcom/tencent/mm/ui/setting/SettingsActiveTimeUI;->f:I

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
