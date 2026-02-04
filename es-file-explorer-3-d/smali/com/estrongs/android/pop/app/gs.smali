.class Lcom/estrongs/android/pop/app/gs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    invoke-static {}, Lcom/estrongs/android/util/m;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gs;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->d()V

    const/4 v0, 0x1

    return v0
.end method
