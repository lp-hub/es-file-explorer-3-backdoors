.class Lcom/estrongs/android/ui/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:I

.field final synthetic c:Lcom/estrongs/android/ui/c/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/c/i;Lcom/estrongs/a/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/j;->c:Lcom/estrongs/android/ui/c/i;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/j;->a:Lcom/estrongs/a/a;

    iput p3, p0, Lcom/estrongs/android/ui/c/j;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/j;->a:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/j;->c:Lcom/estrongs/android/ui/c/i;

    iget-object v1, v1, Lcom/estrongs/android/ui/c/i;->a:Lcom/estrongs/android/ui/c/f;

    invoke-static {v1}, Lcom/estrongs/android/ui/c/f;->b(Lcom/estrongs/android/ui/c/f;)Lcom/estrongs/a/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/j;->c:Lcom/estrongs/android/ui/c/i;

    iget-object v0, v0, Lcom/estrongs/android/ui/c/i;->a:Lcom/estrongs/android/ui/c/f;

    iget v1, p0, Lcom/estrongs/android/ui/c/j;->b:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/c/f;->a(I)V

    :cond_0
    return-void
.end method
