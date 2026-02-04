.class Lcom/estrongs/android/ui/e/ah;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:[Lcom/estrongs/android/ui/b/de;

.field final synthetic c:Lcom/estrongs/android/ui/e/af;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/af;Landroid/os/Handler;[Lcom/estrongs/android/ui/b/de;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ah;->c:Lcom/estrongs/android/ui/e/af;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ah;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ah;->b:[Lcom/estrongs/android/ui/b/de;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/a/aj;->a()Lcom/estrongs/android/pop/app/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/aj;->e()Lcom/estrongs/android/pop/app/a/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ah;->a:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/e/ai;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/ai;-><init>(Lcom/estrongs/android/ui/e/ah;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
