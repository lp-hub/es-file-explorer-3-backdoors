.class Lcom/estrongs/android/ui/e/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/bc;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/y;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/y;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/z;->a:Lcom/estrongs/android/ui/e/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/z;->a:Lcom/estrongs/android/ui/e/y;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/y;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ba;->dismiss()V

    new-instance v0, Lcom/estrongs/android/ui/e/aa;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/e/aa;-><init>(Lcom/estrongs/android/ui/e/z;I)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/aa;->start()V

    return-void
.end method
