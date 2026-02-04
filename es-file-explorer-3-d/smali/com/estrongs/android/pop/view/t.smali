.class Lcom/estrongs/android/pop/view/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/16 v2, 0x8

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G(Lcom/estrongs/android/pop/view/FileExplorerActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/t;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->showNaviPage1(Landroid/view/View;)V

    goto :goto_0
.end method
