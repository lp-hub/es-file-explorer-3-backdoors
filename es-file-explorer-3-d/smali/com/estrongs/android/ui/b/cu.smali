.class Lcom/estrongs/android/ui/b/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/ui/b/cq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/cq;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/cu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cu;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/cq;->a(Lcom/estrongs/android/ui/b/cq;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cq;->f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/b/cv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/cv;-><init>(Lcom/estrongs/android/ui/b/cu;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/estrongs/android/a/t;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cq;->g(Lcom/estrongs/android/ui/b/cq;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cu;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cq;->h(Lcom/estrongs/android/ui/b/cq;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cq;->f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/estrongs/android/a/t;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cq;->f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/ui/b/cw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/cw;-><init>(Lcom/estrongs/android/ui/b/cu;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cq;->f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v2}, Lcom/estrongs/android/ui/b/cq;->i(Lcom/estrongs/android/ui/b/cq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/cq;->f(Lcom/estrongs/android/ui/b/cq;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
