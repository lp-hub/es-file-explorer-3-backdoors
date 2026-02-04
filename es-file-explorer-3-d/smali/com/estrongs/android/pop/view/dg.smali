.class Lcom/estrongs/android/pop/view/dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/dh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/dh;-><init>(Lcom/estrongs/android/pop/view/dg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->L(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Ljava/lang/Thread;)V

    return-void
.end method
