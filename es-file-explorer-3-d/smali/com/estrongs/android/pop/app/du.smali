.class Lcom/estrongs/android/pop/app/du;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/pop/app/ds;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ds;II)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/du;->c:Lcom/estrongs/android/pop/app/ds;

    iput p2, p0, Lcom/estrongs/android/pop/app/du;->a:I

    iput p3, p0, Lcom/estrongs/android/pop/app/du;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;)Lcom/estrongs/android/pop/app/AudioPlayerService;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/pop/app/du;->a:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->f(I)Z

    iget v0, p0, Lcom/estrongs/android/pop/app/du;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/du;->c:Lcom/estrongs/android/pop/app/ds;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ds;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->r(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    :cond_0
    return-void
.end method
