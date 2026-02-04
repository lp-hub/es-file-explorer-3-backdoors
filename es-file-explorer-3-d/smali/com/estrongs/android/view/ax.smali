.class Lcom/estrongs/android/view/ax;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/h;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/ar;

    invoke-static {v0}, Lcom/estrongs/android/view/ar;->d(Lcom/estrongs/android/view/ar;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/view/ay;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/view/ay;-><init>(Lcom/estrongs/android/view/ax;Lcom/estrongs/a/a/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
