.class Lcom/estrongs/android/ui/preference/fragments/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/b/ag;

    const v1, 0x7f08026c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f080271

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_0
    const v3, 0x7f080274

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v3}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/q;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b029b

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0234

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0299

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->c(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->d(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->e(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-static {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->a(Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/preference/fragments/ap;->a:Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/preference/fragments/PasswordPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b033f

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
