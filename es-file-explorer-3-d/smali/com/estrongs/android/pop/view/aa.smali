.class Lcom/estrongs/android/pop/view/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/estrongs/android/pop/view/aa;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/estrongs/android/ui/g/c;->a(Landroid/view/View;Ljava/lang/String;ILandroid/graphics/Rect;Z)Lcom/estrongs/android/ui/g/c;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/ab;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/ab;-><init>(Lcom/estrongs/android/pop/view/aa;Lcom/estrongs/android/ui/g/c;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/g/c;->a(Lcom/estrongs/android/pop/view/dm;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/c;->c()V

    return-void
.end method
