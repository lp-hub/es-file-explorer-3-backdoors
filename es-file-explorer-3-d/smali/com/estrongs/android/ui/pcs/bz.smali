.class Lcom/estrongs/android/ui/pcs/bz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bt;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bz;->a:Lcom/estrongs/android/ui/pcs/bt;

    invoke-static {}, Lcom/estrongs/android/pop/utils/bw;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bt;->b(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/pcs/ca;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ca;-><init>(Lcom/estrongs/android/ui/pcs/bz;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
