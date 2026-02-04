.class Lcom/estrongs/android/pop/view/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ar;

.field final synthetic b:Lcom/estrongs/android/ui/b/ag;

.field final synthetic c:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/ui/b/ag;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ad;->c:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/ad;->a:Lcom/estrongs/android/view/ar;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/ad;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ad;->a:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->aa()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ad;->b:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
