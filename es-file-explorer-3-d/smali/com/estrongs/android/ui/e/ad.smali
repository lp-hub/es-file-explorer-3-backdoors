.class Lcom/estrongs/android/ui/e/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/b/dd;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ac;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ad;->a:Lcom/estrongs/android/ui/e/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ad;->a:Lcom/estrongs/android/ui/e/ac;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ad;->a:Lcom/estrongs/android/ui/e/ac;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ac;->a:Lcom/estrongs/android/ui/e/w;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/w;->h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/cz;->dismiss()V

    return-void
.end method
