.class Lcom/estrongs/android/ui/b/fo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/ew;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fo;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fo;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-static {v0}, Lcom/estrongs/android/ui/b/ew;->f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/af;->c(I)V

    return-void
.end method
