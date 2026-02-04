.class public Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;
.super Lcom/estrongs/android/pop/esclasses/g;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/g;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/g;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "browser_downloader_disabled"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;->a:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/ui/preference/fragments/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/preference/fragments/ae;-><init>(Lcom/estrongs/android/ui/preference/fragments/DownloadPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
