.class Lcom/estrongs/android/pop/app/gt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    const v4, 0x7f0b021a

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    const v2, 0x7f0b0008

    new-instance v3, Lcom/estrongs/android/pop/app/gv;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/app/gv;-><init>(Lcom/estrongs/android/pop/app/gt;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0009

    new-instance v2, Lcom/estrongs/android/pop/app/gu;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/gu;-><init>(Lcom/estrongs/android/pop/app/gt;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->d()V

    goto :goto_0
.end method
