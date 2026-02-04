.class Lcom/estrongs/android/pop/app/fh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopPreferenceActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iput p2, p0, Lcom/estrongs/android/pop/app/fh;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/ui/b/ag;

    const v1, 0x7f080271

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080274

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/ag;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b029a

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b029b

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->n(Ljava/lang/String;)V

    iget v0, p0, Lcom/estrongs/android/pop/app/fh;->a:I

    const/16 v1, 0x6c

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->g:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->r:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/estrongs/android/pop/app/fh;->a:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->h:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/estrongs/android/pop/app/fh;->a:I

    const/16 v1, 0x71

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fh;->b:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1
.end method
