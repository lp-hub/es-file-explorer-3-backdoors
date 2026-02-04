.class Lcom/estrongs/android/ui/e/go;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/gi;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/gi;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/go;->a:Lcom/estrongs/android/ui/e/gi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/go;->a:Lcom/estrongs/android/ui/e/gi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/e/gi;->a(Lcom/estrongs/android/ui/e/gi;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/go;->a:Lcom/estrongs/android/ui/e/gi;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/gi;->d(Lcom/estrongs/android/ui/e/gi;)Lcom/estrongs/android/ui/e/gp;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/ui/e/gu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/go;->a:Lcom/estrongs/android/ui/e/gi;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/gi;->d(Lcom/estrongs/android/ui/e/gi;)Lcom/estrongs/android/ui/e/gp;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/gu;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gu;->d()V

    :cond_0
    return-void
.end method
