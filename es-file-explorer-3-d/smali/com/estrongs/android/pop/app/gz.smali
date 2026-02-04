.class Lcom/estrongs/android/pop/app/gz;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/gz;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Z

    return-void
.end method
