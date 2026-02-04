.class public final Lcom/estrongs/android/pop/app/PopPreferenceActivity;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# static fields
.field private static E:I

.field static a:Z

.field public static u:Ljava/lang/String;


# instance fields
.field private A:Lcom/estrongs/android/ui/theme/al;

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Landroid/os/Handler;

.field private F:Landroid/content/DialogInterface$OnCancelListener;

.field b:Lcom/estrongs/android/pop/q;

.field c:Landroid/preference/EditTextPreference;

.field d:Landroid/preference/EditTextPreference;

.field e:Landroid/preference/EditTextPreference;

.field f:Landroid/preference/CheckBoxPreference;

.field g:Landroid/preference/CheckBoxPreference;

.field h:Landroid/preference/CheckBoxPreference;

.field i:Landroid/preference/CheckBoxPreference;

.field j:Landroid/preference/CheckBoxPreference;

.field k:Landroid/preference/CheckBoxPreference;

.field l:Landroid/preference/CheckBoxPreference;

.field m:Landroid/preference/CheckBoxPreference;

.field n:Landroid/preference/CheckBoxPreference;

.field o:Landroid/preference/Preference;

.field p:Landroid/preference/Preference;

.field q:Landroid/preference/Preference;

.field r:Landroid/preference/Preference;

.field s:Landroid/preference/Preference;

.field t:Landroid/preference/Preference;

.field private v:Landroid/preference/Preference;

.field private w:Landroid/preference/Preference;

.field private x:Landroid/preference/Preference;

.field private y:Landroid/preference/Preference;

.field private z:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a:Z

    const-string v0, "www.estrongs.com"

    sput-object v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->u:Ljava/lang/String;

    sput v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->E:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/fl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/fl;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->F:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sd_sortby"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    return p1
.end method

