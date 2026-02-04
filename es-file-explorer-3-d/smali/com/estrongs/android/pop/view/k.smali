.class Lcom/estrongs/android/pop/view/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/j;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_Home_Page_UV"

    const-string v2, "PCS_Home_Page_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/j;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
