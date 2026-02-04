.class Lcom/estrongs/android/pop/view/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/dh;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/dh;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/dh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/dh;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/di;->a:Lcom/estrongs/android/pop/view/dh;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dh;->a:Lcom/estrongs/android/pop/view/dg;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/dg;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/content/Context;)V

    return-void
.end method
