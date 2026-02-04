.class Lcom/estrongs/android/pop/view/bo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v2, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/g;->d()Lcom/estrongs/fs/g;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p:Z

    invoke-static {v0, v1, v2, v3}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/fs/g;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bo;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->W:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()V

    return-void
.end method
