.class Lcom/estrongs/android/ui/view/ad;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/estrongs/fs/c/e;

.field protected b:Lcom/estrongs/fs/c/e;

.field protected c:Lcom/estrongs/a/b/b;

.field final synthetic d:Lcom/estrongs/android/ui/view/aa;

.field private e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/aa;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->e:Ljava/lang/Exception;

    new-instance v0, Lcom/estrongs/android/ui/view/ae;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ae;-><init>(Lcom/estrongs/android/ui/view/ad;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->c:Lcom/estrongs/a/b/b;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/estrongs/fs/c/e;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/estrongs/fs/c/f;

    invoke-direct {v0, p1}, Lcom/estrongs/fs/c/f;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MD5"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ad;->a(Ljava/lang/String;)Lcom/estrongs/fs/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "SHA-1"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/ad;->a(Ljava/lang/String;)Lcom/estrongs/fs/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/view/af;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/af;-><init>(Lcom/estrongs/android/ui/view/ad;)V

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/aa;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/view/ad;->c:Lcom/estrongs/a/b/b;

    invoke-static {v1, v2, v0}, Lcom/estrongs/fs/c/d;->a(Ljava/lang/String;Lcom/estrongs/a/b/b;Lcom/estrongs/fs/c/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->e:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    const v3, 0x7f0b03c9

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->e:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/aa;->e(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    invoke-static {v1}, Lcom/estrongs/android/ui/view/aa;->f(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v1, v1, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ad;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/view/ad;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    const v1, 0x7f0b0272

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/view/ad;->e:Ljava/lang/Exception;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/ad;->d:Lcom/estrongs/android/ui/view/aa;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/aa;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method
