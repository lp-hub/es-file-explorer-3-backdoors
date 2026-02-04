.class Lcom/estrongs/android/pop/app/ef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ef;->a:Lcom/estrongs/android/pop/app/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ef;->a:Lcom/estrongs/android/pop/app/ee;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/ed;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ed;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->e(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ef;->a:Lcom/estrongs/android/pop/app/ee;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ee;->a:Lcom/estrongs/android/pop/app/ed;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ed;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->f(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->b()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/e/c;->a()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