.method private a()V
    .locals 2

    sget-boolean v0, Lcom/estrongs/android/pop/m;->L:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "preference_display_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "language_setting"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    const-string v0, "preference_tools_settings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    sget-boolean v1, Lcom/estrongs/android/pop/m;->M:Z

    if-eqz v1, :cond_1

    :try_start_1
    const-string v1, "gesture_settings"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/estrongs/android/pop/m;->O:Z

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "downloader_settings"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_2
    sget-boolean v0, Lcom/estrongs/android/pop/m;->U:Z

    if-eqz v0, :cond_3

    :try_start_3
    const-string v0, "preference_net_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "hided_dirfiles_passwd_enable"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_3
    sget-boolean v0, Lcom/estrongs/android/pop/m;->w:Z

    if-eqz v0, :cond_4

    :try_start_4
    const-string v0, "appmanager_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "app_root_enhancement"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_4
    sget-boolean v0, Lcom/estrongs/android/pop/m;->i:Z

    if-eqz v0, :cond_5

    :try_start_5
    const-string v0, "preference_about"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "preference_more_app"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "preference_rate"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_5
    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sd_sortby"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopPreferenceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/m;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->A()Ljava/lang/String;

    move-result-object v1

    const-string v0, "app_backup_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b01ca

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/fa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fa;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "backup_app_cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string v0, "root_auto_install"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    const-string v0, "appmanager_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "app_check_update"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "preference_tools_settings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "appmanager_preference"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)Landroid/preference/EditTextPreference;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->D:Landroid/os/Handler;

    new-instance v3, Lcom/estrongs/android/pop/app/fb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/fb;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(ZLandroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->z:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->i(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->C:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const v0, 0x7f0b01ae

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e()V

    return-void
.end method

.method private f()V
    .locals 2

    const-string v0, "backupsettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->s:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->s:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/fm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fm;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "restoresettings"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->t:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->t:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/ft;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ft;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "enableRemoteSynchronizer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/ga;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ga;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onContentChanged()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onContentChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const v5, 0x7f0b006a

    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0017

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->setTheme(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->requestWindowFeature(I)Z

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    const v1, 0x7f0201e2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/ListView;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->am()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ak()Z

    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/estrongs/android/util/aw;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0300c3

    invoke-virtual {v0, v4, v1}, Landroid/view/Window;->setFeatureInt(II)V

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->A:Lcom/estrongs/android/ui/theme/al;

    const v4, 0x7f020090

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/el;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/el;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->o:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->o:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/ew;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ew;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "upgrade_check"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->p:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->p:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/fi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/fi;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/m;->t:Z

    if-eqz v0, :cond_2

    const-string v0, "update_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    const-string v1, "upgrade_auto_check"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v0, "send_statistics"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_17

    const-string v0, "CN"

    sget-object v1, Lcom/estrongs/android/pop/esclasses/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/estrongs/android/pop/m;->u:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u7edf\u8ba1"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    const-string v1, "\u53d1\u9001\u7edf\u8ba1\u6570\u636e"

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    const-string v0, "clean_prefer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->q:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gb;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->B()Ljava/lang/String;

    move-result-object v1

    const-string v0, "bt_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/estrongs/android/pop/m;->d:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gc;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->C()Ljava/lang/String;

    move-result-object v1

    const-string v0, "download_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/gd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gd;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_6
    const-string v0, "preference_help"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    sget-boolean v0, Lcom/estrongs/android/pop/m;->g:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/ge;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ge;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_7
    :goto_2
    const-string v0, "preference_privacy"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gg;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->x:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    const-string v0, "preference_rate"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->y:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/gi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gi;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, "1.x"

    :cond_9
    const-string v1, "Market"

    const-string v4, "oem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/estrongs/android/pop/m;->b:Ljava/lang/String;

    if-eqz v4, :cond_a

    sget-object v1, Lcom/estrongs/android/pop/m;->b:Ljava/lang/String;

    :cond_a
    :goto_3
    const-string v4, "\u5de5\u4fe1\u90e8"

    sget-object v5, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v1, "ES"

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c
    const-string v4, "preference_version"

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v0, "preference_special_thanks_to_translators"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v0, 0x7f0b0415

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/estrongs/android/pop/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_1c

    move v0, v2

    :goto_4
    if-nez v0, :cond_d

    const-string v0, "none"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_d
    const-string v0, "preference_about"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_5
    const-string v0, "preference_website"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/em;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/em;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_more_app"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/en;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/en;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "preference_feedback"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/eo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eo;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "net_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    const-string v0, "net_passwd_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    const-string v0, "start_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    const-string v0, "hided_dirfiles_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/ep;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ep;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/eq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eq;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_f
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/er;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/er;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/es;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/es;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_14
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->f()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b()V

    const-string v0, "hidden_file"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_15

    new-instance v1, Lcom/estrongs/android/pop/app/et;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/et;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_15
    const-string v0, "show_pcs_drive"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_1e

    new-instance v1, Lcom/estrongs/android/pop/app/eu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/eu;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_16
    :goto_6
    const-string v0, "default_window"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->w:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->w:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/app/ev;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ev;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "show_select_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->ak()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_windows_button"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->am()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_disk_usage"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->P()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "show_disk_remain"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->Q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "browser_downloader_disabled"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/app/ex;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ex;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "language_setting"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/preference/ListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v1, v4

    new-array v5, v1, [Ljava/lang/String;

    const v1, 0x7f0b028f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    move v1, v2

    :goto_7
    array-length v2, v4

    if-ge v1, v2, :cond_1f

    aget-object v2, v4, v1

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const-string v0, "update_preference"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_18
    const-string v0, "preference_directory_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_19
    const-string v0, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->v:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_1a
    const-string v4, "Market"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    if-eqz v4, :cond_a

    sget-object v4, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    const-string v4, "\u767e\u5ea6"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1b
    const-string v1, "ES"

    goto/16 :goto_3

    :cond_1c
    move v0, v3

    goto/16 :goto_4

    :cond_1d
    const-string v0, ","

    const-string v5, "\n"

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1e
    const-string v1, "preference_display_settings_category"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/preference/ListPreference;->a([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->E()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_20

    aget-object v1, v5, v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_20
    new-instance v1, Lcom/estrongs/android/pop/app/ey;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/ey;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->a()V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const v7, 0x7f08026a

    const v6, 0x7f030082

    const/4 v5, 0x5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b007a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0008

    new-instance v2, Lcom/estrongs/android/pop/app/fd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/fd;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0009

    new-instance v2, Lcom/estrongs/android/pop/app/fc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/fc;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0296

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/pop/app/ff;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/ff;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/app/fe;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/fe;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :pswitch_4
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0298

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/pop/app/fh;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/fh;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/app/fg;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/fg;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_1
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :pswitch_5
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0233

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/pop/app/fk;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/app/fk;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/app/fj;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/app/fj;-><init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    :try_start_2
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_2
    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f08026d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080272

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    instance-of v0, p2, Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    const v4, 0x7f080270

    const/16 v3, 0x8

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const v0, 0x7f08026d

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080271

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026c

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080274

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026b

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b029d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0x72

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    const v0, 0x7f080273

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b029e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b029c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6b
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onResume()V

    return-void
.end method
