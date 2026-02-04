.class public Lcom/estrongs/android/ui/view/aa;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field protected a:Landroid/widget/CheckBox;

.field protected b:Landroid/widget/CheckBox;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Ljava/lang/String;

.field protected f:Landroid/os/AsyncTask;
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
.end field

.field protected g:Z

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/view/aa;->e:Ljava/lang/String;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08018a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->c:Landroid/widget/TextView;

    const v1, 0x7f08018d

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->d:Landroid/widget/TextView;

    const v1, 0x7f080188

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    const v1, 0x7f08018b

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    const v1, 0x7f080189

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->h:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->h:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/view/ab;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/ab;-><init>(Lcom/estrongs/android/ui/view/aa;Landroid/text/ClipboardManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f08018c

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/view/aa;->l(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/view/aa;->i:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->i:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->i:Landroid/view/View;

    new-instance v2, Lcom/estrongs/android/ui/view/ac;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/view/ac;-><init>(Lcom/estrongs/android/ui/view/aa;Landroid/text/ClipboardManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/aa;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030042

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->b:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    or-int/lit8 v0, v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/aa;->f()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0273

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "(MD5,SHA-1)"

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public c()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "checksum"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    const v5, 0x7f0b0100

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MD5: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "MD5,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHA-1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/view/aa;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SHA-1,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :cond_1
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    const v2, 0x7f0b0274

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v7}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/estrongs/android/ui/view/aa;->ad:Landroid/app/Activity;

    const v5, 0x7f0b03ca

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    invoke-static {v1}, Lcom/estrongs/fs/c/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/aa;->e()V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ag:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->ag:Lcom/estrongs/android/view/cr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/estrongs/android/ui/view/aa;->g:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method protected f()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/view/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/ad;-><init>(Lcom/estrongs/android/ui/view/aa;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/aa;->f:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
