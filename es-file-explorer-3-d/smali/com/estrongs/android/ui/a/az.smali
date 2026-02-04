.class Lcom/estrongs/android/ui/a/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/s;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/az;->a:Lcom/estrongs/android/ui/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/az;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->c(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/q;->n(Z)V

    sput-boolean p2, Lcom/estrongs/android/ui/guesture/b;->a:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/az;->a:Lcom/estrongs/android/ui/a/s;

    invoke-static {v0}, Lcom/estrongs/android/ui/a/s;->b(Lcom/estrongs/android/ui/a/s;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->I:Lcom/estrongs/android/ui/guesture/ESGesturePanel;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/guesture/ESGesturePanel;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
