.class Lcom/estrongs/android/pop/app/ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[[Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/Exception;

.field final synthetic d:Lcom/estrongs/android/pop/app/PopAudioPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopAudioPlayer;[[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ec;->d:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ec;->a:[[Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ec;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/app/ec;->c:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ec;->a:[[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ec;->d:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ec;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->a(Lcom/estrongs/android/pop/app/PopAudioPlayer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ec;->c:[Ljava/lang/Exception;

    aput-object v0, v1, v4

    goto :goto_0
.end method
