.class Lcom/estrongs/android/pop/app/gw;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/gv;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/gv;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gw;->a:Lcom/estrongs/android/pop/app/gv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/gw;->a:Lcom/estrongs/android/pop/app/gv;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/gw;->a:Lcom/estrongs/android/pop/app/gv;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/gv;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/fs/b/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/gw;->a:Lcom/estrongs/android/pop/app/gv;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/gv;->b:Lcom/estrongs/android/pop/app/gt;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/gt;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/q;->aD()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/o;->execute(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
