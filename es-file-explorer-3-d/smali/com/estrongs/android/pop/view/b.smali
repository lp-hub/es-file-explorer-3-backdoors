.class Lcom/estrongs/android/pop/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/estrongs/android/view/ar;

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:I

.field final synthetic h:Lcom/estrongs/android/pop/view/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/android/view/ar;ZZI)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/pop/view/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/android/pop/view/b;->d:Lcom/estrongs/android/view/ar;

    iput-boolean p6, p0, Lcom/estrongs/android/pop/view/b;->e:Z

    iput-boolean p7, p0, Lcom/estrongs/android/pop/view/b;->f:Z

    iput p8, p0, Lcom/estrongs/android/pop/view/b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B:Landroid/widget/Button;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C:Landroid/widget/LinearLayout;

    const v1, 0x7f08025f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->d:Lcom/estrongs/android/view/ar;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->F()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aL(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/b;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v4, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->A()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/b;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/b;->b:Ljava/lang/String;

    iget v2, p0, Lcom/estrongs/android/pop/view/b;->g:I

    iget-object v3, p0, Lcom/estrongs/android/pop/view/b;->d:Lcom/estrongs/android/view/ar;

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Ljava/lang/String;ILcom/estrongs/android/view/ar;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/e/w;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->k:Lcom/estrongs/android/ui/e/w;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/w;->j()V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/b;->h:Lcom/estrongs/android/pop/view/a;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/a;->b:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C:Landroid/widget/LinearLayout;

    const v1, 0x7f080261

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setNextFocusLeftId(I)V

    goto/16 :goto_1
.end method
