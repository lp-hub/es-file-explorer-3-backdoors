.class Lcom/estrongs/android/view/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cs;

    iget-object v2, v2, Lcom/estrongs/android/view/cs;->ad:Landroid/app/Activity;

    const-class v3, Lcom/estrongs/android/pop/app/DownloaderActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/view/cv;->a:Lcom/estrongs/android/view/cs;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cs;->a(Landroid/content/Intent;)V

    return-void
.end method
