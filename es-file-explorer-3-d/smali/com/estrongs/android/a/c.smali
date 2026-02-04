.class Lcom/estrongs/android/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->b(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/a;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v0, v0, Lcom/estrongs/android/a/a;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v1, v1, Lcom/estrongs/android/a/a;->c:Landroid/app/Activity;

    const v2, 0x7f0b01b8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->b(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-static {v0}, Lcom/estrongs/android/a/a;->c(Lcom/estrongs/android/a/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_7

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v4, v1, Lcom/estrongs/android/a/a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1, v3, v0}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-static {v2}, Lcom/estrongs/android/a/a;->d(Lcom/estrongs/android/a/a;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->F(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v2, v2, Lcom/estrongs/android/a/a;->c:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/estrongs/android/pop/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v5, v4}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v1, v1, Lcom/estrongs/android/a/a;->e:Lcom/estrongs/android/a/d;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    iget-object v1, v1, Lcom/estrongs/android/a/a;->e:Lcom/estrongs/android/a/d;

    invoke-interface {v1, v3, v0, v4}, Lcom/estrongs/android/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/a/c;->a:Lcom/estrongs/android/a/a;

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->dismiss()V

    goto :goto_0

    :cond_7
    move-object v3, v1

    goto :goto_1
.end method
