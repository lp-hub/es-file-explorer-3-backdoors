.class public Lcom/estrongs/android/ui/preference/TabletSettingsActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static d:Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/preference/s;

    invoke-direct {v0}, Lcom/estrongs/android/ui/preference/s;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->d:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-direct {v0}, Lcom/estrongs/android/ui/preference/fragments/af;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08030b

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0300a1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->setContentView(I)V

    const v0, 0x7f08030b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a:Landroid/view/ViewGroup;

    const v0, 0x7f08030c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->b:Landroid/view/ViewGroup;

    const v1, 0x7f08030d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->c:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a()V

    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f08030e

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/preference/TabletSettingsActivity;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v0, 0x1

    return v0
.end method
