.class Lcom/estrongs/android/pop/app/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/a/a;

.field final synthetic b:Lcom/estrongs/android/view/a/a;

.field final synthetic c:Lcom/estrongs/android/pop/app/GestureManageActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/GestureManageActivity;Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bd;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/view/a/a;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/bd;->b:Lcom/estrongs/android/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b03fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->a:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->b:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/a/a;->d(Z)Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->a(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/ui/a/o;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/a/o;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->c(Lcom/estrongs/android/pop/app/GestureManageActivity;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/q;->n(Z)V

    sput-boolean p2, Lcom/estrongs/android/ui/guesture/b;->a:Z

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bd;->c:Lcom/estrongs/android/pop/app/GestureManageActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/GestureManageActivity;->b(Lcom/estrongs/android/pop/app/GestureManageActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0409

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
