.class Lcom/estrongs/android/pop/app/ev;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ev;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/b/av;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ev;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/av;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/av;->a()V

    const/4 v0, 0x1

    return v0
.end method
