.class Lcom/estrongs/android/pop/view/bq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/bt;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/fs/g;)V
    .locals 5

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/estrongs/fs/impl/m/a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/m/a;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/m/a;->a()Lcom/estrongs/fs/g;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/estrongs/fs/impl/b/c;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/b/a;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    check-cast v0, Lcom/estrongs/fs/impl/b/c;

    invoke-direct {v1, v2, v0}, Lcom/estrongs/android/ui/b/a;-><init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/fs/impl/b/c;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/a;->a()V

    :goto_1
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/estrongs/fs/impl/b/f;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M()Lcom/estrongs/android/pop/utils/c;

    move-result-object v1

    check-cast v0, Lcom/estrongs/fs/impl/b/f;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/utils/c;->a(Lcom/estrongs/fs/impl/b/f;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/av;->J(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/g;Z)V

    goto :goto_1

    :cond_3
    instance-of v1, v0, Lcom/estrongs/fs/impl/i/a;

    if-eqz v1, :cond_5

    const-string v1, "web_file_url"

    invoke-interface {v0, v1}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "intent_file_url"

    invoke-interface {v0, v3}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Z()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/view/utils/n;->a(Landroid/content/Context;Landroid/content/Intent;)[Lcom/estrongs/android/pop/view/utils/t;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/l;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "APK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v3}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->aa()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v3, 0x7f0b0043

    invoke-virtual {v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v4, 0x7f0b0366

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    const v3, 0x7f0b0006

    new-instance v4, Lcom/estrongs/android/pop/view/bs;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/view/bs;-><init>(Lcom/estrongs/android/pop/view/bq;Lcom/estrongs/fs/g;)V

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/view/br;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/br;-><init>(Lcom/estrongs/android/pop/view/bq;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/bq;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
