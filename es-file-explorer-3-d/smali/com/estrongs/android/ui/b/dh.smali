.class Lcom/estrongs/android/ui/b/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/dg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dh;->a:Lcom/estrongs/android/ui/b/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dh;->a:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dh;->a:Lcom/estrongs/android/ui/b/dg;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/dg;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    :cond_0
    return-void
.end method
