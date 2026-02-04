.class Lcom/estrongs/android/ui/a/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/by;->a:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/by;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/a/by;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v1}, Lcom/estrongs/android/ui/a/s;->c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;)V

    return-void
.end method
