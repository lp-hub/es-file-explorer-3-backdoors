.class Lcom/estrongs/android/ui/c/k;
.super Lcom/estrongs/fs/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/a/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/fs/a;-><init>()V

    const-string v0, "task"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/ui/c/k;->putExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
