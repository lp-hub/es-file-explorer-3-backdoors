.class Lcom/estrongs/android/ui/b/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/bd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bd;->a(Lcom/estrongs/android/ui/b/bd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bd;->b(Lcom/estrongs/android/ui/b/bd;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/bd;->c(Lcom/estrongs/android/ui/b/bd;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b047e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bd;->d(Lcom/estrongs/android/ui/b/bd;)Lcom/estrongs/android/ui/b/bg;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/bd;->d(Lcom/estrongs/android/ui/b/bd;)Lcom/estrongs/android/ui/b/bg;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/bf;->a:Lcom/estrongs/android/ui/b/bd;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/bd;->b(Lcom/estrongs/android/ui/b/bd;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/estrongs/android/ui/b/bg;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method
