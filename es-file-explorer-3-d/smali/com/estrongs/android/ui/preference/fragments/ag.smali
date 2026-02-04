.class Lcom/estrongs/android/ui/preference/fragments/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/af;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ai;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/app/HelpActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/preference/fragments/af;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/preference/fragments/af;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/preference/fragments/ag;->a:Lcom/estrongs/android/ui/preference/fragments/af;

    const v3, 0x7f0b01cf

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/preference/fragments/af;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/ui/preference/fragments/ah;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/preference/fragments/ah;-><init>(Lcom/estrongs/android/ui/preference/fragments/ag;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    goto :goto_0
.end method
