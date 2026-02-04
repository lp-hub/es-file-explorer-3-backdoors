.class Lcom/estrongs/android/ui/b/cw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/cu;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/cu;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cw;->a:Lcom/estrongs/android/ui/b/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cw;->a:Lcom/estrongs/android/ui/b/cu;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/cu;->b:Lcom/estrongs/android/ui/b/cq;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cq;->j(Lcom/estrongs/android/ui/b/cq;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
