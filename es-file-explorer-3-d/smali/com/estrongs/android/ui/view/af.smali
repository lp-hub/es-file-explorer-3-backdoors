.class Lcom/estrongs/android/ui/view/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/fs/c/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ad;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/af;->a:Lcom/estrongs/android/ui/view/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->a:Lcom/estrongs/android/ui/view/ad;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->a:Lcom/estrongs/android/ui/view/ad;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ad;->a:Lcom/estrongs/fs/c/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/c/e;->a([BII)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->a:Lcom/estrongs/android/ui/view/ad;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/af;->a:Lcom/estrongs/android/ui/view/ad;

    iget-object v0, v0, Lcom/estrongs/android/ui/view/ad;->b:Lcom/estrongs/fs/c/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/estrongs/fs/c/e;->a([BII)V

    :cond_1
    return-void
.end method
