.class Lcom/estrongs/android/pop/app/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/by;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/a/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    const v1, 0x7f0b03d7

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->n()Lcom/estrongs/android/pop/app/a/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/a/ag;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ag;->e()V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/t;->a:Lcom/estrongs/android/pop/app/a/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/s;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e()V

    goto :goto_0
.end method
