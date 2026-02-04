.class public Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Lcom/estrongs/android/pop/q;

.field private b:Landroid/preference/EditTextPreference;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/g;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->d:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->d:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/m;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->A()Ljava/lang/String;

    move-result-object v1

    const-string v0, "app_backup_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b01ca

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/a;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/a;-><init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backup_app_cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "root_auto_install"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "app_pref_app"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "app_check_update"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "preference_tools_settings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "appmanager_preference"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0008

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/c;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/c;-><init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0009

    new-instance v2, Lcom/estrongs/android/ui/preference/fragments/b;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/preference/fragments/b;-><init>(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)Lcom/estrongs/android/pop/q;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->b:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01ae

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->c()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a:Lcom/estrongs/android/pop/q;

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/fragments/AppPreferenceFragment;->a()V

    return-void
.end method
