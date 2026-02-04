.class Lcom/estrongs/android/pop/app/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ag;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aj()Z

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v2, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->b:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/aj;->a:Lcom/estrongs/android/pop/app/ag;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ag;->a:Lcom/estrongs/android/pop/app/ESNetSettingActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ESNetSettingActivity;->c:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
