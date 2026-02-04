.class Lcom/estrongs/android/ui/b/gc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ga;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ga;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->g(Lcom/estrongs/android/ui/b/ga;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->h(Lcom/estrongs/android/ui/b/ga;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/ga;->a(Lcom/estrongs/android/ui/b/ga;I)I

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->i(Lcom/estrongs/android/ui/b/ga;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->a(Lcom/estrongs/android/ui/b/ga;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->g(Lcom/estrongs/android/ui/b/ga;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->j(Lcom/estrongs/android/ui/b/ga;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ga;->c(Lcom/estrongs/android/ui/b/ga;)Lcom/estrongs/android/util/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/util/x;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/b;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-static {v1}, Lcom/estrongs/android/ui/b/ga;->b(Lcom/estrongs/android/ui/b/ga;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/gc;->a:Lcom/estrongs/android/ui/b/ga;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ga;->b()V

    goto :goto_0
.end method
