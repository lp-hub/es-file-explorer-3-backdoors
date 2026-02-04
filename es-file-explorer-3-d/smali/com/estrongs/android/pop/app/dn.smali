.class Lcom/estrongs/android/pop/app/dn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/dm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/dm;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/dm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dn;->a:Lcom/estrongs/android/pop/app/dm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/dm;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->d()V

    return-void
.end method
