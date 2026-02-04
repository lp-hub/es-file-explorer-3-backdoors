.class Lcom/estrongs/android/ui/b/dg;
.super Lcom/estrongs/android/util/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ag;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/estrongs/android/ui/b/df;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/df;Ljava/lang/String;Lcom/estrongs/android/ui/b/ag;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    iput-object p3, p0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    iput-object p4, p0, Lcom/estrongs/android/ui/b/dg;->b:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/df;->a(Lcom/estrongs/android/ui/b/df;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/b/dg;->g:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/df;->b(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/dh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/dh;-><init>(Lcom/estrongs/android/ui/b/dg;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/b/dg;->c:Lcom/estrongs/android/ui/b/df;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/df;->b(Lcom/estrongs/android/ui/b/df;)Lcom/estrongs/android/pop/esclasses/ESActivity;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/b/di;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/b/di;-><init>(Lcom/estrongs/android/ui/b/dg;Lcom/estrongs/fs/g;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
