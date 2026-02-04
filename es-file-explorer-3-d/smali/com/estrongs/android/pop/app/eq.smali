.class Lcom/estrongs/android/pop/app/eq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/eq;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/eq;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->J()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v2, 0x6f

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/eq;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/eq;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const/16 v2, 0x70

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->showDialog(I)V

    move v0, v1

    goto :goto_0
.end method
