.class Lcom/estrongs/android/ui/c/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/k;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/c/f;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/i;->a:Lcom/estrongs/android/ui/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/i;->a:Lcom/estrongs/android/ui/c/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/f;->b(Lcom/estrongs/android/ui/c/f;)Lcom/estrongs/a/a;

    move-result-object v0

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/i;->a:Lcom/estrongs/android/ui/c/f;

    invoke-static {v0}, Lcom/estrongs/android/ui/c/f;->c(Lcom/estrongs/android/ui/c/f;)Lcom/estrongs/android/ui/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/c/j;

    invoke-direct {v1, p0, p1, p3}, Lcom/estrongs/android/ui/c/j;-><init>(Lcom/estrongs/android/ui/c/i;Lcom/estrongs/a/a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
