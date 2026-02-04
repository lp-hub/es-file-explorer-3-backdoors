.class Lcom/estrongs/android/ui/b/fb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/fa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fb;->a:Lcom/estrongs/android/ui/b/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fb;->a:Lcom/estrongs/android/ui/b/fa;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->b()V

    return-void
.end method
