.class Lcom/estrongs/android/pop/app/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/FileChooserActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/FileChooserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/FileChooserActivity;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/impl/local/b;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/estrongs/fs/impl/local/b;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/util/at;->b(Landroid/content/Context;Lcom/estrongs/fs/g;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ap;->a:Lcom/estrongs/android/pop/app/FileChooserActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/FileChooserActivity;->finish()V

    return-void
.end method
