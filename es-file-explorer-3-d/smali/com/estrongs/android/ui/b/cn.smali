.class Lcom/estrongs/android/ui/b/cn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/cl;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/cl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cn;->a:Lcom/estrongs/android/ui/b/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/a/t;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cn;->a:Lcom/estrongs/android/ui/b/cl;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/cl;->f:Lcom/estrongs/android/ui/b/cf;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/cf;->j(Lcom/estrongs/android/ui/b/cf;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
