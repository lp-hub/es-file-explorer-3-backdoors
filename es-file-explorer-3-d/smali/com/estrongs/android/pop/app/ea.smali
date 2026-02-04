.class Lcom/estrongs/android/pop/app/ea;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/aj;

.field final synthetic b:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;Lcom/estrongs/android/pop/app/a/aj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ea;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/a/aj;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ea;->a:Lcom/estrongs/android/pop/app/a/aj;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->i()V

    return-void
.end method
