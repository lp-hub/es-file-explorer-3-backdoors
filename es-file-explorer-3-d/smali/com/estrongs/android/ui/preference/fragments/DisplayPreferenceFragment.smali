.class public Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/pop/q;

.field private b:Landroid/preference/CheckBoxPreference;

.field private c:Landroid/preference/CheckBoxPreference;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/g;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Lcom/estrongs/android/pop/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->d:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->am()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ak()Z

    const-string v0, "show_pcs_drive"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/aa;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    const-string v0, "hidden_file"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ab;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ab;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v0, "show_select_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->b:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->ak()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_windows_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->c:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->am()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_disk_usage"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "language_setting"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const v4, 0x7f0b028f

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_3

    aget-object v4, v2, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/preference/ListPreference;->a([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_4

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ac;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ac;-><init>(Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-boolean v1, Lcom/estrongs/android/pop/m;->L:Z

    if-eqz v1, :cond_5

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/DisplayPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2
.end method
