.class public Lcom/estrongs/android/ui/preference/fragments/af;
.super Lcom/estrongs/android/pop/esclasses/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/g;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "preference_tools_settings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    sget-boolean v1, Lcom/estrongs/android/pop/m;->M:Z

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "gesture_settings"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/estrongs/android/pop/m;->O:Z

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "downloader_settings"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/estrongs/android/pop/m;->f:Z

    if-nez v1, :cond_2

    :try_start_2
    const-string v1, "appmanager_preference"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    sget-boolean v0, Lcom/estrongs/android/pop/m;->i:Z

    if-eqz v0, :cond_3

    :try_start_3
    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "preference_rate"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->addPreferencesFromResource(I)V

    const-string v0, "preference_help"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    sget-boolean v0, Lcom/estrongs/android/pop/m;->g:Z

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/ui/preference/fragments/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/preference/fragments/ag;-><init>(Lcom/estrongs/android/ui/preference/fragments/af;)V

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_0
    :goto_0
    const-string v0, "preference_privacy"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string v0, "preference_display_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->a()V

    return-void

    :cond_2
    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/g;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_help"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_rate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "com.estrongs.android.pop"

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "pname"

    invoke-static {v2, v1, v3}, Lcom/estrongs/android/pop/utils/y;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preference_privacy"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ai;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/estrongs/android/pop/app/PrivacyActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0041

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/preference/fragments/af;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b01cf

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/fragments/af;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b0006

    new-instance v4, Lcom/estrongs/android/ui/preference/fragments/ai;

    invoke-direct {v4, p0}, Lcom/estrongs/android/ui/preference/fragments/ai;-><init>(Lcom/estrongs/android/ui/preference/fragments/af;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    goto :goto_0
.end method
