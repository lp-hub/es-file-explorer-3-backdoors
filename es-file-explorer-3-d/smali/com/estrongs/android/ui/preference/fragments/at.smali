.class Lcom/estrongs/android/ui/preference/fragments/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/at;->a:Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/estrongs/android/ui/b/ga;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/at;->a:Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/UpgradePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "http://update.estrongs.com/up?id=1"

    invoke-direct {v0, v1, v3, v2}, Lcom/estrongs/android/ui/b/ga;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ga;->a()V

    return v3
.end method
