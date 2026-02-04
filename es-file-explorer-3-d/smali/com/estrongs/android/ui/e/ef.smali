.class Lcom/estrongs/android/ui/e/ef;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/ee;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/ee;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ef;->a:Lcom/estrongs/android/ui/e/ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ef;->a:Lcom/estrongs/android/ui/e/ee;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ee;->a:Lcom/estrongs/android/ui/e/ed;

    iget-object v0, v0, Lcom/estrongs/android/ui/e/ed;->a:Lcom/estrongs/android/ui/e/bz;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/bz;->a(Lcom/estrongs/android/ui/e/bz;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W()V

    return-void
.end method
