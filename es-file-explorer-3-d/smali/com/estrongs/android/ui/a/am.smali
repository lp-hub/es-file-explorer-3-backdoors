.class Lcom/estrongs/android/ui/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/am;->a:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/am;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    return-void
.end method
