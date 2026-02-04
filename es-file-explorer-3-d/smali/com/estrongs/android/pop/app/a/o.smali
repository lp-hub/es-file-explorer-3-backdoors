.class Lcom/estrongs/android/pop/app/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/br;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/n;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->m()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/n;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->t()Lcom/estrongs/android/pop/app/a/af;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/a/o;->a:Lcom/estrongs/android/pop/app/a/n;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/a/n;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/a/a;->a(Lcom/estrongs/android/pop/app/a/a;)Lcom/estrongs/android/pop/app/PopAudioPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/a/af;)V

    return-void
.end method
