.class Lcom/estrongs/android/pop/app/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/eh;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/e;

.field final synthetic b:Lcom/estrongs/android/pop/app/dh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dh;Lcom/estrongs/android/ui/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/di;->b:Lcom/estrongs/android/pop/app/dh;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/di;->a:Lcom/estrongs/android/ui/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/a/ag;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/di;->a:Lcom/estrongs/android/ui/g/e;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/e;->g()V

    :try_start_0
    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/a/ag;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/di;->b:Lcom/estrongs/android/pop/app/dh;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/a/ag;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/di;->b:Lcom/estrongs/android/pop/app/dh;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/ui/view/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/v;->a(Lcom/estrongs/android/pop/app/a/ag;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/di;->b:Lcom/estrongs/android/pop/app/dh;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/di;->b:Lcom/estrongs/android/pop/app/dh;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dh;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p1}, Lcom/estrongs/android/pop/app/a/ag;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
