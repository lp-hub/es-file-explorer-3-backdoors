.class Lcom/estrongs/android/pop/app/gv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/app/gt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/gt;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/gv;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    invoke-static {}, Lcom/estrongs/android/util/m;->b()V

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/gw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gw;-><init>(Lcom/estrongs/android/pop/app/gv;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gv;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
